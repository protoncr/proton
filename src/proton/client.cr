require "uuid"
require "promise"

module Proton
  class Client
    TIMEOUT = 10

    @td_client : Pointer(Void)

    def initialize(timeout = TIMEOUT, **extra_config)
      @td_client = API.client_create()
      @timeout = timeout
      @update_manager = UpdateManager.new(@td_client, @timeout)
      authorize
    end

    def run_until_finished
      @update_manager.start_event_loop
      close
    end

    def broadcast(query)
      API.client_send(@td_client, query)
    end

    def broadcast(query, &block : Update -> Nil)
      extra = UUID.random.to_s
      query["@extra"] = extra

      result = nil
      @update_manager.add(extra) do |update|
        if (ex = update["@extra"]?) && (ex == extra)
          block.call(update)
          @update_manager.delete(extra)
        end
      end

      broadcast(query)
    end

    def execute(query)
      API.client_execute(@td_client, query)
    end

    def set_log_verbosity_level(level)
      API.set_log_verbosity_level(level)
    end

    def set_log_file_path(path)
      API.set_log_file_path(path)
    end

    def authorization_state(&block : Update -> Nil)
      broadcast({"@type" => "getAuthorizationState"}, &block)
    end

    def on(update_type, &block : Update -> Nil)
      extra = UUID.random.to_s
      @update_manager.add(extra) do |update|
        if update["@type"]? == update_type
          block.call(update)
          nil
        end
      end
    end

    def close
      @update_manager.stop
      API.client_destroy(@td_client)
    end

    def authorize
      tdlib_params_query = {
        "@type" => "setTdlibParameters",
        "parameters" => {
          "@type" => "tdlibParameters"
        }.merge(settings.to_h)
      }

      encryption_key_query = {
        "@type" => "checkDatabaseEncryptionKey",
        "encryption_key" => settings.encryption_key
      }

      extra = "tg-authorize"
      @update_manager.add(extra) do |update|
        if update["@type"]? == "updateAuthorizationState"
          case update.dig("authorization_state", "@type")
          when "authorizationStateWaitTdlibParameters"
            broadcast(tdlib_params_query)
          when "authorizationStateWaitEncryptionKey"
            broadcast(encryption_key_query)
          else
            @update_manager.delete(extra)
          end
          nil
        end
      end
    end
  end
end
