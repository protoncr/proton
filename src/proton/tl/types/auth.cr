# Copyright 2021 - Chris Watson and contributors.
#
# Licensed under the MIT License. You should have received a copy of the license
# with this project. By using this project you agree to abide by all terms
# contained therein.
#
# This module contains generated, raw MTProto types for Telegram's user API.
# It is not advised to modify this code directly, other than to test
# changes. All changes should be made in the code generator.

# Required modules for this namespace
require "./help"
# Required modules for this namespace
require "./account"

module Proton::TL
  module Auth
    abstract class TypeSentCode < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x5E002502
          SentCode.tl_deserialize(io, bare)
        when 0xA677244F
          SendCode.tl_deserialize(io, bare)
        when 0x3EF1A9BF
          ResendCode.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeAuthorization < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xCD050916
          Authorization.tl_deserialize(io, bare)
        when 0x44747E9A
          AuthorizationSignUpRequired.tl_deserialize(io, bare)
        when 0x80EEE427
          SignUp.tl_deserialize(io, bare)
        when 0xBCD51581
          SignIn.tl_deserialize(io, bare)
        when 0xA57A7DAD
          ImportAuthorization.tl_deserialize(io, bare)
        when 0x67A3FF2C
          ImportBotAuthorization.tl_deserialize(io, bare)
        when 0xD18B4D16
          CheckPassword.tl_deserialize(io, bare)
        when 0x37096C70
          RecoverPassword.tl_deserialize(io, bare)
        when 0xE894AD4D
          AcceptLoginToken.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeExportedAuthorization < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xB434E2B8
          ExportedAuthorization.tl_deserialize(io, bare)
        when 0xE5BFFFCD
          ExportAuthorization.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePasswordRecovery < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x137948A5
          PasswordRecovery.tl_deserialize(io, bare)
        when 0xD897BC66
          RequestPasswordRecovery.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeCodeType < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x72A3158C
          CodeTypeSms.tl_deserialize(io, bare)
        when 0x741CD3E3
          CodeTypeCall.tl_deserialize(io, bare)
        when 0x226CCEFB
          CodeTypeFlashCall.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeSentCodeType < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x3DBB5986
          SentCodeTypeApp.tl_deserialize(io, bare)
        when 0xC000BBA2
          SentCodeTypeSms.tl_deserialize(io, bare)
        when 0x5353E5A7
          SentCodeTypeCall.tl_deserialize(io, bare)
        when 0xAB03C6D9
          SentCodeTypeFlashCall.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeLoginToken < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x629F1980
          LoginToken.tl_deserialize(io, bare)
        when 0x068E9916
          LoginTokenMigrateTo.tl_deserialize(io, bare)
        when 0x390D5C5E
          LoginTokenSuccess.tl_deserialize(io, bare)
        when 0xB7E085FE
          ExportLoginToken.tl_deserialize(io, bare)
        when 0x95AC5CE4
          ImportLoginToken.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    class SentCode < TypeSentCode
      CONSTRUCTOR_ID = 0x5E002502

      getter type : Auth::TypeSentCodeType
      getter phone_code_hash : Bytes
      getter next_type : Auth::TypeCodeType | Nil
      getter timeout : Int32 | Nil

      def initialize(
        type : Auth::TypeSentCodeType,
        phone_code_hash : Bytes | String | IO,
        next_type : Auth::TypeCodeType | Nil = nil,
        timeout : Int32 | Nil = nil
      )
        @type = type
        @phone_code_hash = phone_code_hash
        @next_type = next_type
        @timeout = timeout
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!next_type.nil? ? 2 : 0) |
            (!timeout.nil? ? 4 : 0)
        ).tl_serialize(io)
        @type.tl_serialize(io, false)
        @phone_code_hash.tl_serialize(io, true)
        @next_type.tl_serialize(io, false) unless @next_type.nil?
        @timeout.tl_serialize(io, true) unless @timeout.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          type: Auth::TypeSentCodeType.tl_deserialize(io, false),
          phone_code_hash: Bytes.tl_deserialize(io, true),
          next_type: flags & 2 == 1 ? Auth::TypeCodeType.tl_deserialize(io, false) : nil,
          timeout: flags & 4 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class Authorization < TypeAuthorization
      CONSTRUCTOR_ID = 0xCD050916

      getter user : Root::TypeUser
      getter tmp_sessions : Int32 | Nil

      def initialize(
        user : Root::TypeUser,
        tmp_sessions : Int32 | Nil = nil
      )
        @user = user
        @tmp_sessions = tmp_sessions
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!tmp_sessions.nil? ? 1 : 0)
        ).tl_serialize(io)
        @tmp_sessions.tl_serialize(io, true) unless @tmp_sessions.nil?
        @user.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          user: Root::TypeUser.tl_deserialize(io, false),
          tmp_sessions: flags & 1 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class AuthorizationSignUpRequired < TypeAuthorization
      CONSTRUCTOR_ID = 0x44747E9A

      getter terms_of_service : Help::TypeTermsOfService | Nil

      def initialize(
        terms_of_service : Help::TypeTermsOfService | Nil = nil
      )
        @terms_of_service = terms_of_service
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!terms_of_service.nil? ? 1 : 0)
        ).tl_serialize(io)
        @terms_of_service.tl_serialize(io, false) unless @terms_of_service.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          terms_of_service: flags & 1 == 1 ? Help::TypeTermsOfService.tl_deserialize(io, false) : nil,
        )
      end
    end

    class ExportedAuthorization < TypeExportedAuthorization
      CONSTRUCTOR_ID = 0xB434E2B8

      getter id : Int64
      getter bytes : Bytes

      def initialize(
        id : Int64,
        bytes : Bytes | String | IO
      )
        @id = id
        @bytes = TL::Utils.parse_bytes!(bytes)
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        @bytes.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Int64.tl_deserialize(io, true),
          bytes: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class PasswordRecovery < TypePasswordRecovery
      CONSTRUCTOR_ID = 0x137948A5

      getter email_pattern : Bytes

      def initialize(
        email_pattern : Bytes | String | IO
      )
        @email_pattern = email_pattern
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @email_pattern.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          email_pattern: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class CodeTypeSms < TypeCodeType
      CONSTRUCTOR_ID = 0x72A3158C

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class CodeTypeCall < TypeCodeType
      CONSTRUCTOR_ID = 0x741CD3E3

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class CodeTypeFlashCall < TypeCodeType
      CONSTRUCTOR_ID = 0x226CCEFB

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class SentCodeTypeApp < TypeSentCodeType
      CONSTRUCTOR_ID = 0x3DBB5986

      getter length : Int32

      def initialize(
        length : Int32
      )
        @length = length
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @length.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          length: Int32.tl_deserialize(io, true),
        )
      end
    end

    class SentCodeTypeSms < TypeSentCodeType
      CONSTRUCTOR_ID = 0xC000BBA2

      getter length : Int32

      def initialize(
        length : Int32
      )
        @length = length
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @length.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          length: Int32.tl_deserialize(io, true),
        )
      end
    end

    class SentCodeTypeCall < TypeSentCodeType
      CONSTRUCTOR_ID = 0x5353E5A7

      getter length : Int32

      def initialize(
        length : Int32
      )
        @length = length
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @length.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          length: Int32.tl_deserialize(io, true),
        )
      end
    end

    class SentCodeTypeFlashCall < TypeSentCodeType
      CONSTRUCTOR_ID = 0xAB03C6D9

      getter pattern : Bytes

      def initialize(
        pattern : Bytes | String | IO
      )
        @pattern = pattern
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @pattern.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          pattern: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class LoginToken < TypeLoginToken
      CONSTRUCTOR_ID = 0x629F1980

      getter expires : Int32
      getter token : Bytes

      def initialize(
        expires : Int32,
        token : Bytes | String | IO
      )
        @expires = expires
        @token = TL::Utils.parse_bytes!(token)
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @expires.tl_serialize(io, true)
        @token.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          expires: Int32.tl_deserialize(io, true),
          token: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class LoginTokenMigrateTo < TypeLoginToken
      CONSTRUCTOR_ID = 0x068E9916

      getter dc_id : Int32
      getter token : Bytes

      def initialize(
        dc_id : Int32,
        token : Bytes | String | IO
      )
        @dc_id = dc_id
        @token = TL::Utils.parse_bytes!(token)
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @dc_id.tl_serialize(io, true)
        @token.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          dc_id: Int32.tl_deserialize(io, true),
          token: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class LoginTokenSuccess < TypeLoginToken
      CONSTRUCTOR_ID = 0x390D5C5E

      getter authorization : Auth::TypeAuthorization

      def initialize(
        authorization : Auth::TypeAuthorization
      )
        @authorization = authorization
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @authorization.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          authorization: Auth::TypeAuthorization.tl_deserialize(io, false),
        )
      end
    end

    class SendCode < TLRequest
      CONSTRUCTOR_ID = 0xA677244F

      getter phone_number : Bytes
      getter api_id : Int32
      getter api_hash : Bytes
      getter settings : Root::TypeCodeSettings

      def initialize(
        phone_number : Bytes | String | IO,
        api_id : Int32,
        api_hash : Bytes | String | IO,
        settings : Root::TypeCodeSettings
      )
        @phone_number = phone_number
        @api_id = api_id
        @api_hash = api_hash
        @settings = settings
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @phone_number.tl_serialize(io, true)
        @api_id.tl_serialize(io, true)
        @api_hash.tl_serialize(io, true)
        @settings.tl_serialize(io, false)
      end

      def return_type
        Auth::TypeSentCode
      end
    end

    class SignUp < TLRequest
      CONSTRUCTOR_ID = 0x80EEE427

      getter phone_number : Bytes
      getter phone_code_hash : Bytes
      getter first_name : Bytes
      getter last_name : Bytes

      def initialize(
        phone_number : Bytes | String | IO,
        phone_code_hash : Bytes | String | IO,
        first_name : Bytes | String | IO,
        last_name : Bytes | String | IO
      )
        @phone_number = phone_number
        @phone_code_hash = phone_code_hash
        @first_name = first_name
        @last_name = last_name
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @phone_number.tl_serialize(io, true)
        @phone_code_hash.tl_serialize(io, true)
        @first_name.tl_serialize(io, true)
        @last_name.tl_serialize(io, true)
      end

      def return_type
        Auth::TypeAuthorization
      end
    end

    class SignIn < TLRequest
      CONSTRUCTOR_ID = 0xBCD51581

      getter phone_number : Bytes
      getter phone_code_hash : Bytes
      getter phone_code : Bytes

      def initialize(
        phone_number : Bytes | String | IO,
        phone_code_hash : Bytes | String | IO,
        phone_code : Bytes | String | IO
      )
        @phone_number = phone_number
        @phone_code_hash = phone_code_hash
        @phone_code = phone_code
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @phone_number.tl_serialize(io, true)
        @phone_code_hash.tl_serialize(io, true)
        @phone_code.tl_serialize(io, true)
      end

      def return_type
        Auth::TypeAuthorization
      end
    end

    class LogOut < TLRequest
      CONSTRUCTOR_ID = 0x5717DA40

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def return_type
        Bool
      end
    end

    class ResetAuthorizations < TLRequest
      CONSTRUCTOR_ID = 0x9FAB0D1A

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def return_type
        Bool
      end
    end

    class ExportAuthorization < TLRequest
      CONSTRUCTOR_ID = 0xE5BFFFCD

      getter dc_id : Int32

      def initialize(
        dc_id : Int32
      )
        @dc_id = dc_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @dc_id.tl_serialize(io, true)
      end

      def return_type
        Auth::TypeExportedAuthorization
      end
    end

    class ImportAuthorization < TLRequest
      CONSTRUCTOR_ID = 0xA57A7DAD

      getter id : Int64
      getter bytes : Bytes

      def initialize(
        id : Int64,
        bytes : Bytes | String | IO
      )
        @id = id
        @bytes = TL::Utils.parse_bytes!(bytes)
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        @bytes.tl_serialize(io, true)
      end

      def return_type
        Auth::TypeAuthorization
      end
    end

    class BindTempAuthKey < TLRequest
      CONSTRUCTOR_ID = 0xCDD42A05

      getter perm_auth_key_id : Int64
      getter nonce : Int64
      getter expires_at : Int32
      getter encrypted_message : Bytes

      def initialize(
        perm_auth_key_id : Int64,
        nonce : Int64,
        expires_at : Int32,
        encrypted_message : Bytes | String | IO
      )
        @perm_auth_key_id = perm_auth_key_id
        @nonce = nonce
        @expires_at = expires_at
        @encrypted_message = TL::Utils.parse_bytes!(encrypted_message)
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @perm_auth_key_id.tl_serialize(io, true)
        @nonce.tl_serialize(io, true)
        @expires_at.tl_serialize(io, true)
        @encrypted_message.tl_serialize(io, true)
      end

      def return_type
        Bool
      end
    end

    class ImportBotAuthorization < TLRequest
      CONSTRUCTOR_ID = 0x67A3FF2C

      getter flags : Int32
      getter api_id : Int32
      getter api_hash : Bytes
      getter bot_auth_token : Bytes

      def initialize(
        flags : Int32,
        api_id : Int32,
        api_hash : Bytes | String | IO,
        bot_auth_token : Bytes | String | IO
      )
        @flags = flags
        @api_id = api_id
        @api_hash = api_hash
        @bot_auth_token = bot_auth_token
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @flags.tl_serialize(io, true)
        @api_id.tl_serialize(io, true)
        @api_hash.tl_serialize(io, true)
        @bot_auth_token.tl_serialize(io, true)
      end

      def return_type
        Auth::TypeAuthorization
      end
    end

    class CheckPassword < TLRequest
      CONSTRUCTOR_ID = 0xD18B4D16

      getter password : Root::TypeInputCheckPasswordSRP

      def initialize(
        password : Root::TypeInputCheckPasswordSRP
      )
        @password = password
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @password.tl_serialize(io, false)
      end

      def return_type
        Auth::TypeAuthorization
      end
    end

    class RequestPasswordRecovery < TLRequest
      CONSTRUCTOR_ID = 0xD897BC66

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def return_type
        Auth::TypePasswordRecovery
      end
    end

    class RecoverPassword < TLRequest
      CONSTRUCTOR_ID = 0x37096C70

      getter code : Bytes
      getter new_settings : Account::TypePasswordInputSettings | Nil

      def initialize(
        code : Bytes | String | IO,
        new_settings : Account::TypePasswordInputSettings | Nil = nil
      )
        @code = code
        @new_settings = new_settings
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!new_settings.nil? ? 1 : 0)
        ).tl_serialize(io)
        @code.tl_serialize(io, true)
        @new_settings.tl_serialize(io, false) unless @new_settings.nil?
      end

      def return_type
        Auth::TypeAuthorization
      end
    end

    class ResendCode < TLRequest
      CONSTRUCTOR_ID = 0x3EF1A9BF

      getter phone_number : Bytes
      getter phone_code_hash : Bytes

      def initialize(
        phone_number : Bytes | String | IO,
        phone_code_hash : Bytes | String | IO
      )
        @phone_number = phone_number
        @phone_code_hash = phone_code_hash
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @phone_number.tl_serialize(io, true)
        @phone_code_hash.tl_serialize(io, true)
      end

      def return_type
        Auth::TypeSentCode
      end
    end

    class CancelCode < TLRequest
      CONSTRUCTOR_ID = 0x1F040578

      getter phone_number : Bytes
      getter phone_code_hash : Bytes

      def initialize(
        phone_number : Bytes | String | IO,
        phone_code_hash : Bytes | String | IO
      )
        @phone_number = phone_number
        @phone_code_hash = phone_code_hash
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @phone_number.tl_serialize(io, true)
        @phone_code_hash.tl_serialize(io, true)
      end

      def return_type
        Bool
      end
    end

    class DropTempAuthKeys < TLRequest
      CONSTRUCTOR_ID = 0x8E48A188

      getter except_auth_keys : Array(Int64)

      def initialize(
        except_auth_keys : Array(Int64)
      )
        @except_auth_keys = except_auth_keys
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @except_auth_keys.tl_serialize(io, false)
      end

      def return_type
        Bool
      end
    end

    class ExportLoginToken < TLRequest
      CONSTRUCTOR_ID = 0xB7E085FE

      getter api_id : Int32
      getter api_hash : Bytes
      getter except_ids : Array(Int64)

      def initialize(
        api_id : Int32,
        api_hash : Bytes | String | IO,
        except_ids : Array(Int64)
      )
        @api_id = api_id
        @api_hash = api_hash
        @except_ids = except_ids
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @api_id.tl_serialize(io, true)
        @api_hash.tl_serialize(io, true)
        @except_ids.tl_serialize(io, false)
      end

      def return_type
        Auth::TypeLoginToken
      end
    end

    class ImportLoginToken < TLRequest
      CONSTRUCTOR_ID = 0x95AC5CE4

      getter token : Bytes

      def initialize(
        token : Bytes | String | IO
      )
        @token = TL::Utils.parse_bytes!(token)
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @token.tl_serialize(io, true)
      end

      def return_type
        Auth::TypeLoginToken
      end
    end

    class AcceptLoginToken < TLRequest
      CONSTRUCTOR_ID = 0xE894AD4D

      getter token : Bytes

      def initialize(
        token : Bytes | String | IO
      )
        @token = TL::Utils.parse_bytes!(token)
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @token.tl_serialize(io, true)
      end

      def return_type
        Root::TypeAuthorization
      end
    end

    class CheckRecoveryPassword < TLRequest
      CONSTRUCTOR_ID = 0x0D36BF79

      getter code : Bytes

      def initialize(
        code : Bytes | String | IO
      )
        @code = code
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @code.tl_serialize(io, true)
      end

      def return_type
        Bool
      end
    end
  end
end
