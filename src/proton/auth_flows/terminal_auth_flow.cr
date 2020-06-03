module Proton
  class TerminalAuthFlow < AuthFlow
    def request_encryption_key
      encryption_key = if @encryption_key
        @encryption_key.to_s
      else
        print "Database encryption key: "
        gets.to_s.strip
      end
      spawn TL.check_database_encryption_key(encryption_key)
    end

    def request_phone_number
      print "Phone number: "
      phone_number = gets.to_s.strip
      spawn TL.set_authentication_phone_number(phone_number, {
        allow_flash_call: @allow_flash_call,
        is_current_phone_number: @current_phone_number,
        allow_sms_retriever_api: @force_sms
      })
    end

    def request_code
      print "Enter code: "
      code = gets.to_s.strip
      spawn TL.check_authentication_code(code)
    end

    def request_password
      print "Enter password: "
      password = gets.to_s.strip
      spawn TL.check_authentication_password(password)
    end

    def request_registration
      puts "Registration not implemented yet"
      exit(1)
    end
  end
end
