require "uuid"

require "./types/*"
require "./client_methods"
require "./update_handler"
require "./update_manager"

module Proton
  class Client
    include Proton::ClientMethods

    DEFAULT_TIMEOUT = 20

    getter? running : Bool

    property timeout : Int32

    private getter td_client : Pointer(Void)

    private getter update_manager : UpdateManager

    def initialize(@timeout = DEFAULT_TIMEOUT)
      @td_client = td_client = API.client_create
      @running = false
      @update_manager = UpdateManager.new(td_client)
    end

    def on(klass : U.class, &block : U ->) forall U
      update_manager << UpdateHandler(U).new(&block)
    end

    def broadcast(query, timeout = 10) forall U
      channel = Channel(Types::Base).new
      extra = Random.new.hex(16)
      query = query.to_h
        .transform_keys(&.to_s)
        .merge({"@extra" => extra})

      @update_manager << UpdateHandler(Types::Base).new(extra: extra, disposable: true) do |update|
        spawn channel.send(update)
      end

      API.client_send(@td_client, query)
      channel.receive
    end

    def connect
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
        end
      end

      update_manager.run(&->handle_update(Types::Base))
    end

    def handle_update(update : Types::Base)
      return unless update.is_a?(Types::AuthorizationState::Closed)
      @alive = false
      @ready = false
      API.client_destroy(@td_client)
    end

    def set_log_file_path(path)
      API.set_log_file_path(path)
    end
  end
end
