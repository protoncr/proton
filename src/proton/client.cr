require "./client/*"

module Proton
  class Client
    include Proton

    include Logger
    include ChatMethods
    include UploadMethods
    include MessageMethods
    include EventHandler::Annotator

    DEFAULT_TD_LIB_PARAMETERS = {
      use_test_dc: false,
      database_directory: Path.home.join(".proton/{{ @type.class.name.underscore  }}").to_s,
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
    @td_lib_parameters : TL::TdlibParameters?
    @auth_flow : AuthFlow?
    @counter : Atomic(Int64)
    @result_hash : Hash(Int32, JSON::Any)

    getter event_handlers : Array(EventHandler)

    # True if this client is currently running
    getter? alive  : Bool

    # Receive timeout
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
      @event_handlers = [] of EventHandler
      @auth_flow = auth_flow
      @timeout = timeout

      if params
        @td_lib_parameters = TL::TdlibParameters.new(**DEFAULT_TD_LIB_PARAMETERS.merge(params))
      end


      send({
        "@type" => "setLogVerbosityLevel",
        "new_verbosity_level" => verbosity_level
        }, false)

      TL.client = self
      register_event_handler_annotations
    end

    def add_event_handler(handler : EventHandler)
      @event_handlers << handler
    end

    def start(timeout = nil, &block)
      receive_loop(timeout) do |update|
        if update.is_a?(TL::Update)
          type = update.responds_to?(:_type) ? update._type : "Unknown"
          yield update.as(TL::Update)
          @event_handlers.each do |handler|
            spawn do
              handler = handler.not_nil!
              begin
                handler.call(update.as(TL::Update))
              rescue ex
                Log.error exception: ex, &.emit(
                  "Unhandled exception",
                  handler: handler.class.name,
                  update: type.to_s
                )
              end
            end
          end
        end
      end
    end

    def start(timeout = nil)
      start(timeout) { }
    end

    def receive_loop(timeout = nil, &block : TL::TLObject ->)
      loop do
        if update = receive(timeout || @timeout)
          if event = TL::TLObject.from_json(update.to_json)
            case event
            when TL::UpdateAuthorizationState
              if auth_flow = @auth_flow
                auth_flow.client = self
                case event.authorization_state
                when TL::AuthorizationStateClosed
                  @alive = false
                  break
                when TL::AuthorizationStateWaitTdlibParameters
                  if params = @td_lib_parameters
                    spawn TL.set_tdlib_parameters(params)
                  else
                    yield event
                  end
                when TL::AuthorizationStateWaitEncryptionKey
                  auth_flow.request_encryption_key
                when TL::AuthorizationStateWaitPhoneNumber
                  auth_flow.request_phone_number
                when TL::AuthorizationStateWaitCode
                  auth_flow.request_code
                when TL::AuthorizationStateWaitRegistration
                  auth_flow.request_registration
                when TL::AuthorizationStateWaitPassword
                  auth_flow.request_password
                else
                end
              else
                yield event
              end
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
        return unless res
        case res["@type"]
        when "error"
          # TODO: Use generated errors
          raise Errors::Error.new(res["message"].as_s)
        else
          res
        end
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
