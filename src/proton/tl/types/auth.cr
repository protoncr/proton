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
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x5E002502
          SentCode.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeAuthorization < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x33FB7BB8
          Authorization.tl_deserialize(io, bare)
        when 0x44747E9A
          AuthorizationSignUpRequired.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeExportedAuthorization < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xB434E2B8
          ExportedAuthorization.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePasswordRecovery < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x137948A5
          PasswordRecovery.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeCodeType < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x72A3158C
          CodeTypeSms.tl_deserialize(io, bare)
        when 0x741CD3E3
          CodeTypeCall.tl_deserialize(io, bare)
        when 0x226CCEFB
          CodeTypeFlashCall.tl_deserialize(io, bare)
        when 0xD61AD6EE
          CodeTypeMissedCall.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeSentCodeType < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
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
        when 0x82006484
          SentCodeTypeMissedCall.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeLoginToken < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x629F1980
          LoginToken.tl_deserialize(io, bare)
        when 0x068E9916
          LoginTokenMigrateTo.tl_deserialize(io, bare)
        when 0x390D5C5E
          LoginTokenSuccess.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeLoggedOut < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xC3A2835F
          LoggedOut.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    class SentCode < TypeSentCode
      getter constructor_id : UInt32 = 0x5E002502_u32
      class_getter constructor_id : UInt32 = 0x5E002502_u32

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
        @phone_code_hash = TL::Utils.parse_bytes!(phone_code_hash)
        @next_type = next_type
        @timeout = TL::Utils.parse_int(timeout, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!next_type.nil? ? 0x02 : 0) |
            (!timeout.nil? ? 0x04 : 0)
        ).tl_serialize(io)
        @type.tl_serialize(io)
        @phone_code_hash.tl_serialize(io)
        @next_type.tl_serialize(io) unless @next_type.nil?
        @timeout.tl_serialize(io) unless @timeout.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        flags = UInt32.tl_deserialize(io)
        new(
          type: Auth::TypeSentCodeType.tl_deserialize(io),
          phone_code_hash: Bytes.tl_deserialize(io),
          next_type: flags & 0x02 > 0 ? Auth::TypeCodeType.tl_deserialize(io) : nil,
          timeout: flags & 0x04 > 0 ? Int32.tl_deserialize(io) : nil,
        )
      end
    end

    class Authorization < TypeAuthorization
      getter constructor_id : UInt32 = 0x33FB7BB8_u32
      class_getter constructor_id : UInt32 = 0x33FB7BB8_u32

      getter user : Root::TypeUser
      getter setup_password_required : Bool | Nil
      getter otherwise_relogin_days : Int32 | Nil
      getter tmp_sessions : Int32 | Nil

      def initialize(
        user : Root::TypeUser,
        setup_password_required : Bool | Nil = nil,
        otherwise_relogin_days : Int32 | Nil = nil,
        tmp_sessions : Int32 | Nil = nil
      )
        @user = user
        @setup_password_required = setup_password_required
        @otherwise_relogin_days = TL::Utils.parse_int(otherwise_relogin_days, Int32)
        @tmp_sessions = TL::Utils.parse_int(tmp_sessions, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!setup_password_required.nil? ? 0x02 : 0) |
            (!otherwise_relogin_days.nil? ? 0x02 : 0) |
            (!tmp_sessions.nil? ? 0x01 : 0)
        ).tl_serialize(io)
        @otherwise_relogin_days.tl_serialize(io) unless @otherwise_relogin_days.nil?
        @tmp_sessions.tl_serialize(io) unless @tmp_sessions.nil?
        @user.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        flags = UInt32.tl_deserialize(io)
        new(
          user: Root::TypeUser.tl_deserialize(io),
          setup_password_required: flags & 0x02 > 0 || nil,
          otherwise_relogin_days: flags & 0x02 > 0 ? Int32.tl_deserialize(io) : nil,
          tmp_sessions: flags & 0x01 > 0 ? Int32.tl_deserialize(io) : nil,
        )
      end
    end

    class AuthorizationSignUpRequired < TypeAuthorization
      getter constructor_id : UInt32 = 0x44747E9A_u32
      class_getter constructor_id : UInt32 = 0x44747E9A_u32

      getter terms_of_service : Help::TypeTermsOfService | Nil

      def initialize(
        terms_of_service : Help::TypeTermsOfService | Nil = nil
      )
        @terms_of_service = terms_of_service
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!terms_of_service.nil? ? 0x01 : 0)
        ).tl_serialize(io)
        @terms_of_service.tl_serialize(io) unless @terms_of_service.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        flags = UInt32.tl_deserialize(io)
        new(
          terms_of_service: flags & 0x01 > 0 ? Help::TypeTermsOfService.tl_deserialize(io) : nil,
        )
      end
    end

    class ExportedAuthorization < TypeExportedAuthorization
      getter constructor_id : UInt32 = 0xB434E2B8_u32
      class_getter constructor_id : UInt32 = 0xB434E2B8_u32

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
        constructor_id.tl_serialize(io) unless bare
        @id.tl_serialize(io)
        @bytes.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          id: Int64.tl_deserialize(io),
          bytes: Bytes.tl_deserialize(io),
        )
      end
    end

    class PasswordRecovery < TypePasswordRecovery
      getter constructor_id : UInt32 = 0x137948A5_u32
      class_getter constructor_id : UInt32 = 0x137948A5_u32

      getter email_pattern : Bytes

      def initialize(
        email_pattern : Bytes | String | IO
      )
        @email_pattern = TL::Utils.parse_bytes!(email_pattern)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @email_pattern.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          email_pattern: Bytes.tl_deserialize(io),
        )
      end
    end

    class CodeTypeSms < TypeCodeType
      getter constructor_id : UInt32 = 0x72A3158C_u32
      class_getter constructor_id : UInt32 = 0x72A3158C_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new()
      end
    end

    class CodeTypeCall < TypeCodeType
      getter constructor_id : UInt32 = 0x741CD3E3_u32
      class_getter constructor_id : UInt32 = 0x741CD3E3_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new()
      end
    end

    class CodeTypeFlashCall < TypeCodeType
      getter constructor_id : UInt32 = 0x226CCEFB_u32
      class_getter constructor_id : UInt32 = 0x226CCEFB_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new()
      end
    end

    class CodeTypeMissedCall < TypeCodeType
      getter constructor_id : UInt32 = 0xD61AD6EE_u32
      class_getter constructor_id : UInt32 = 0xD61AD6EE_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new()
      end
    end

    class SentCodeTypeApp < TypeSentCodeType
      getter constructor_id : UInt32 = 0x3DBB5986_u32
      class_getter constructor_id : UInt32 = 0x3DBB5986_u32

      getter length : Int32

      def initialize(
        length : Int32
      )
        @length = TL::Utils.parse_int!(length, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @length.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          length: Int32.tl_deserialize(io),
        )
      end
    end

    class SentCodeTypeSms < TypeSentCodeType
      getter constructor_id : UInt32 = 0xC000BBA2_u32
      class_getter constructor_id : UInt32 = 0xC000BBA2_u32

      getter length : Int32

      def initialize(
        length : Int32
      )
        @length = TL::Utils.parse_int!(length, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @length.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          length: Int32.tl_deserialize(io),
        )
      end
    end

    class SentCodeTypeCall < TypeSentCodeType
      getter constructor_id : UInt32 = 0x5353E5A7_u32
      class_getter constructor_id : UInt32 = 0x5353E5A7_u32

      getter length : Int32

      def initialize(
        length : Int32
      )
        @length = TL::Utils.parse_int!(length, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @length.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          length: Int32.tl_deserialize(io),
        )
      end
    end

    class SentCodeTypeFlashCall < TypeSentCodeType
      getter constructor_id : UInt32 = 0xAB03C6D9_u32
      class_getter constructor_id : UInt32 = 0xAB03C6D9_u32

      getter pattern : Bytes

      def initialize(
        pattern : Bytes | String | IO
      )
        @pattern = TL::Utils.parse_bytes!(pattern)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @pattern.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          pattern: Bytes.tl_deserialize(io),
        )
      end
    end

    class SentCodeTypeMissedCall < TypeSentCodeType
      getter constructor_id : UInt32 = 0x82006484_u32
      class_getter constructor_id : UInt32 = 0x82006484_u32

      getter prefix : Bytes
      getter length : Int32

      def initialize(
        prefix : Bytes | String | IO,
        length : Int32
      )
        @prefix = TL::Utils.parse_bytes!(prefix)
        @length = TL::Utils.parse_int!(length, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @prefix.tl_serialize(io)
        @length.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          prefix: Bytes.tl_deserialize(io),
          length: Int32.tl_deserialize(io),
        )
      end
    end

    class LoginToken < TypeLoginToken
      getter constructor_id : UInt32 = 0x629F1980_u32
      class_getter constructor_id : UInt32 = 0x629F1980_u32

      getter expires : Int32
      getter token : Bytes

      def initialize(
        expires : Int32,
        token : Bytes | String | IO
      )
        @expires = TL::Utils.parse_int!(expires, Int32)
        @token = TL::Utils.parse_bytes!(token)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @expires.tl_serialize(io)
        @token.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          expires: Int32.tl_deserialize(io),
          token: Bytes.tl_deserialize(io),
        )
      end
    end

    class LoginTokenMigrateTo < TypeLoginToken
      getter constructor_id : UInt32 = 0x068E9916_u32
      class_getter constructor_id : UInt32 = 0x068E9916_u32

      getter dc_id : Int32
      getter token : Bytes

      def initialize(
        dc_id : Int32,
        token : Bytes | String | IO
      )
        @dc_id = TL::Utils.parse_int!(dc_id, Int32)
        @token = TL::Utils.parse_bytes!(token)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @dc_id.tl_serialize(io)
        @token.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          dc_id: Int32.tl_deserialize(io),
          token: Bytes.tl_deserialize(io),
        )
      end
    end

    class LoginTokenSuccess < TypeLoginToken
      getter constructor_id : UInt32 = 0x390D5C5E_u32
      class_getter constructor_id : UInt32 = 0x390D5C5E_u32

      getter authorization : Auth::TypeAuthorization

      def initialize(
        authorization : Auth::TypeAuthorization
      )
        @authorization = authorization
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @authorization.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          authorization: Auth::TypeAuthorization.tl_deserialize(io),
        )
      end
    end

    class LoggedOut < TypeLoggedOut
      getter constructor_id : UInt32 = 0xC3A2835F_u32
      class_getter constructor_id : UInt32 = 0xC3A2835F_u32

      getter future_auth_token : Bytes | Nil

      def initialize(
        future_auth_token : Bytes | Nil = nil
      )
        @future_auth_token = TL::Utils.parse_bytes(future_auth_token)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!future_auth_token.nil? ? 0x01 : 0)
        ).tl_serialize(io)
        @future_auth_token.tl_serialize(io) unless @future_auth_token.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        flags = UInt32.tl_deserialize(io)
        new(
          future_auth_token: flags & 0x01 > 0 ? Bytes.tl_deserialize(io) : nil,
        )
      end
    end

    class SendCode < TLRequest
      getter constructor_id : UInt32 = 0xA677244F_u32
      class_getter constructor_id : UInt32 = 0xA677244F_u32

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
        @phone_number = TL::Utils.parse_bytes!(phone_number)
        @api_id = TL::Utils.parse_int!(api_id, Int32)
        @api_hash = TL::Utils.parse_bytes!(api_hash)
        @settings = settings
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @phone_number.tl_serialize(io)
        @api_id.tl_serialize(io)
        @api_hash.tl_serialize(io)
        @settings.tl_serialize(io)
      end

      def self.return_type
        Auth::TypeSentCode
      end
    end

    class SignUp < TLRequest
      getter constructor_id : UInt32 = 0x80EEE427_u32
      class_getter constructor_id : UInt32 = 0x80EEE427_u32

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
        @phone_number = TL::Utils.parse_bytes!(phone_number)
        @phone_code_hash = TL::Utils.parse_bytes!(phone_code_hash)
        @first_name = TL::Utils.parse_bytes!(first_name)
        @last_name = TL::Utils.parse_bytes!(last_name)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @phone_number.tl_serialize(io)
        @phone_code_hash.tl_serialize(io)
        @first_name.tl_serialize(io)
        @last_name.tl_serialize(io)
      end

      def self.return_type
        Auth::TypeAuthorization
      end
    end

    class SignIn < TLRequest
      getter constructor_id : UInt32 = 0xBCD51581_u32
      class_getter constructor_id : UInt32 = 0xBCD51581_u32

      getter phone_number : Bytes
      getter phone_code_hash : Bytes
      getter phone_code : Bytes

      def initialize(
        phone_number : Bytes | String | IO,
        phone_code_hash : Bytes | String | IO,
        phone_code : Bytes | String | IO
      )
        @phone_number = TL::Utils.parse_bytes!(phone_number)
        @phone_code_hash = TL::Utils.parse_bytes!(phone_code_hash)
        @phone_code = TL::Utils.parse_bytes!(phone_code)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @phone_number.tl_serialize(io)
        @phone_code_hash.tl_serialize(io)
        @phone_code.tl_serialize(io)
      end

      def self.return_type
        Auth::TypeAuthorization
      end
    end

    class LogOut < TLRequest
      getter constructor_id : UInt32 = 0x3E72BA19_u32
      class_getter constructor_id : UInt32 = 0x3E72BA19_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.return_type
        Auth::TypeLoggedOut
      end
    end

    class ResetAuthorizations < TLRequest
      getter constructor_id : UInt32 = 0x9FAB0D1A_u32
      class_getter constructor_id : UInt32 = 0x9FAB0D1A_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.return_type
        Bool
      end
    end

    class ExportAuthorization < TLRequest
      getter constructor_id : UInt32 = 0xE5BFFFCD_u32
      class_getter constructor_id : UInt32 = 0xE5BFFFCD_u32

      getter dc_id : Int32

      def initialize(
        dc_id : Int32
      )
        @dc_id = TL::Utils.parse_int!(dc_id, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @dc_id.tl_serialize(io)
      end

      def self.return_type
        Auth::TypeExportedAuthorization
      end
    end

    class ImportAuthorization < TLRequest
      getter constructor_id : UInt32 = 0xA57A7DAD_u32
      class_getter constructor_id : UInt32 = 0xA57A7DAD_u32

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
        constructor_id.tl_serialize(io) unless bare
        @id.tl_serialize(io)
        @bytes.tl_serialize(io)
      end

      def self.return_type
        Auth::TypeAuthorization
      end
    end

    class BindTempAuthKey < TLRequest
      getter constructor_id : UInt32 = 0xCDD42A05_u32
      class_getter constructor_id : UInt32 = 0xCDD42A05_u32

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
        @expires_at = TL::Utils.parse_int!(expires_at, Int32)
        @encrypted_message = TL::Utils.parse_bytes!(encrypted_message)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @perm_auth_key_id.tl_serialize(io)
        @nonce.tl_serialize(io)
        @expires_at.tl_serialize(io)
        @encrypted_message.tl_serialize(io)
      end

      def self.return_type
        Bool
      end
    end

    class ImportBotAuthorization < TLRequest
      getter constructor_id : UInt32 = 0x67A3FF2C_u32
      class_getter constructor_id : UInt32 = 0x67A3FF2C_u32

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
        @flags = TL::Utils.parse_int!(flags, Int32)
        @api_id = TL::Utils.parse_int!(api_id, Int32)
        @api_hash = TL::Utils.parse_bytes!(api_hash)
        @bot_auth_token = TL::Utils.parse_bytes!(bot_auth_token)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @flags.tl_serialize(io)
        @api_id.tl_serialize(io)
        @api_hash.tl_serialize(io)
        @bot_auth_token.tl_serialize(io)
      end

      def self.return_type
        Auth::TypeAuthorization
      end
    end

    class CheckPassword < TLRequest
      getter constructor_id : UInt32 = 0xD18B4D16_u32
      class_getter constructor_id : UInt32 = 0xD18B4D16_u32

      getter password : Root::TypeInputCheckPasswordSRP

      def initialize(
        password : Root::TypeInputCheckPasswordSRP
      )
        @password = password
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @password.tl_serialize(io)
      end

      def self.return_type
        Auth::TypeAuthorization
      end
    end

    class RequestPasswordRecovery < TLRequest
      getter constructor_id : UInt32 = 0xD897BC66_u32
      class_getter constructor_id : UInt32 = 0xD897BC66_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.return_type
        Auth::TypePasswordRecovery
      end
    end

    class RecoverPassword < TLRequest
      getter constructor_id : UInt32 = 0x37096C70_u32
      class_getter constructor_id : UInt32 = 0x37096C70_u32

      getter code : Bytes
      getter new_settings : Account::TypePasswordInputSettings | Nil

      def initialize(
        code : Bytes | String | IO,
        new_settings : Account::TypePasswordInputSettings | Nil = nil
      )
        @code = TL::Utils.parse_bytes!(code)
        @new_settings = new_settings
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!new_settings.nil? ? 0x01 : 0)
        ).tl_serialize(io)
        @code.tl_serialize(io)
        @new_settings.tl_serialize(io) unless @new_settings.nil?
      end

      def self.return_type
        Auth::TypeAuthorization
      end
    end

    class ResendCode < TLRequest
      getter constructor_id : UInt32 = 0x3EF1A9BF_u32
      class_getter constructor_id : UInt32 = 0x3EF1A9BF_u32

      getter phone_number : Bytes
      getter phone_code_hash : Bytes

      def initialize(
        phone_number : Bytes | String | IO,
        phone_code_hash : Bytes | String | IO
      )
        @phone_number = TL::Utils.parse_bytes!(phone_number)
        @phone_code_hash = TL::Utils.parse_bytes!(phone_code_hash)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @phone_number.tl_serialize(io)
        @phone_code_hash.tl_serialize(io)
      end

      def self.return_type
        Auth::TypeSentCode
      end
    end

    class CancelCode < TLRequest
      getter constructor_id : UInt32 = 0x1F040578_u32
      class_getter constructor_id : UInt32 = 0x1F040578_u32

      getter phone_number : Bytes
      getter phone_code_hash : Bytes

      def initialize(
        phone_number : Bytes | String | IO,
        phone_code_hash : Bytes | String | IO
      )
        @phone_number = TL::Utils.parse_bytes!(phone_number)
        @phone_code_hash = TL::Utils.parse_bytes!(phone_code_hash)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @phone_number.tl_serialize(io)
        @phone_code_hash.tl_serialize(io)
      end

      def self.return_type
        Bool
      end
    end

    class DropTempAuthKeys < TLRequest
      getter constructor_id : UInt32 = 0x8E48A188_u32
      class_getter constructor_id : UInt32 = 0x8E48A188_u32

      getter except_auth_keys : Array(Int64)

      def initialize(
        except_auth_keys : Array(Int64)
      )
        @except_auth_keys = except_auth_keys
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @except_auth_keys.tl_serialize(io)
      end

      def self.return_type
        Bool
      end
    end

    class ExportLoginToken < TLRequest
      getter constructor_id : UInt32 = 0xB7E085FE_u32
      class_getter constructor_id : UInt32 = 0xB7E085FE_u32

      getter api_id : Int32
      getter api_hash : Bytes
      getter except_ids : Array(Int64)

      def initialize(
        api_id : Int32,
        api_hash : Bytes | String | IO,
        except_ids : Array(Int64)
      )
        @api_id = TL::Utils.parse_int!(api_id, Int32)
        @api_hash = TL::Utils.parse_bytes!(api_hash)
        @except_ids = except_ids
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @api_id.tl_serialize(io)
        @api_hash.tl_serialize(io)
        @except_ids.tl_serialize(io)
      end

      def self.return_type
        Auth::TypeLoginToken
      end
    end

    class ImportLoginToken < TLRequest
      getter constructor_id : UInt32 = 0x95AC5CE4_u32
      class_getter constructor_id : UInt32 = 0x95AC5CE4_u32

      getter token : Bytes

      def initialize(
        token : Bytes | String | IO
      )
        @token = TL::Utils.parse_bytes!(token)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @token.tl_serialize(io)
      end

      def self.return_type
        Auth::TypeLoginToken
      end
    end

    class AcceptLoginToken < TLRequest
      getter constructor_id : UInt32 = 0xE894AD4D_u32
      class_getter constructor_id : UInt32 = 0xE894AD4D_u32

      getter token : Bytes

      def initialize(
        token : Bytes | String | IO
      )
        @token = TL::Utils.parse_bytes!(token)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @token.tl_serialize(io)
      end

      def self.return_type
        Root::TypeAuthorization
      end
    end

    class CheckRecoveryPassword < TLRequest
      getter constructor_id : UInt32 = 0x0D36BF79_u32
      class_getter constructor_id : UInt32 = 0x0D36BF79_u32

      getter code : Bytes

      def initialize(
        code : Bytes | String | IO
      )
        @code = TL::Utils.parse_bytes!(code)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @code.tl_serialize(io)
      end

      def self.return_type
        Bool
      end
    end
  end
end
