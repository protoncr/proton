require "uuid"
require "promise"

require "./types/*"
require "./client_methods"
require "./update_handler"
require "./update_manager"

module Proton
  class Client
    include Proton::ClientMethods

    DEFAULT_TIMEOUT = 20

    getter? alive : Bool

    property timeout : Int32

    private getter td_client : Pointer(Void)

    private getter update_manager : UpdateManager

    def self.new(timeout = DEFAULT_TIMEOUT)
      client = new(timeout, nil)
      client.connect
    end

    def self.new(timeout = DEFAULT_TIMEOUT, &block : Client ->)
      client = new(timeout, nil)
      client.connect(&block)
    end

    private def initialize(@timeout, dummy)
      @td_client = td_client = API.client_create
      @alive = false
      @update_manager = UpdateManager.new(td_client)
      set_log_file_path("./tdlib.log")
    end

    def on(klass : U.class, &block : U ->) forall U
      update_manager << UpdateHandler(U).new(&block)
    end

    def broadcast(return_type : U.class, query) : Concurrent::Future(U) forall U
      fut = Concurrent::Future(U).new do
        channel = Channel(U).new
        extra = Random.new.hex(16)
        query = query.to_h
          .transform_keys(&.to_s)
          .merge({"@extra" => extra})

        @update_manager << UpdateHandler(U).new(extra: extra, disposable: true) do |update|
          channel.send(update)
        end

        API.client_send(@td_client, query)
        channel.receive
      end

      # spawn do
      #   start_time = Time.local
      #   loop do
      #     time = Time.local
      #     if (time - start_time) > @timeout.seconds
      #       fut.cancel("Request timed out after #{(time - start_time).seconds} seconds")
      #     end
      #     sleep 10.milliseconds
      #   end
      # end

      fut
    end

    def connect(&block : Client ->)
      on Types::Update::AuthorizationState do |update|
        case update.authorization_state
        when Types::AuthorizationState::WaitTdlibParameters
          set_tdlib_parameters(Types::TdlibParameters.from_json(Client.settings.to_h.to_json))
        when Types::AuthorizationState::WaitEncryptionKey
          check_database_encryption_key(Client.settings.encryption_key)
        when Types::AuthorizationState::WaitPhoneNumber
          print "Enter your phone number: "
          phone = STDIN.gets
          set_authentication_phone_number(phone.to_s)
        when Types::AuthorizationState::WaitCode
          print "Please enter the code sent by Telegram: "
          code = STDIN.gets
          check_authentication_code(code.to_s)
        when Types::AuthorizationState::WaitPassword
          print "Please enter your password: "
          password = STDIN.gets
          check_authentication_password(password.to_s)
        when Types::AuthorizationState::Ready
          block.call(self)
        end
      end

      return self
    end

    def connect
      connect {}
    end

    def run
      @alive = true
      puts "Bot is running"
      spawn do
        while alive?
          update_manager.handle_update(&->handle_update(Types::Base))
          sleep 10.milliseconds
        end
      end
      sleep
    end

    def stop
      self.close
    end

    def handle_update(update : Types::Base)
      return unless update.is_a?(Types::AuthorizationState::Closed)
      API.client_destroy(@td_client)
      @alive = false
      @ready = false
      exit(0)
    end

    def set_log_file_path(path)
      API.set_log_file_path(path)
    end
  end
end
