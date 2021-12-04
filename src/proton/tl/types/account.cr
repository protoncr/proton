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
require "./auth"

module Proton::TL
  module Account
    abstract class TypePrivacyRules < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x50A04E45
          PrivacyRules.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeAuthorizations < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x4BFF8EA0
          Authorizations.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePassword < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x185B184F
          Password.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePasswordSettings < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x9A5C33E5
          PasswordSettings.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePasswordInputSettings < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xC23727C9
          PasswordInputSettings.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeTmpPassword < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xDB64FD34
          TmpPassword.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeWebAuthorizations < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xED56C9FC
          WebAuthorizations.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeAuthorizationForm < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xAD2E1CD8
          AuthorizationForm.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeSentEmailCode < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x811F854F
          SentEmailCode.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeTakeout < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x4DBA4501
          Takeout.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeWallPapers < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x1C199183
          WallPapersNotModified.tl_deserialize(io, bare)
        when 0xCDC3858C
          WallPapers.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeAutoDownloadSettings < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x63CACF26
          AutoDownloadSettings.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeThemes < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xF41EB622
          ThemesNotModified.tl_deserialize(io, bare)
        when 0x9A3D8C6D
          Themes.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeContentSettings < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x57E28221
          ContentSettings.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeResetPasswordResult < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xE3779861
          ResetPasswordFailedWait.tl_deserialize(io, bare)
        when 0xE9EFFC7D
          ResetPasswordRequestedWait.tl_deserialize(io, bare)
        when 0xE926D63E
          ResetPasswordOk.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePeerNotifySettings < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeUser < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeAccountDaysTTL < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeSentCode < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeSecureValue < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeUpdates < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeWallPaper < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeDocument < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeTheme < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeGlobalPrivacySettings < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    class PrivacyRules < TypePrivacyRules
      getter constructor_id : UInt32 = 0x50A04E45_u32
      class_getter constructor_id : UInt32 = 0x50A04E45_u32

      getter rules : Array(Root::TypePrivacyRule)
      getter chats : Array(Root::TypeChat)
      getter users : Array(Root::TypeUser)

      def initialize(
        rules : Array(Root::TypePrivacyRule),
        chats : Array(Root::TypeChat),
        users : Array(Root::TypeUser)
      )
        @rules = rules
        @chats = chats
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @rules.tl_serialize(io)
        @chats.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          rules: Array(Root::TypePrivacyRule).tl_deserialize(io),
          chats: Array(Root::TypeChat).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
        )
      end
    end

    class Authorizations < TypeAuthorizations
      getter constructor_id : UInt32 = 0x4BFF8EA0_u32
      class_getter constructor_id : UInt32 = 0x4BFF8EA0_u32

      getter authorization_ttl_days : Int32
      getter authorizations : Array(Root::TypeAuthorization)

      def initialize(
        authorization_ttl_days : Int32,
        authorizations : Array(Root::TypeAuthorization)
      )
        @authorization_ttl_days = TL::Utils.parse_int!(authorization_ttl_days, Int32)
        @authorizations = authorizations
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @authorization_ttl_days.tl_serialize(io)
        @authorizations.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          authorization_ttl_days: Int32.tl_deserialize(io),
          authorizations: Array(Root::TypeAuthorization).tl_deserialize(io),
        )
      end
    end

    class Password < TypePassword
      getter constructor_id : UInt32 = 0x185B184F_u32
      class_getter constructor_id : UInt32 = 0x185B184F_u32

      getter new_algo : Root::TypePasswordKdfAlgo
      getter new_secure_algo : Root::TypeSecurePasswordKdfAlgo
      getter secure_random : Bytes
      getter has_recovery : Bool | Nil
      getter has_secure_values : Bool | Nil
      getter has_password : Bool | Nil
      getter current_algo : Root::TypePasswordKdfAlgo | Nil
      getter srp_b : Bytes | Nil
      getter srp_id : Int64 | Nil
      getter hint : Bytes | Nil
      getter email_unconfirmed_pattern : Bytes | Nil
      getter pending_reset_date : Int32 | Nil

      def initialize(
        new_algo : Root::TypePasswordKdfAlgo,
        new_secure_algo : Root::TypeSecurePasswordKdfAlgo,
        secure_random : Bytes | String | IO,
        has_recovery : Bool | Nil = nil,
        has_secure_values : Bool | Nil = nil,
        has_password : Bool | Nil = nil,
        current_algo : Root::TypePasswordKdfAlgo | Nil = nil,
        srp_b : Bytes | Nil = nil,
        srp_id : Int64 | Nil = nil,
        hint : Bytes | Nil = nil,
        email_unconfirmed_pattern : Bytes | Nil = nil,
        pending_reset_date : Int32 | Nil = nil
      )
        @new_algo = new_algo
        @new_secure_algo = new_secure_algo
        @secure_random = TL::Utils.parse_bytes!(secure_random)
        @has_recovery = has_recovery
        @has_secure_values = has_secure_values
        @has_password = has_password
        @current_algo = current_algo
        @srp_b = TL::Utils.parse_bytes(srp_b)
        @srp_id = srp_id
        @hint = TL::Utils.parse_bytes(hint)
        @email_unconfirmed_pattern = TL::Utils.parse_bytes(email_unconfirmed_pattern)
        @pending_reset_date = TL::Utils.parse_int(pending_reset_date, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!has_recovery.nil? ? 0x01 : 0) |
            (!has_secure_values.nil? ? 0x02 : 0) |
            (!has_password.nil? ? 0x04 : 0) |
            (!current_algo.nil? ? 0x04 : 0) |
            (!srp_b.nil? ? 0x04 : 0) |
            (!srp_id.nil? ? 0x04 : 0) |
            (!hint.nil? ? 0x08 : 0) |
            (!email_unconfirmed_pattern.nil? ? 0x10 : 0) |
            (!pending_reset_date.nil? ? 0x20 : 0)
        ).tl_serialize(io)
        @current_algo.tl_serialize(io) unless @current_algo.nil?
        @srp_b.tl_serialize(io) unless @srp_b.nil?
        @srp_id.tl_serialize(io) unless @srp_id.nil?
        @hint.tl_serialize(io) unless @hint.nil?
        @email_unconfirmed_pattern.tl_serialize(io) unless @email_unconfirmed_pattern.nil?
        @new_algo.tl_serialize(io)
        @new_secure_algo.tl_serialize(io)
        @secure_random.tl_serialize(io)
        @pending_reset_date.tl_serialize(io) unless @pending_reset_date.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        flags = UInt32.tl_deserialize(io)
        new(
          new_algo: Root::TypePasswordKdfAlgo.tl_deserialize(io),
          new_secure_algo: Root::TypeSecurePasswordKdfAlgo.tl_deserialize(io),
          secure_random: Bytes.tl_deserialize(io),
          has_recovery: flags & 0x01 > 0 || nil,
          has_secure_values: flags & 0x02 > 0 || nil,
          has_password: flags & 0x04 > 0 || nil,
          current_algo: flags & 0x04 > 0 ? Root::TypePasswordKdfAlgo.tl_deserialize(io) : nil,
          srp_b: flags & 0x04 > 0 ? Bytes.tl_deserialize(io) : nil,
          srp_id: flags & 0x04 > 0 ? Int64.tl_deserialize(io) : nil,
          hint: flags & 0x08 > 0 ? Bytes.tl_deserialize(io) : nil,
          email_unconfirmed_pattern: flags & 0x10 > 0 ? Bytes.tl_deserialize(io) : nil,
          pending_reset_date: flags & 0x20 > 0 ? Int32.tl_deserialize(io) : nil,
        )
      end
    end

    class PasswordSettings < TypePasswordSettings
      getter constructor_id : UInt32 = 0x9A5C33E5_u32
      class_getter constructor_id : UInt32 = 0x9A5C33E5_u32

      getter email : Bytes | Nil
      getter secure_settings : Root::TypeSecureSecretSettings | Nil

      def initialize(
        email : Bytes | Nil = nil,
        secure_settings : Root::TypeSecureSecretSettings | Nil = nil
      )
        @email = TL::Utils.parse_bytes(email)
        @secure_settings = secure_settings
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!email.nil? ? 0x01 : 0) |
            (!secure_settings.nil? ? 0x02 : 0)
        ).tl_serialize(io)
        @email.tl_serialize(io) unless @email.nil?
        @secure_settings.tl_serialize(io) unless @secure_settings.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        flags = UInt32.tl_deserialize(io)
        new(
          email: flags & 0x01 > 0 ? Bytes.tl_deserialize(io) : nil,
          secure_settings: flags & 0x02 > 0 ? Root::TypeSecureSecretSettings.tl_deserialize(io) : nil,
        )
      end
    end

    class PasswordInputSettings < TypePasswordInputSettings
      getter constructor_id : UInt32 = 0xC23727C9_u32
      class_getter constructor_id : UInt32 = 0xC23727C9_u32

      getter new_algo : Root::TypePasswordKdfAlgo | Nil
      getter new_password_hash : Bytes | Nil
      getter hint : Bytes | Nil
      getter email : Bytes | Nil
      getter new_secure_settings : Root::TypeSecureSecretSettings | Nil

      def initialize(
        new_algo : Root::TypePasswordKdfAlgo | Nil = nil,
        new_password_hash : Bytes | Nil = nil,
        hint : Bytes | Nil = nil,
        email : Bytes | Nil = nil,
        new_secure_settings : Root::TypeSecureSecretSettings | Nil = nil
      )
        @new_algo = new_algo
        @new_password_hash = TL::Utils.parse_bytes(new_password_hash)
        @hint = TL::Utils.parse_bytes(hint)
        @email = TL::Utils.parse_bytes(email)
        @new_secure_settings = new_secure_settings
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!new_algo.nil? ? 0x01 : 0) |
            (!new_password_hash.nil? ? 0x01 : 0) |
            (!hint.nil? ? 0x01 : 0) |
            (!email.nil? ? 0x02 : 0) |
            (!new_secure_settings.nil? ? 0x04 : 0)
        ).tl_serialize(io)
        @new_algo.tl_serialize(io) unless @new_algo.nil?
        @new_password_hash.tl_serialize(io) unless @new_password_hash.nil?
        @hint.tl_serialize(io) unless @hint.nil?
        @email.tl_serialize(io) unless @email.nil?
        @new_secure_settings.tl_serialize(io) unless @new_secure_settings.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        flags = UInt32.tl_deserialize(io)
        new(
          new_algo: flags & 0x01 > 0 ? Root::TypePasswordKdfAlgo.tl_deserialize(io) : nil,
          new_password_hash: flags & 0x01 > 0 ? Bytes.tl_deserialize(io) : nil,
          hint: flags & 0x01 > 0 ? Bytes.tl_deserialize(io) : nil,
          email: flags & 0x02 > 0 ? Bytes.tl_deserialize(io) : nil,
          new_secure_settings: flags & 0x04 > 0 ? Root::TypeSecureSecretSettings.tl_deserialize(io) : nil,
        )
      end
    end

    class TmpPassword < TypeTmpPassword
      getter constructor_id : UInt32 = 0xDB64FD34_u32
      class_getter constructor_id : UInt32 = 0xDB64FD34_u32

      getter tmp_password : Bytes
      getter valid_until : Int32

      def initialize(
        tmp_password : Bytes | String | IO,
        valid_until : Int32
      )
        @tmp_password = TL::Utils.parse_bytes!(tmp_password)
        @valid_until = TL::Utils.parse_int!(valid_until, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @tmp_password.tl_serialize(io)
        @valid_until.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          tmp_password: Bytes.tl_deserialize(io),
          valid_until: Int32.tl_deserialize(io),
        )
      end
    end

    class WebAuthorizations < TypeWebAuthorizations
      getter constructor_id : UInt32 = 0xED56C9FC_u32
      class_getter constructor_id : UInt32 = 0xED56C9FC_u32

      getter authorizations : Array(Root::TypeWebAuthorization)
      getter users : Array(Root::TypeUser)

      def initialize(
        authorizations : Array(Root::TypeWebAuthorization),
        users : Array(Root::TypeUser)
      )
        @authorizations = authorizations
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @authorizations.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          authorizations: Array(Root::TypeWebAuthorization).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
        )
      end
    end

    class AuthorizationForm < TypeAuthorizationForm
      getter constructor_id : UInt32 = 0xAD2E1CD8_u32
      class_getter constructor_id : UInt32 = 0xAD2E1CD8_u32

      getter required_types : Array(Root::TypeSecureRequiredType)
      getter values : Array(Root::TypeSecureValue)
      getter errors : Array(Root::TypeSecureValueError)
      getter users : Array(Root::TypeUser)
      getter privacy_policy_url : Bytes | Nil

      def initialize(
        required_types : Array(Root::TypeSecureRequiredType),
        values : Array(Root::TypeSecureValue),
        errors : Array(Root::TypeSecureValueError),
        users : Array(Root::TypeUser),
        privacy_policy_url : Bytes | Nil = nil
      )
        @required_types = required_types
        @values = values
        @errors = errors
        @users = users
        @privacy_policy_url = TL::Utils.parse_bytes(privacy_policy_url)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!privacy_policy_url.nil? ? 0x01 : 0)
        ).tl_serialize(io)
        @required_types.tl_serialize(io)
        @values.tl_serialize(io)
        @errors.tl_serialize(io)
        @users.tl_serialize(io)
        @privacy_policy_url.tl_serialize(io) unless @privacy_policy_url.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        flags = UInt32.tl_deserialize(io)
        new(
          required_types: Array(Root::TypeSecureRequiredType).tl_deserialize(io),
          values: Array(Root::TypeSecureValue).tl_deserialize(io),
          errors: Array(Root::TypeSecureValueError).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
          privacy_policy_url: flags & 0x01 > 0 ? Bytes.tl_deserialize(io) : nil,
        )
      end
    end

    class SentEmailCode < TypeSentEmailCode
      getter constructor_id : UInt32 = 0x811F854F_u32
      class_getter constructor_id : UInt32 = 0x811F854F_u32

      getter email_pattern : Bytes
      getter length : Int32

      def initialize(
        email_pattern : Bytes | String | IO,
        length : Int32
      )
        @email_pattern = TL::Utils.parse_bytes!(email_pattern)
        @length = TL::Utils.parse_int!(length, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @email_pattern.tl_serialize(io)
        @length.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          email_pattern: Bytes.tl_deserialize(io),
          length: Int32.tl_deserialize(io),
        )
      end
    end

    class Takeout < TypeTakeout
      getter constructor_id : UInt32 = 0x4DBA4501_u32
      class_getter constructor_id : UInt32 = 0x4DBA4501_u32

      getter id : Int64

      def initialize(
        id : Int64
      )
        @id = id
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @id.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          id: Int64.tl_deserialize(io),
        )
      end
    end

    class WallPapersNotModified < TypeWallPapers
      getter constructor_id : UInt32 = 0x1C199183_u32
      class_getter constructor_id : UInt32 = 0x1C199183_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new()
      end
    end

    class WallPapers < TypeWallPapers
      getter constructor_id : UInt32 = 0xCDC3858C_u32
      class_getter constructor_id : UInt32 = 0xCDC3858C_u32

      getter hash : Int64
      getter wallpapers : Array(Root::TypeWallPaper)

      def initialize(
        hash : Int64,
        wallpapers : Array(Root::TypeWallPaper)
      )
        @hash = hash
        @wallpapers = wallpapers
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @hash.tl_serialize(io)
        @wallpapers.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          hash: Int64.tl_deserialize(io),
          wallpapers: Array(Root::TypeWallPaper).tl_deserialize(io),
        )
      end
    end

    class AutoDownloadSettings < TypeAutoDownloadSettings
      getter constructor_id : UInt32 = 0x63CACF26_u32
      class_getter constructor_id : UInt32 = 0x63CACF26_u32

      getter low : Root::TypeAutoDownloadSettings
      getter medium : Root::TypeAutoDownloadSettings
      getter high : Root::TypeAutoDownloadSettings

      def initialize(
        low : Root::TypeAutoDownloadSettings,
        medium : Root::TypeAutoDownloadSettings,
        high : Root::TypeAutoDownloadSettings
      )
        @low = low
        @medium = medium
        @high = high
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @low.tl_serialize(io)
        @medium.tl_serialize(io)
        @high.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          low: Root::TypeAutoDownloadSettings.tl_deserialize(io),
          medium: Root::TypeAutoDownloadSettings.tl_deserialize(io),
          high: Root::TypeAutoDownloadSettings.tl_deserialize(io),
        )
      end
    end

    class ThemesNotModified < TypeThemes
      getter constructor_id : UInt32 = 0xF41EB622_u32
      class_getter constructor_id : UInt32 = 0xF41EB622_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new()
      end
    end

    class Themes < TypeThemes
      getter constructor_id : UInt32 = 0x9A3D8C6D_u32
      class_getter constructor_id : UInt32 = 0x9A3D8C6D_u32

      getter hash : Int64
      getter themes : Array(Root::TypeTheme)

      def initialize(
        hash : Int64,
        themes : Array(Root::TypeTheme)
      )
        @hash = hash
        @themes = themes
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @hash.tl_serialize(io)
        @themes.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          hash: Int64.tl_deserialize(io),
          themes: Array(Root::TypeTheme).tl_deserialize(io),
        )
      end
    end

    class ContentSettings < TypeContentSettings
      getter constructor_id : UInt32 = 0x57E28221_u32
      class_getter constructor_id : UInt32 = 0x57E28221_u32

      getter sensitive_enabled : Bool | Nil
      getter sensitive_can_change : Bool | Nil

      def initialize(
        sensitive_enabled : Bool | Nil = nil,
        sensitive_can_change : Bool | Nil = nil
      )
        @sensitive_enabled = sensitive_enabled
        @sensitive_can_change = sensitive_can_change
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!sensitive_enabled.nil? ? 0x01 : 0) |
            (!sensitive_can_change.nil? ? 0x02 : 0)
        ).tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        flags = UInt32.tl_deserialize(io)
        new(
          sensitive_enabled: flags & 0x01 > 0 || nil,
          sensitive_can_change: flags & 0x02 > 0 || nil,
        )
      end
    end

    class ResetPasswordFailedWait < TypeResetPasswordResult
      getter constructor_id : UInt32 = 0xE3779861_u32
      class_getter constructor_id : UInt32 = 0xE3779861_u32

      getter retry_date : Int32

      def initialize(
        retry_date : Int32
      )
        @retry_date = TL::Utils.parse_int!(retry_date, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @retry_date.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          retry_date: Int32.tl_deserialize(io),
        )
      end
    end

    class ResetPasswordRequestedWait < TypeResetPasswordResult
      getter constructor_id : UInt32 = 0xE9EFFC7D_u32
      class_getter constructor_id : UInt32 = 0xE9EFFC7D_u32

      getter until_date : Int32

      def initialize(
        until_date : Int32
      )
        @until_date = TL::Utils.parse_int!(until_date, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @until_date.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          until_date: Int32.tl_deserialize(io),
        )
      end
    end

    class ResetPasswordOk < TypeResetPasswordResult
      getter constructor_id : UInt32 = 0xE926D63E_u32
      class_getter constructor_id : UInt32 = 0xE926D63E_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new()
      end
    end

    class RegisterDevice < TLRequest
      getter constructor_id : UInt32 = 0xEC86017A_u32
      class_getter constructor_id : UInt32 = 0xEC86017A_u32

      getter token_type : Int32
      getter token : Bytes
      getter app_sandbox : Bool
      getter secret : Bytes
      getter other_uids : Array(Int64)
      getter no_muted : Bool | Nil

      def initialize(
        token_type : Int32,
        token : Bytes | String | IO,
        app_sandbox : Bool,
        secret : Bytes | String | IO,
        other_uids : Array(Int64),
        no_muted : Bool | Nil = nil
      )
        @token_type = TL::Utils.parse_int!(token_type, Int32)
        @token = TL::Utils.parse_bytes!(token)
        @app_sandbox = app_sandbox
        @secret = TL::Utils.parse_bytes!(secret)
        @other_uids = other_uids
        @no_muted = no_muted
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!no_muted.nil? ? 0x01 : 0)
        ).tl_serialize(io)
        @token_type.tl_serialize(io)
        @token.tl_serialize(io)
        @app_sandbox.tl_serialize(io)
        @secret.tl_serialize(io)
        @other_uids.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class UnregisterDevice < TLRequest
      getter constructor_id : UInt32 = 0x6A0D3206_u32
      class_getter constructor_id : UInt32 = 0x6A0D3206_u32

      getter token_type : Int32
      getter token : Bytes
      getter other_uids : Array(Int64)

      def initialize(
        token_type : Int32,
        token : Bytes | String | IO,
        other_uids : Array(Int64)
      )
        @token_type = TL::Utils.parse_int!(token_type, Int32)
        @token = TL::Utils.parse_bytes!(token)
        @other_uids = other_uids
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @token_type.tl_serialize(io)
        @token.tl_serialize(io)
        @other_uids.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class UpdateNotifySettings < TLRequest
      getter constructor_id : UInt32 = 0x84BE5B93_u32
      class_getter constructor_id : UInt32 = 0x84BE5B93_u32

      getter peer : Root::TypeInputNotifyPeer
      getter settings : Root::TypeInputPeerNotifySettings

      def initialize(
        peer : Root::TypeInputNotifyPeer,
        settings : Root::TypeInputPeerNotifySettings
      )
        @peer = peer
        @settings = settings
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @settings.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class GetNotifySettings < TLRequest
      getter constructor_id : UInt32 = 0x12B3AD31_u32
      class_getter constructor_id : UInt32 = 0x12B3AD31_u32

      getter peer : Root::TypeInputNotifyPeer

      def initialize(
        peer : Root::TypeInputNotifyPeer
      )
        @peer = peer
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypePeerNotifySettings
      end
    end

    class ResetNotifySettings < TLRequest
      getter constructor_id : UInt32 = 0xDB7E1747_u32
      class_getter constructor_id : UInt32 = 0xDB7E1747_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class UpdateProfile < TLRequest
      getter constructor_id : UInt32 = 0x78515775_u32
      class_getter constructor_id : UInt32 = 0x78515775_u32

      getter first_name : Bytes | Nil
      getter last_name : Bytes | Nil
      getter about : Bytes | Nil

      def initialize(
        first_name : Bytes | Nil = nil,
        last_name : Bytes | Nil = nil,
        about : Bytes | Nil = nil
      )
        @first_name = TL::Utils.parse_bytes(first_name)
        @last_name = TL::Utils.parse_bytes(last_name)
        @about = TL::Utils.parse_bytes(about)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!first_name.nil? ? 0x01 : 0) |
            (!last_name.nil? ? 0x02 : 0) |
            (!about.nil? ? 0x04 : 0)
        ).tl_serialize(io)
        @first_name.tl_serialize(io) unless @first_name.nil?
        @last_name.tl_serialize(io) unless @last_name.nil?
        @about.tl_serialize(io) unless @about.nil?
      end

      def self.return_type : Deserializable
        Root::TypeUser
      end
    end

    class UpdateStatus < TLRequest
      getter constructor_id : UInt32 = 0x6628562C_u32
      class_getter constructor_id : UInt32 = 0x6628562C_u32

      getter offline : Bool

      def initialize(
        offline : Bool
      )
        @offline = offline
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @offline.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class GetWallPapers < TLRequest
      getter constructor_id : UInt32 = 0x07967D36_u32
      class_getter constructor_id : UInt32 = 0x07967D36_u32

      getter hash : Int64

      def initialize(
        hash : Int64
      )
        @hash = hash
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @hash.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Account::TypeWallPapers
      end
    end

    class ReportPeer < TLRequest
      getter constructor_id : UInt32 = 0xC5BA3D86_u32
      class_getter constructor_id : UInt32 = 0xC5BA3D86_u32

      getter peer : Root::TypeInputPeer
      getter reason : Root::TypeReportReason
      getter message : Bytes

      def initialize(
        peer : Root::TypeInputPeer,
        reason : Root::TypeReportReason,
        message : Bytes | String | IO
      )
        @peer = peer
        @reason = reason
        @message = TL::Utils.parse_bytes!(message)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @reason.tl_serialize(io)
        @message.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class CheckUsername < TLRequest
      getter constructor_id : UInt32 = 0x2714D86C_u32
      class_getter constructor_id : UInt32 = 0x2714D86C_u32

      getter username : Bytes

      def initialize(
        username : Bytes | String | IO
      )
        @username = TL::Utils.parse_bytes!(username)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @username.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class UpdateUsername < TLRequest
      getter constructor_id : UInt32 = 0x3E0BDD7C_u32
      class_getter constructor_id : UInt32 = 0x3E0BDD7C_u32

      getter username : Bytes

      def initialize(
        username : Bytes | String | IO
      )
        @username = TL::Utils.parse_bytes!(username)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @username.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeUser
      end
    end

    class GetPrivacy < TLRequest
      getter constructor_id : UInt32 = 0xDADBC950_u32
      class_getter constructor_id : UInt32 = 0xDADBC950_u32

      getter key : Root::TypeInputPrivacyKey

      def initialize(
        key : Root::TypeInputPrivacyKey
      )
        @key = key
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @key.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Account::TypePrivacyRules
      end
    end

    class SetPrivacy < TLRequest
      getter constructor_id : UInt32 = 0xC9F81CE8_u32
      class_getter constructor_id : UInt32 = 0xC9F81CE8_u32

      getter key : Root::TypeInputPrivacyKey
      getter rules : Array(Root::TypeInputPrivacyRule)

      def initialize(
        key : Root::TypeInputPrivacyKey,
        rules : Array(Root::TypeInputPrivacyRule)
      )
        @key = key
        @rules = rules
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @key.tl_serialize(io)
        @rules.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Account::TypePrivacyRules
      end
    end

    class DeleteAccount < TLRequest
      getter constructor_id : UInt32 = 0x418D4E0B_u32
      class_getter constructor_id : UInt32 = 0x418D4E0B_u32

      getter reason : Bytes

      def initialize(
        reason : Bytes | String | IO
      )
        @reason = TL::Utils.parse_bytes!(reason)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @reason.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class GetAccountTTL < TLRequest
      getter constructor_id : UInt32 = 0x08FC711D_u32
      class_getter constructor_id : UInt32 = 0x08FC711D_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.return_type : Deserializable
        Root::TypeAccountDaysTTL
      end
    end

    class SetAccountTTL < TLRequest
      getter constructor_id : UInt32 = 0x2442485E_u32
      class_getter constructor_id : UInt32 = 0x2442485E_u32

      getter ttl : Root::TypeAccountDaysTTL

      def initialize(
        ttl : Root::TypeAccountDaysTTL
      )
        @ttl = ttl
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @ttl.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class SendChangePhoneCode < TLRequest
      getter constructor_id : UInt32 = 0x82574AE5_u32
      class_getter constructor_id : UInt32 = 0x82574AE5_u32

      getter phone_number : Bytes
      getter settings : Root::TypeCodeSettings

      def initialize(
        phone_number : Bytes | String | IO,
        settings : Root::TypeCodeSettings
      )
        @phone_number = TL::Utils.parse_bytes!(phone_number)
        @settings = settings
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @phone_number.tl_serialize(io)
        @settings.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Auth::TypeSentCode
      end
    end

    class ChangePhone < TLRequest
      getter constructor_id : UInt32 = 0x70C32EDB_u32
      class_getter constructor_id : UInt32 = 0x70C32EDB_u32

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

      def self.return_type : Deserializable
        Root::TypeUser
      end
    end

    class UpdateDeviceLocked < TLRequest
      getter constructor_id : UInt32 = 0x38DF3532_u32
      class_getter constructor_id : UInt32 = 0x38DF3532_u32

      getter period : Int32

      def initialize(
        period : Int32
      )
        @period = TL::Utils.parse_int!(period, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @period.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class GetAuthorizations < TLRequest
      getter constructor_id : UInt32 = 0xE320C158_u32
      class_getter constructor_id : UInt32 = 0xE320C158_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.return_type : Deserializable
        Account::TypeAuthorizations
      end
    end

    class ResetAuthorization < TLRequest
      getter constructor_id : UInt32 = 0xDF77F3BC_u32
      class_getter constructor_id : UInt32 = 0xDF77F3BC_u32

      getter hash : Int64

      def initialize(
        hash : Int64
      )
        @hash = hash
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @hash.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class GetPassword < TLRequest
      getter constructor_id : UInt32 = 0x548A30F5_u32
      class_getter constructor_id : UInt32 = 0x548A30F5_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.return_type : Deserializable
        Account::TypePassword
      end
    end

    class GetPasswordSettings < TLRequest
      getter constructor_id : UInt32 = 0x9CD4EAF9_u32
      class_getter constructor_id : UInt32 = 0x9CD4EAF9_u32

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

      def self.return_type : Deserializable
        Account::TypePasswordSettings
      end
    end

    class UpdatePasswordSettings < TLRequest
      getter constructor_id : UInt32 = 0xA59B102F_u32
      class_getter constructor_id : UInt32 = 0xA59B102F_u32

      getter password : Root::TypeInputCheckPasswordSRP
      getter new_settings : Account::TypePasswordInputSettings

      def initialize(
        password : Root::TypeInputCheckPasswordSRP,
        new_settings : Account::TypePasswordInputSettings
      )
        @password = password
        @new_settings = new_settings
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @password.tl_serialize(io)
        @new_settings.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class SendConfirmPhoneCode < TLRequest
      getter constructor_id : UInt32 = 0x1B3FAA88_u32
      class_getter constructor_id : UInt32 = 0x1B3FAA88_u32

      getter hash : Bytes
      getter settings : Root::TypeCodeSettings

      def initialize(
        hash : Bytes | String | IO,
        settings : Root::TypeCodeSettings
      )
        @hash = TL::Utils.parse_bytes!(hash)
        @settings = settings
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @hash.tl_serialize(io)
        @settings.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Auth::TypeSentCode
      end
    end

    class ConfirmPhone < TLRequest
      getter constructor_id : UInt32 = 0x5F2178C3_u32
      class_getter constructor_id : UInt32 = 0x5F2178C3_u32

      getter phone_code_hash : Bytes
      getter phone_code : Bytes

      def initialize(
        phone_code_hash : Bytes | String | IO,
        phone_code : Bytes | String | IO
      )
        @phone_code_hash = TL::Utils.parse_bytes!(phone_code_hash)
        @phone_code = TL::Utils.parse_bytes!(phone_code)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @phone_code_hash.tl_serialize(io)
        @phone_code.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class GetTmpPassword < TLRequest
      getter constructor_id : UInt32 = 0x449E0B51_u32
      class_getter constructor_id : UInt32 = 0x449E0B51_u32

      getter password : Root::TypeInputCheckPasswordSRP
      getter period : Int32

      def initialize(
        password : Root::TypeInputCheckPasswordSRP,
        period : Int32
      )
        @password = password
        @period = TL::Utils.parse_int!(period, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @password.tl_serialize(io)
        @period.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Account::TypeTmpPassword
      end
    end

    class GetWebAuthorizations < TLRequest
      getter constructor_id : UInt32 = 0x182E6D6F_u32
      class_getter constructor_id : UInt32 = 0x182E6D6F_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.return_type : Deserializable
        Account::TypeWebAuthorizations
      end
    end

    class ResetWebAuthorization < TLRequest
      getter constructor_id : UInt32 = 0x2D01B9EF_u32
      class_getter constructor_id : UInt32 = 0x2D01B9EF_u32

      getter hash : Int64

      def initialize(
        hash : Int64
      )
        @hash = hash
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @hash.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class ResetWebAuthorizations < TLRequest
      getter constructor_id : UInt32 = 0x682D2594_u32
      class_getter constructor_id : UInt32 = 0x682D2594_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class GetAllSecureValues < TLRequest
      getter constructor_id : UInt32 = 0xB288BC7D_u32
      class_getter constructor_id : UInt32 = 0xB288BC7D_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.return_type : Deserializable
        Array(Root::TypeSecureValue)
      end
    end

    class GetSecureValue < TLRequest
      getter constructor_id : UInt32 = 0x73665BC2_u32
      class_getter constructor_id : UInt32 = 0x73665BC2_u32

      getter types : Array(Root::TypeSecureValueType)

      def initialize(
        types : Array(Root::TypeSecureValueType)
      )
        @types = types
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @types.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Array(Root::TypeSecureValue)
      end
    end

    class SaveSecureValue < TLRequest
      getter constructor_id : UInt32 = 0x899FE31D_u32
      class_getter constructor_id : UInt32 = 0x899FE31D_u32

      getter value : Root::TypeInputSecureValue
      getter secure_secret_id : Int64

      def initialize(
        value : Root::TypeInputSecureValue,
        secure_secret_id : Int64
      )
        @value = value
        @secure_secret_id = secure_secret_id
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @value.tl_serialize(io)
        @secure_secret_id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeSecureValue
      end
    end

    class DeleteSecureValue < TLRequest
      getter constructor_id : UInt32 = 0xB880BC4B_u32
      class_getter constructor_id : UInt32 = 0xB880BC4B_u32

      getter types : Array(Root::TypeSecureValueType)

      def initialize(
        types : Array(Root::TypeSecureValueType)
      )
        @types = types
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @types.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class GetAuthorizationForm < TLRequest
      getter constructor_id : UInt32 = 0xA929597A_u32
      class_getter constructor_id : UInt32 = 0xA929597A_u32

      getter bot_id : Int64
      getter scope : Bytes
      getter public_key : Bytes

      def initialize(
        bot_id : Int64,
        scope : Bytes | String | IO,
        public_key : Bytes | String | IO
      )
        @bot_id = bot_id
        @scope = TL::Utils.parse_bytes!(scope)
        @public_key = TL::Utils.parse_bytes!(public_key)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @bot_id.tl_serialize(io)
        @scope.tl_serialize(io)
        @public_key.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Account::TypeAuthorizationForm
      end
    end

    class AcceptAuthorization < TLRequest
      getter constructor_id : UInt32 = 0xF3ED4C73_u32
      class_getter constructor_id : UInt32 = 0xF3ED4C73_u32

      getter bot_id : Int64
      getter scope : Bytes
      getter public_key : Bytes
      getter value_hashes : Array(Root::TypeSecureValueHash)
      getter credentials : Root::TypeSecureCredentialsEncrypted

      def initialize(
        bot_id : Int64,
        scope : Bytes | String | IO,
        public_key : Bytes | String | IO,
        value_hashes : Array(Root::TypeSecureValueHash),
        credentials : Root::TypeSecureCredentialsEncrypted
      )
        @bot_id = bot_id
        @scope = TL::Utils.parse_bytes!(scope)
        @public_key = TL::Utils.parse_bytes!(public_key)
        @value_hashes = value_hashes
        @credentials = credentials
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @bot_id.tl_serialize(io)
        @scope.tl_serialize(io)
        @public_key.tl_serialize(io)
        @value_hashes.tl_serialize(io)
        @credentials.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class SendVerifyPhoneCode < TLRequest
      getter constructor_id : UInt32 = 0xA5A356F9_u32
      class_getter constructor_id : UInt32 = 0xA5A356F9_u32

      getter phone_number : Bytes
      getter settings : Root::TypeCodeSettings

      def initialize(
        phone_number : Bytes | String | IO,
        settings : Root::TypeCodeSettings
      )
        @phone_number = TL::Utils.parse_bytes!(phone_number)
        @settings = settings
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @phone_number.tl_serialize(io)
        @settings.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Auth::TypeSentCode
      end
    end

    class VerifyPhone < TLRequest
      getter constructor_id : UInt32 = 0x4DD3A7F6_u32
      class_getter constructor_id : UInt32 = 0x4DD3A7F6_u32

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

      def self.return_type : Deserializable
        Bool
      end
    end

    class SendVerifyEmailCode < TLRequest
      getter constructor_id : UInt32 = 0x7011509F_u32
      class_getter constructor_id : UInt32 = 0x7011509F_u32

      getter email : Bytes

      def initialize(
        email : Bytes | String | IO
      )
        @email = TL::Utils.parse_bytes!(email)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @email.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Account::TypeSentEmailCode
      end
    end

    class VerifyEmail < TLRequest
      getter constructor_id : UInt32 = 0xECBA39DB_u32
      class_getter constructor_id : UInt32 = 0xECBA39DB_u32

      getter email : Bytes
      getter code : Bytes

      def initialize(
        email : Bytes | String | IO,
        code : Bytes | String | IO
      )
        @email = TL::Utils.parse_bytes!(email)
        @code = TL::Utils.parse_bytes!(code)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @email.tl_serialize(io)
        @code.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class InitTakeoutSession < TLRequest
      getter constructor_id : UInt32 = 0xF05B4804_u32
      class_getter constructor_id : UInt32 = 0xF05B4804_u32

      getter contacts : Bool | Nil
      getter message_users : Bool | Nil
      getter message_chats : Bool | Nil
      getter message_megagroups : Bool | Nil
      getter message_channels : Bool | Nil
      getter files : Bool | Nil
      getter file_max_size : Int32 | Nil

      def initialize(
        contacts : Bool | Nil = nil,
        message_users : Bool | Nil = nil,
        message_chats : Bool | Nil = nil,
        message_megagroups : Bool | Nil = nil,
        message_channels : Bool | Nil = nil,
        files : Bool | Nil = nil,
        file_max_size : Int32 | Nil = nil
      )
        @contacts = contacts
        @message_users = message_users
        @message_chats = message_chats
        @message_megagroups = message_megagroups
        @message_channels = message_channels
        @files = files
        @file_max_size = TL::Utils.parse_int(file_max_size, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!contacts.nil? ? 0x01 : 0) |
            (!message_users.nil? ? 0x02 : 0) |
            (!message_chats.nil? ? 0x04 : 0) |
            (!message_megagroups.nil? ? 0x08 : 0) |
            (!message_channels.nil? ? 0x10 : 0) |
            (!files.nil? ? 0x20 : 0) |
            (!file_max_size.nil? ? 0x20 : 0)
        ).tl_serialize(io)
        @file_max_size.tl_serialize(io) unless @file_max_size.nil?
      end

      def self.return_type : Deserializable
        Account::TypeTakeout
      end
    end

    class FinishTakeoutSession < TLRequest
      getter constructor_id : UInt32 = 0x1D2652EE_u32
      class_getter constructor_id : UInt32 = 0x1D2652EE_u32

      getter success : Bool | Nil

      def initialize(
        success : Bool | Nil = nil
      )
        @success = success
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!success.nil? ? 0x01 : 0)
        ).tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class ConfirmPasswordEmail < TLRequest
      getter constructor_id : UInt32 = 0x8FDF1920_u32
      class_getter constructor_id : UInt32 = 0x8FDF1920_u32

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

      def self.return_type : Deserializable
        Bool
      end
    end

    class ResendPasswordEmail < TLRequest
      getter constructor_id : UInt32 = 0x7A7F2A15_u32
      class_getter constructor_id : UInt32 = 0x7A7F2A15_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class CancelPasswordEmail < TLRequest
      getter constructor_id : UInt32 = 0xC1CBD5B6_u32
      class_getter constructor_id : UInt32 = 0xC1CBD5B6_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class GetContactSignUpNotification < TLRequest
      getter constructor_id : UInt32 = 0x9F07C728_u32
      class_getter constructor_id : UInt32 = 0x9F07C728_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class SetContactSignUpNotification < TLRequest
      getter constructor_id : UInt32 = 0xCFF43F61_u32
      class_getter constructor_id : UInt32 = 0xCFF43F61_u32

      getter silent : Bool

      def initialize(
        silent : Bool
      )
        @silent = silent
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @silent.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class GetNotifyExceptions < TLRequest
      getter constructor_id : UInt32 = 0x53577479_u32
      class_getter constructor_id : UInt32 = 0x53577479_u32

      getter compare_sound : Bool | Nil
      getter peer : Root::TypeInputNotifyPeer | Nil

      def initialize(
        compare_sound : Bool | Nil = nil,
        peer : Root::TypeInputNotifyPeer | Nil = nil
      )
        @compare_sound = compare_sound
        @peer = peer
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!compare_sound.nil? ? 0x02 : 0) |
            (!peer.nil? ? 0x01 : 0)
        ).tl_serialize(io)
        @peer.tl_serialize(io) unless @peer.nil?
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class GetWallPaper < TLRequest
      getter constructor_id : UInt32 = 0xFC8DDBEA_u32
      class_getter constructor_id : UInt32 = 0xFC8DDBEA_u32

      getter wallpaper : Root::TypeInputWallPaper

      def initialize(
        wallpaper : Root::TypeInputWallPaper
      )
        @wallpaper = wallpaper
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @wallpaper.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeWallPaper
      end
    end

    class UploadWallPaper < TLRequest
      getter constructor_id : UInt32 = 0xDD853661_u32
      class_getter constructor_id : UInt32 = 0xDD853661_u32

      getter file : Root::TypeInputFile
      getter mime_type : Bytes
      getter settings : Root::TypeWallPaperSettings

      def initialize(
        file : Root::TypeInputFile,
        mime_type : Bytes | String | IO,
        settings : Root::TypeWallPaperSettings
      )
        @file = file
        @mime_type = TL::Utils.parse_bytes!(mime_type)
        @settings = settings
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @file.tl_serialize(io)
        @mime_type.tl_serialize(io)
        @settings.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeWallPaper
      end
    end

    class SaveWallPaper < TLRequest
      getter constructor_id : UInt32 = 0x6C5A5B37_u32
      class_getter constructor_id : UInt32 = 0x6C5A5B37_u32

      getter wallpaper : Root::TypeInputWallPaper
      getter unsave : Bool
      getter settings : Root::TypeWallPaperSettings

      def initialize(
        wallpaper : Root::TypeInputWallPaper,
        unsave : Bool,
        settings : Root::TypeWallPaperSettings
      )
        @wallpaper = wallpaper
        @unsave = unsave
        @settings = settings
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @wallpaper.tl_serialize(io)
        @unsave.tl_serialize(io)
        @settings.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class InstallWallPaper < TLRequest
      getter constructor_id : UInt32 = 0xFEED5769_u32
      class_getter constructor_id : UInt32 = 0xFEED5769_u32

      getter wallpaper : Root::TypeInputWallPaper
      getter settings : Root::TypeWallPaperSettings

      def initialize(
        wallpaper : Root::TypeInputWallPaper,
        settings : Root::TypeWallPaperSettings
      )
        @wallpaper = wallpaper
        @settings = settings
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @wallpaper.tl_serialize(io)
        @settings.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class ResetWallPapers < TLRequest
      getter constructor_id : UInt32 = 0xBB3B9804_u32
      class_getter constructor_id : UInt32 = 0xBB3B9804_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class GetAutoDownloadSettings < TLRequest
      getter constructor_id : UInt32 = 0x56DA0B3F_u32
      class_getter constructor_id : UInt32 = 0x56DA0B3F_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.return_type : Deserializable
        Account::TypeAutoDownloadSettings
      end
    end

    class SaveAutoDownloadSettings < TLRequest
      getter constructor_id : UInt32 = 0x76F36233_u32
      class_getter constructor_id : UInt32 = 0x76F36233_u32

      getter settings : Root::TypeAutoDownloadSettings
      getter low : Bool | Nil
      getter high : Bool | Nil

      def initialize(
        settings : Root::TypeAutoDownloadSettings,
        low : Bool | Nil = nil,
        high : Bool | Nil = nil
      )
        @settings = settings
        @low = low
        @high = high
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!low.nil? ? 0x01 : 0) |
            (!high.nil? ? 0x02 : 0)
        ).tl_serialize(io)
        @settings.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class UploadTheme < TLRequest
      getter constructor_id : UInt32 = 0x1C3DB333_u32
      class_getter constructor_id : UInt32 = 0x1C3DB333_u32

      getter file : Root::TypeInputFile
      getter file_name : Bytes
      getter mime_type : Bytes
      getter thumb : Root::TypeInputFile | Nil

      def initialize(
        file : Root::TypeInputFile,
        file_name : Bytes | String | IO,
        mime_type : Bytes | String | IO,
        thumb : Root::TypeInputFile | Nil = nil
      )
        @file = file
        @file_name = TL::Utils.parse_bytes!(file_name)
        @mime_type = TL::Utils.parse_bytes!(mime_type)
        @thumb = thumb
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!thumb.nil? ? 0x01 : 0)
        ).tl_serialize(io)
        @file.tl_serialize(io)
        @thumb.tl_serialize(io) unless @thumb.nil?
        @file_name.tl_serialize(io)
        @mime_type.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeDocument
      end
    end

    class CreateTheme < TLRequest
      getter constructor_id : UInt32 = 0x652E4400_u32
      class_getter constructor_id : UInt32 = 0x652E4400_u32

      getter slug : Bytes
      getter title : Bytes
      getter document : Root::TypeInputDocument | Nil
      getter settings : Array(Root::TypeInputThemeSettings) | Nil

      def initialize(
        slug : Bytes | String | IO,
        title : Bytes | String | IO,
        document : Root::TypeInputDocument | Nil = nil,
        settings : Array(Root::TypeInputThemeSettings) | Nil = nil
      )
        @slug = TL::Utils.parse_bytes!(slug)
        @title = TL::Utils.parse_bytes!(title)
        @document = document
        @settings = settings
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!document.nil? ? 0x04 : 0) |
            (!settings.nil? ? 0x08 : 0)
        ).tl_serialize(io)
        @slug.tl_serialize(io)
        @title.tl_serialize(io)
        @document.tl_serialize(io) unless @document.nil?
        @settings.tl_serialize(io) unless @settings.nil?
      end

      def self.return_type : Deserializable
        Root::TypeTheme
      end
    end

    class UpdateTheme < TLRequest
      getter constructor_id : UInt32 = 0x2BF40CCC_u32
      class_getter constructor_id : UInt32 = 0x2BF40CCC_u32

      getter format : Bytes
      getter theme : Root::TypeInputTheme
      getter slug : Bytes | Nil
      getter title : Bytes | Nil
      getter document : Root::TypeInputDocument | Nil
      getter settings : Array(Root::TypeInputThemeSettings) | Nil

      def initialize(
        format : Bytes | String | IO,
        theme : Root::TypeInputTheme,
        slug : Bytes | Nil = nil,
        title : Bytes | Nil = nil,
        document : Root::TypeInputDocument | Nil = nil,
        settings : Array(Root::TypeInputThemeSettings) | Nil = nil
      )
        @format = TL::Utils.parse_bytes!(format)
        @theme = theme
        @slug = TL::Utils.parse_bytes(slug)
        @title = TL::Utils.parse_bytes(title)
        @document = document
        @settings = settings
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!slug.nil? ? 0x01 : 0) |
            (!title.nil? ? 0x02 : 0) |
            (!document.nil? ? 0x04 : 0) |
            (!settings.nil? ? 0x08 : 0)
        ).tl_serialize(io)
        @format.tl_serialize(io)
        @theme.tl_serialize(io)
        @slug.tl_serialize(io) unless @slug.nil?
        @title.tl_serialize(io) unless @title.nil?
        @document.tl_serialize(io) unless @document.nil?
        @settings.tl_serialize(io) unless @settings.nil?
      end

      def self.return_type : Deserializable
        Root::TypeTheme
      end
    end

    class SaveTheme < TLRequest
      getter constructor_id : UInt32 = 0xF257106C_u32
      class_getter constructor_id : UInt32 = 0xF257106C_u32

      getter theme : Root::TypeInputTheme
      getter unsave : Bool

      def initialize(
        theme : Root::TypeInputTheme,
        unsave : Bool
      )
        @theme = theme
        @unsave = unsave
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @theme.tl_serialize(io)
        @unsave.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class InstallTheme < TLRequest
      getter constructor_id : UInt32 = 0xC727BB3B_u32
      class_getter constructor_id : UInt32 = 0xC727BB3B_u32

      getter dark : Bool | Nil
      getter theme : Root::TypeInputTheme | Nil
      getter format : Bytes | Nil
      getter base_theme : Root::TypeBaseTheme | Nil

      def initialize(
        dark : Bool | Nil = nil,
        theme : Root::TypeInputTheme | Nil = nil,
        format : Bytes | Nil = nil,
        base_theme : Root::TypeBaseTheme | Nil = nil
      )
        @dark = dark
        @theme = theme
        @format = TL::Utils.parse_bytes(format)
        @base_theme = base_theme
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!dark.nil? ? 0x01 : 0) |
            (!theme.nil? ? 0x02 : 0) |
            (!format.nil? ? 0x04 : 0) |
            (!base_theme.nil? ? 0x08 : 0)
        ).tl_serialize(io)
        @theme.tl_serialize(io) unless @theme.nil?
        @format.tl_serialize(io) unless @format.nil?
        @base_theme.tl_serialize(io) unless @base_theme.nil?
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class GetTheme < TLRequest
      getter constructor_id : UInt32 = 0x8D9D742B_u32
      class_getter constructor_id : UInt32 = 0x8D9D742B_u32

      getter format : Bytes
      getter theme : Root::TypeInputTheme
      getter document_id : Int64

      def initialize(
        format : Bytes | String | IO,
        theme : Root::TypeInputTheme,
        document_id : Int64
      )
        @format = TL::Utils.parse_bytes!(format)
        @theme = theme
        @document_id = document_id
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @format.tl_serialize(io)
        @theme.tl_serialize(io)
        @document_id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeTheme
      end
    end

    class GetThemes < TLRequest
      getter constructor_id : UInt32 = 0x7206E458_u32
      class_getter constructor_id : UInt32 = 0x7206E458_u32

      getter format : Bytes
      getter hash : Int64

      def initialize(
        format : Bytes | String | IO,
        hash : Int64
      )
        @format = TL::Utils.parse_bytes!(format)
        @hash = hash
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @format.tl_serialize(io)
        @hash.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Account::TypeThemes
      end
    end

    class SetContentSettings < TLRequest
      getter constructor_id : UInt32 = 0xB574B16B_u32
      class_getter constructor_id : UInt32 = 0xB574B16B_u32

      getter sensitive_enabled : Bool | Nil

      def initialize(
        sensitive_enabled : Bool | Nil = nil
      )
        @sensitive_enabled = sensitive_enabled
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!sensitive_enabled.nil? ? 0x01 : 0)
        ).tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class GetContentSettings < TLRequest
      getter constructor_id : UInt32 = 0x8B9B4DAE_u32
      class_getter constructor_id : UInt32 = 0x8B9B4DAE_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.return_type : Deserializable
        Account::TypeContentSettings
      end
    end

    class GetMultiWallPapers < TLRequest
      getter constructor_id : UInt32 = 0x65AD71DC_u32
      class_getter constructor_id : UInt32 = 0x65AD71DC_u32

      getter wallpapers : Array(Root::TypeInputWallPaper)

      def initialize(
        wallpapers : Array(Root::TypeInputWallPaper)
      )
        @wallpapers = wallpapers
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @wallpapers.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Array(Root::TypeWallPaper)
      end
    end

    class GetGlobalPrivacySettings < TLRequest
      getter constructor_id : UInt32 = 0xEB2B4CF6_u32
      class_getter constructor_id : UInt32 = 0xEB2B4CF6_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.return_type : Deserializable
        Root::TypeGlobalPrivacySettings
      end
    end

    class SetGlobalPrivacySettings < TLRequest
      getter constructor_id : UInt32 = 0x1EDAAAC2_u32
      class_getter constructor_id : UInt32 = 0x1EDAAAC2_u32

      getter settings : Root::TypeGlobalPrivacySettings

      def initialize(
        settings : Root::TypeGlobalPrivacySettings
      )
        @settings = settings
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @settings.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeGlobalPrivacySettings
      end
    end

    class ReportProfilePhoto < TLRequest
      getter constructor_id : UInt32 = 0xFA8CC6F5_u32
      class_getter constructor_id : UInt32 = 0xFA8CC6F5_u32

      getter peer : Root::TypeInputPeer
      getter photo_id : Root::TypeInputPhoto
      getter reason : Root::TypeReportReason
      getter message : Bytes

      def initialize(
        peer : Root::TypeInputPeer,
        photo_id : Root::TypeInputPhoto,
        reason : Root::TypeReportReason,
        message : Bytes | String | IO
      )
        @peer = peer
        @photo_id = photo_id
        @reason = reason
        @message = TL::Utils.parse_bytes!(message)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @photo_id.tl_serialize(io)
        @reason.tl_serialize(io)
        @message.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class ResetPassword < TLRequest
      getter constructor_id : UInt32 = 0x9308CE1B_u32
      class_getter constructor_id : UInt32 = 0x9308CE1B_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.return_type : Deserializable
        Account::TypeResetPasswordResult
      end
    end

    class DeclinePasswordReset < TLRequest
      getter constructor_id : UInt32 = 0x4C9409F6_u32
      class_getter constructor_id : UInt32 = 0x4C9409F6_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class GetChatThemes < TLRequest
      getter constructor_id : UInt32 = 0xD638DE89_u32
      class_getter constructor_id : UInt32 = 0xD638DE89_u32

      getter hash : Int64

      def initialize(
        hash : Int64
      )
        @hash = hash
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @hash.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Account::TypeThemes
      end
    end

    class SetAuthorizationTTL < TLRequest
      getter constructor_id : UInt32 = 0xBF899AA0_u32
      class_getter constructor_id : UInt32 = 0xBF899AA0_u32

      getter authorization_ttl_days : Int32

      def initialize(
        authorization_ttl_days : Int32
      )
        @authorization_ttl_days = TL::Utils.parse_int!(authorization_ttl_days, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @authorization_ttl_days.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class ChangeAuthorizationSettings < TLRequest
      getter constructor_id : UInt32 = 0x40F48462_u32
      class_getter constructor_id : UInt32 = 0x40F48462_u32

      getter hash : Int64
      getter encrypted_requests_disabled : Bool | Nil
      getter call_requests_disabled : Bool | Nil

      def initialize(
        hash : Int64,
        encrypted_requests_disabled : Bool | Nil = nil,
        call_requests_disabled : Bool | Nil = nil
      )
        @hash = hash
        @encrypted_requests_disabled = encrypted_requests_disabled
        @call_requests_disabled = call_requests_disabled
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!encrypted_requests_disabled.nil? ? 0x01 : 0) |
            (!call_requests_disabled.nil? ? 0x02 : 0)
        ).tl_serialize(io)
        @hash.tl_serialize(io)
        @encrypted_requests_disabled.tl_serialize(io) unless @encrypted_requests_disabled.nil?
        @call_requests_disabled.tl_serialize(io) unless @call_requests_disabled.nil?
      end

      def self.return_type : Deserializable
        Bool
      end
    end
  end
end
