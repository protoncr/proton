module Proton
  class Client
    include TL

    DEFAULT_TD_LIB_PARAMETERS = {
      use_test_dc: false,
      database_directory: Path.home.join(".proton").to_s,
      files_directory: "",
      use_file_database: true,
      use_chat_info_database: true,
      use_message_database: true,
      use_secret_chats: false,
      api_id: 10000,
      api_hash: "",
      system_language_code: "en",
      device_model: "Desktop",
      system_version: "Linux",
      application_version: Proton::VERSION,
      enable_storage_optimizer: true,
      ignore_file_names: false
    }

    @client : TDLib::Client
    @td_lib_parameters : TdlibParameters?
    @result_hash : Hash(Int32, JSON::Any)
    @auth_flow : AuthFlow?
    @counter : Atomic(Int64)
    @mutex : Mutex

    getter? alive  : Bool
    property timeout : Time::Span

    def initialize(verbosity_level = 1,
                   auth_flow = nil,
                   timeout = 5.seconds,
                   **params)
      @client = TDLib.client_create
      @alive = true
      @counter = Atomic.new(0_i64)
      @passing_channel = Channel(JSON::Any).new
      @result_hash = {} of Int32 => JSON::Any
      @mutex = Mutex.new
      @auth_flow = auth_flow
      @timeout = timeout

      if params
        @td_lib_parameters = TdlibParameters.new(**DEFAULT_TD_LIB_PARAMETERS.merge(params))
      end

      send({
        "@type" => "setLogVerbosityLevel",
        "new_verbosity_level" => verbosity_level
      }, false)
    end

    def receive_loop(timeout = nil, &block : TLObject ->)
      loop do
        if update = receive(timeout || @timeout)
          if event = TLObject.from_json(update.to_json)
            case event
            when UpdateAuthorizationState
              if auth_flow = @auth_flow
                auth_flow.client = self
                case event.authorization_state
                when AuthorizationStateClosed
                  @alive = false
                  break
                when AuthorizationStateWaitTdlibParameters
                  if params = @td_lib_parameters
                    spawn set_tdlib_parameters(params)
                  else
                    yield event
                  end
                when AuthorizationStateWaitEncryptionKey
                  auth_flow.request_encryption_key
                when AuthorizationStateWaitPhoneNumber
                  auth_flow.request_phone_number
                when AuthorizationStateWaitCode
                  auth_flow.request_code
                when AuthorizationStateWaitRegistration
                  auth_flow.request_registration
                when AuthorizationStateWaitPassword
                  auth_flow.request_password
                else
                end
              else
                yield event
              end
            when Error
              raise event.message
            else
              yield event
            end
          end
        end

        sleep 0.001
      end
    end

    def execute(query)
      raise Errors::DeadClient.new unless alive?
      json_query = query.to_json
      res = TDLib.client_execute(self, json_query)
      JSON.parse(String.new(res)) unless res.null?
    end

    def send_async(query, counter = true)
      Channel(JSON::Any?).new(1).tap do |ch|
        query = query.to_h

        if counter
          index = @counter.get
          query["@extra"] = index.to_s
          @counter.add(1)
        end

        Log.debug  { "Sending: #{query.to_pretty_json}" }

        TDLib.client_send(self, query.to_json)

        if index
          spawn do
            loop do
              if val = @result_hash[index]?
                @result_hash.delete(index)
                break ch.send(val)
              else
                sleep 0.001
              end
            end
          end
        else
          ch.send(nil)
        end
      end
    end

    def send!(query, counter = true, wait_max = @timeout)
      select
      when res = send_async(query, counter).receive
        res
      when timeout wait_max
        raise Errors::TimeoutError.new
      end
    end

    def send(query, counter = true, wait_max = @timeout)
      send!(query, counter, wait_max)
    rescue Errors::TimeoutError
      Log.warn { "Query timed out: #{query.to_pretty_json}" }
      nil
    end

    def receive(timeout = @timeout)
      res = TDLib.client_receive(self, timeout.total_seconds)
      unless res.null?
        res = JSON.parse(String.new(res))

        if extra = res["@extra"]?
          if index = extra.as_s.to_i?
            @result_hash[index] = res
          end
        end

        Log.debug  { "Receiving: #{res.to_pretty_json}" }
        res
      end
    end

    def close
      if alive?
        TDLib.client_destroy(self)
        @alive = false
      end
    end

    def to_unsafe
      @client
    end

    def finalize
      close
    end
  end
end
