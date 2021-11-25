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
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x50A04E45
          PrivacyRules.tl_deserialize(io, bare)
        when 0xDADBC950
          GetPrivacy.tl_deserialize(io, bare)
        when 0xC9F81CE8
          SetPrivacy.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeAuthorizations < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x1250ABDE
          Authorizations.tl_deserialize(io, bare)
        when 0xE320C158
          GetAuthorizations.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePassword < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x185B184F
          Password.tl_deserialize(io, bare)
        when 0x548A30F5
          GetPassword.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePasswordSettings < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x9A5C33E5
          PasswordSettings.tl_deserialize(io, bare)
        when 0x9CD4EAF9
          GetPasswordSettings.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePasswordInputSettings < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
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
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xDB64FD34
          TmpPassword.tl_deserialize(io, bare)
        when 0x449E0B51
          GetTmpPassword.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeWebAuthorizations < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xED56C9FC
          WebAuthorizations.tl_deserialize(io, bare)
        when 0x182E6D6F
          GetWebAuthorizations.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeAuthorizationForm < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xAD2E1CD8
          AuthorizationForm.tl_deserialize(io, bare)
        when 0xA929597A
          GetAuthorizationForm.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeSentEmailCode < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x811F854F
          SentEmailCode.tl_deserialize(io, bare)
        when 0x7011509F
          SendVerifyEmailCode.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeTakeout < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x4DBA4501
          Takeout.tl_deserialize(io, bare)
        when 0xF05B4804
          InitTakeoutSession.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeWallPapers < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x1C199183
          WallPapersNotModified.tl_deserialize(io, bare)
        when 0xCDC3858C
          WallPapers.tl_deserialize(io, bare)
        when 0x07967D36
          GetWallPapers.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeAutoDownloadSettings < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x63CACF26
          AutoDownloadSettings.tl_deserialize(io, bare)
        when 0x56DA0B3F
          GetAutoDownloadSettings.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeThemes < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xF41EB622
          ThemesNotModified.tl_deserialize(io, bare)
        when 0x9A3D8C6D
          Themes.tl_deserialize(io, bare)
        when 0x7206E458
          GetThemes.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeContentSettings < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x57E28221
          ContentSettings.tl_deserialize(io, bare)
        when 0x8B9B4DAE
          GetContentSettings.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeResetPasswordResult < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xE3779861
          ResetPasswordFailedWait.tl_deserialize(io, bare)
        when 0xE9EFFC7D
          ResetPasswordRequestedWait.tl_deserialize(io, bare)
        when 0xE926D63E
          ResetPasswordOk.tl_deserialize(io, bare)
        when 0x9308CE1B
          ResetPassword.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeChatThemes < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xE011E1C4
          ChatThemesNotModified.tl_deserialize(io, bare)
        when 0xFE4CBEBD
          ChatThemes.tl_deserialize(io, bare)
        when 0xD6D71D7B
          GetChatThemes.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePeerNotifySettings < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x12B3AD31
          GetNotifySettings.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeUser < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x78515775
          UpdateProfile.tl_deserialize(io, bare)
        when 0x3E0BDD7C
          UpdateUsername.tl_deserialize(io, bare)
        when 0x70C32EDB
          ChangePhone.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeAccountDaysTTL < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x08FC711D
          GetAccountTTL.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeSentCode < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x82574AE5
          SendChangePhoneCode.tl_deserialize(io, bare)
        when 0x1B3FAA88
          SendConfirmPhoneCode.tl_deserialize(io, bare)
        when 0xA5A356F9
          SendVerifyPhoneCode.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeSecureValue < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x899FE31D
          SaveSecureValue.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeUpdates < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x53577479
          GetNotifyExceptions.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeWallPaper < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xFC8DDBEA
          GetWallPaper.tl_deserialize(io, bare)
        when 0xDD853661
          UploadWallPaper.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeDocument < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x1C3DB333
          UploadTheme.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeTheme < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x8432C21F
          CreateTheme.tl_deserialize(io, bare)
        when 0x5CB367D5
          UpdateTheme.tl_deserialize(io, bare)
        when 0x8D9D742B
          GetTheme.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeGlobalPrivacySettings < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xEB2B4CF6
          GetGlobalPrivacySettings.tl_deserialize(io, bare)
        when 0x1EDAAAC2
          SetGlobalPrivacySettings.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    class PrivacyRules < TypePrivacyRules
      CONSTRUCTOR_ID = 0x50A04E45

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
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @rules.tl_serialize(io, false)
        @chats.tl_serialize(io, false)
        @users.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          rules: Array(Root::TypePrivacyRule).tl_deserialize(io, false),
          chats: Array(Root::TypeChat).tl_deserialize(io, false),
          users: Array(Root::TypeUser).tl_deserialize(io, false),
        )
      end
    end

    class Authorizations < TypeAuthorizations
      CONSTRUCTOR_ID = 0x1250ABDE

      getter authorizations : Array(Root::TypeAuthorization)

      def initialize(
        authorizations : Array(Root::TypeAuthorization)
      )
        @authorizations = authorizations
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @authorizations.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          authorizations: Array(Root::TypeAuthorization).tl_deserialize(io, false),
        )
      end
    end

    class Password < TypePassword
      CONSTRUCTOR_ID = 0x185B184F

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
        @hint = hint
        @email_unconfirmed_pattern = email_unconfirmed_pattern
        @pending_reset_date = pending_reset_date
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!has_recovery.nil? ? 1 : 0) |
            (!has_secure_values.nil? ? 2 : 0) |
            (!has_password.nil? ? 4 : 0) |
            (!current_algo.nil? ? 4 : 0) |
            (!srp_b.nil? ? 4 : 0) |
            (!srp_id.nil? ? 4 : 0) |
            (!hint.nil? ? 8 : 0) |
            (!email_unconfirmed_pattern.nil? ? 16 : 0) |
            (!pending_reset_date.nil? ? 32 : 0)
        ).tl_serialize(io)
        @current_algo.tl_serialize(io, false) unless @current_algo.nil?
        @srp_b.tl_serialize(io, true) unless @srp_b.nil?
        @srp_id.tl_serialize(io, true) unless @srp_id.nil?
        @hint.tl_serialize(io, true) unless @hint.nil?
        @email_unconfirmed_pattern.tl_serialize(io, true) unless @email_unconfirmed_pattern.nil?
        @new_algo.tl_serialize(io, false)
        @new_secure_algo.tl_serialize(io, false)
        @secure_random.tl_serialize(io, true)
        @pending_reset_date.tl_serialize(io, true) unless @pending_reset_date.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          new_algo: Root::TypePasswordKdfAlgo.tl_deserialize(io, false),
          new_secure_algo: Root::TypeSecurePasswordKdfAlgo.tl_deserialize(io, false),
          secure_random: Bytes.tl_deserialize(io, true),
          has_recovery: flags & 1 == 1,
          has_secure_values: flags & 2 == 1,
          has_password: flags & 4 == 1,
          current_algo: flags & 4 == 1 ? Root::TypePasswordKdfAlgo.tl_deserialize(io, false) : nil,
          srp_b: flags & 4 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          srp_id: flags & 4 == 1 ? Int64.tl_deserialize(io, true) : nil,
          hint: flags & 8 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          email_unconfirmed_pattern: flags & 16 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          pending_reset_date: flags & 32 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class PasswordSettings < TypePasswordSettings
      CONSTRUCTOR_ID = 0x9A5C33E5

      getter email : Bytes | Nil
      getter secure_settings : Root::TypeSecureSecretSettings | Nil

      def initialize(
        email : Bytes | Nil = nil,
        secure_settings : Root::TypeSecureSecretSettings | Nil = nil
      )
        @email = email
        @secure_settings = secure_settings
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!email.nil? ? 1 : 0) |
            (!secure_settings.nil? ? 2 : 0)
        ).tl_serialize(io)
        @email.tl_serialize(io, true) unless @email.nil?
        @secure_settings.tl_serialize(io, false) unless @secure_settings.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          email: flags & 1 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          secure_settings: flags & 2 == 1 ? Root::TypeSecureSecretSettings.tl_deserialize(io, false) : nil,
        )
      end
    end

    class PasswordInputSettings < TypePasswordInputSettings
      CONSTRUCTOR_ID = 0xC23727C9

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
        @hint = hint
        @email = email
        @new_secure_settings = new_secure_settings
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!new_algo.nil? ? 1 : 0) |
            (!new_password_hash.nil? ? 1 : 0) |
            (!hint.nil? ? 1 : 0) |
            (!email.nil? ? 2 : 0) |
            (!new_secure_settings.nil? ? 4 : 0)
        ).tl_serialize(io)
        @new_algo.tl_serialize(io, false) unless @new_algo.nil?
        @new_password_hash.tl_serialize(io, true) unless @new_password_hash.nil?
        @hint.tl_serialize(io, true) unless @hint.nil?
        @email.tl_serialize(io, true) unless @email.nil?
        @new_secure_settings.tl_serialize(io, false) unless @new_secure_settings.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          new_algo: flags & 1 == 1 ? Root::TypePasswordKdfAlgo.tl_deserialize(io, false) : nil,
          new_password_hash: flags & 1 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          hint: flags & 1 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          email: flags & 2 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          new_secure_settings: flags & 4 == 1 ? Root::TypeSecureSecretSettings.tl_deserialize(io, false) : nil,
        )
      end
    end

    class TmpPassword < TypeTmpPassword
      CONSTRUCTOR_ID = 0xDB64FD34

      getter tmp_password : Bytes
      getter valid_until : Int32

      def initialize(
        tmp_password : Bytes | String | IO,
        valid_until : Int32
      )
        @tmp_password = TL::Utils.parse_bytes!(tmp_password)
        @valid_until = valid_until
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @tmp_password.tl_serialize(io, true)
        @valid_until.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          tmp_password: Bytes.tl_deserialize(io, true),
          valid_until: Int32.tl_deserialize(io, true),
        )
      end
    end

    class WebAuthorizations < TypeWebAuthorizations
      CONSTRUCTOR_ID = 0xED56C9FC

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
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @authorizations.tl_serialize(io, false)
        @users.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          authorizations: Array(Root::TypeWebAuthorization).tl_deserialize(io, false),
          users: Array(Root::TypeUser).tl_deserialize(io, false),
        )
      end
    end

    class AuthorizationForm < TypeAuthorizationForm
      CONSTRUCTOR_ID = 0xAD2E1CD8

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
        @privacy_policy_url = privacy_policy_url
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!privacy_policy_url.nil? ? 1 : 0)
        ).tl_serialize(io)
        @required_types.tl_serialize(io, false)
        @values.tl_serialize(io, false)
        @errors.tl_serialize(io, false)
        @users.tl_serialize(io, false)
        @privacy_policy_url.tl_serialize(io, true) unless @privacy_policy_url.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          required_types: Array(Root::TypeSecureRequiredType).tl_deserialize(io, false),
          values: Array(Root::TypeSecureValue).tl_deserialize(io, false),
          errors: Array(Root::TypeSecureValueError).tl_deserialize(io, false),
          users: Array(Root::TypeUser).tl_deserialize(io, false),
          privacy_policy_url: flags & 1 == 1 ? Bytes.tl_deserialize(io, true) : nil,
        )
      end
    end

    class SentEmailCode < TypeSentEmailCode
      CONSTRUCTOR_ID = 0x811F854F

      getter email_pattern : Bytes
      getter length : Int32

      def initialize(
        email_pattern : Bytes | String | IO,
        length : Int32
      )
        @email_pattern = email_pattern
        @length = length
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @email_pattern.tl_serialize(io, true)
        @length.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          email_pattern: Bytes.tl_deserialize(io, true),
          length: Int32.tl_deserialize(io, true),
        )
      end
    end

    class Takeout < TypeTakeout
      CONSTRUCTOR_ID = 0x4DBA4501

      getter id : Int64

      def initialize(
        id : Int64
      )
        @id = id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Int64.tl_deserialize(io, true),
        )
      end
    end

    class WallPapersNotModified < TypeWallPapers
      CONSTRUCTOR_ID = 0x1C199183

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class WallPapers < TypeWallPapers
      CONSTRUCTOR_ID = 0xCDC3858C

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
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @hash.tl_serialize(io, true)
        @wallpapers.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          hash: Int64.tl_deserialize(io, true),
          wallpapers: Array(Root::TypeWallPaper).tl_deserialize(io, false),
        )
      end
    end

    class AutoDownloadSettings < TypeAutoDownloadSettings
      CONSTRUCTOR_ID = 0x63CACF26

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
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @low.tl_serialize(io, false)
        @medium.tl_serialize(io, false)
        @high.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          low: Root::TypeAutoDownloadSettings.tl_deserialize(io, false),
          medium: Root::TypeAutoDownloadSettings.tl_deserialize(io, false),
          high: Root::TypeAutoDownloadSettings.tl_deserialize(io, false),
        )
      end
    end

    class ThemesNotModified < TypeThemes
      CONSTRUCTOR_ID = 0xF41EB622

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class Themes < TypeThemes
      CONSTRUCTOR_ID = 0x9A3D8C6D

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
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @hash.tl_serialize(io, true)
        @themes.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          hash: Int64.tl_deserialize(io, true),
          themes: Array(Root::TypeTheme).tl_deserialize(io, false),
        )
      end
    end

    class ContentSettings < TypeContentSettings
      CONSTRUCTOR_ID = 0x57E28221

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
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!sensitive_enabled.nil? ? 1 : 0) |
            (!sensitive_can_change.nil? ? 2 : 0)
        ).tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          sensitive_enabled: flags & 1 == 1,
          sensitive_can_change: flags & 2 == 1,
        )
      end
    end

    class ResetPasswordFailedWait < TypeResetPasswordResult
      CONSTRUCTOR_ID = 0xE3779861

      getter retry_date : Int32

      def initialize(
        retry_date : Int32
      )
        @retry_date = retry_date
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @retry_date.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          retry_date: Int32.tl_deserialize(io, true),
        )
      end
    end

    class ResetPasswordRequestedWait < TypeResetPasswordResult
      CONSTRUCTOR_ID = 0xE9EFFC7D

      getter until_date : Int32

      def initialize(
        until_date : Int32
      )
        @until_date = until_date
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @until_date.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          until_date: Int32.tl_deserialize(io, true),
        )
      end
    end

    class ResetPasswordOk < TypeResetPasswordResult
      CONSTRUCTOR_ID = 0xE926D63E

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class ChatThemesNotModified < TypeChatThemes
      CONSTRUCTOR_ID = 0xE011E1C4

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class ChatThemes < TypeChatThemes
      CONSTRUCTOR_ID = 0xFE4CBEBD

      getter hash : Int32
      getter themes : Array(Root::TypeChatTheme)

      def initialize(
        hash : Int32,
        themes : Array(Root::TypeChatTheme)
      )
        @hash = hash
        @themes = themes
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @hash.tl_serialize(io, true)
        @themes.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          hash: Int32.tl_deserialize(io, true),
          themes: Array(Root::TypeChatTheme).tl_deserialize(io, false),
        )
      end
    end

    class RegisterDevice < TLRequest
      CONSTRUCTOR_ID = 0xEC86017A

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
        @token_type = token_type
        @token = token
        @app_sandbox = app_sandbox
        @secret = TL::Utils.parse_bytes!(secret)
        @other_uids = other_uids
        @no_muted = no_muted
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!no_muted.nil? ? 1 : 0)
        ).tl_serialize(io)
        @token_type.tl_serialize(io, true)
        @token.tl_serialize(io, true)
        @app_sandbox.tl_serialize(io, false)
        @secret.tl_serialize(io, true)
        @other_uids.tl_serialize(io, false)
      end

      def return_type
        Bool
      end
    end

    class UnregisterDevice < TLRequest
      CONSTRUCTOR_ID = 0x6A0D3206

      getter token_type : Int32
      getter token : Bytes
      getter other_uids : Array(Int64)

      def initialize(
        token_type : Int32,
        token : Bytes | String | IO,
        other_uids : Array(Int64)
      )
        @token_type = token_type
        @token = token
        @other_uids = other_uids
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @token_type.tl_serialize(io, true)
        @token.tl_serialize(io, true)
        @other_uids.tl_serialize(io, false)
      end

      def return_type
        Bool
      end
    end

    class UpdateNotifySettings < TLRequest
      CONSTRUCTOR_ID = 0x84BE5B93

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
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @peer.tl_serialize(io, false)
        @settings.tl_serialize(io, false)
      end

      def return_type
        Bool
      end
    end

    class GetNotifySettings < TLRequest
      CONSTRUCTOR_ID = 0x12B3AD31

      getter peer : Root::TypeInputNotifyPeer

      def initialize(
        peer : Root::TypeInputNotifyPeer
      )
        @peer = peer
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @peer.tl_serialize(io, false)
      end

      def return_type
        Root::TypePeerNotifySettings
      end
    end

    class ResetNotifySettings < TLRequest
      CONSTRUCTOR_ID = 0xDB7E1747

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def return_type
        Bool
      end
    end

    class UpdateProfile < TLRequest
      CONSTRUCTOR_ID = 0x78515775

      getter first_name : Bytes | Nil
      getter last_name : Bytes | Nil
      getter about : Bytes | Nil

      def initialize(
        first_name : Bytes | Nil = nil,
        last_name : Bytes | Nil = nil,
        about : Bytes | Nil = nil
      )
        @first_name = first_name
        @last_name = last_name
        @about = about
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!first_name.nil? ? 1 : 0) |
            (!last_name.nil? ? 2 : 0) |
            (!about.nil? ? 4 : 0)
        ).tl_serialize(io)
        @first_name.tl_serialize(io, true) unless @first_name.nil?
        @last_name.tl_serialize(io, true) unless @last_name.nil?
        @about.tl_serialize(io, true) unless @about.nil?
      end

      def return_type
        Root::TypeUser
      end
    end

    class UpdateStatus < TLRequest
      CONSTRUCTOR_ID = 0x6628562C

      getter offline : Bool

      def initialize(
        offline : Bool
      )
        @offline = offline
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @offline.tl_serialize(io, false)
      end

      def return_type
        Bool
      end
    end

    class GetWallPapers < TLRequest
      CONSTRUCTOR_ID = 0x07967D36

      getter hash : Int64

      def initialize(
        hash : Int64
      )
        @hash = hash
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @hash.tl_serialize(io, true)
      end

      def return_type
        Account::TypeWallPapers
      end
    end

    class ReportPeer < TLRequest
      CONSTRUCTOR_ID = 0xC5BA3D86

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
        @message = message
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @peer.tl_serialize(io, false)
        @reason.tl_serialize(io, false)
        @message.tl_serialize(io, true)
      end

      def return_type
        Bool
      end
    end

    class CheckUsername < TLRequest
      CONSTRUCTOR_ID = 0x2714D86C

      getter username : Bytes

      def initialize(
        username : Bytes | String | IO
      )
        @username = username
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @username.tl_serialize(io, true)
      end

      def return_type
        Bool
      end
    end

    class UpdateUsername < TLRequest
      CONSTRUCTOR_ID = 0x3E0BDD7C

      getter username : Bytes

      def initialize(
        username : Bytes | String | IO
      )
        @username = username
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @username.tl_serialize(io, true)
      end

      def return_type
        Root::TypeUser
      end
    end

    class GetPrivacy < TLRequest
      CONSTRUCTOR_ID = 0xDADBC950

      getter key : Root::TypeInputPrivacyKey

      def initialize(
        key : Root::TypeInputPrivacyKey
      )
        @key = key
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @key.tl_serialize(io, false)
      end

      def return_type
        Account::TypePrivacyRules
      end
    end

    class SetPrivacy < TLRequest
      CONSTRUCTOR_ID = 0xC9F81CE8

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
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @key.tl_serialize(io, false)
        @rules.tl_serialize(io, false)
      end

      def return_type
        Account::TypePrivacyRules
      end
    end

    class DeleteAccount < TLRequest
      CONSTRUCTOR_ID = 0x418D4E0B

      getter reason : Bytes

      def initialize(
        reason : Bytes | String | IO
      )
        @reason = reason
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @reason.tl_serialize(io, true)
      end

      def return_type
        Bool
      end
    end

    class GetAccountTTL < TLRequest
      CONSTRUCTOR_ID = 0x08FC711D

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def return_type
        Root::TypeAccountDaysTTL
      end
    end

    class SetAccountTTL < TLRequest
      CONSTRUCTOR_ID = 0x2442485E

      getter ttl : Root::TypeAccountDaysTTL

      def initialize(
        ttl : Root::TypeAccountDaysTTL
      )
        @ttl = ttl
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @ttl.tl_serialize(io, false)
      end

      def return_type
        Bool
      end
    end

    class SendChangePhoneCode < TLRequest
      CONSTRUCTOR_ID = 0x82574AE5

      getter phone_number : Bytes
      getter settings : Root::TypeCodeSettings

      def initialize(
        phone_number : Bytes | String | IO,
        settings : Root::TypeCodeSettings
      )
        @phone_number = phone_number
        @settings = settings
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @phone_number.tl_serialize(io, true)
        @settings.tl_serialize(io, false)
      end

      def return_type
        Auth::TypeSentCode
      end
    end

    class ChangePhone < TLRequest
      CONSTRUCTOR_ID = 0x70C32EDB

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
        Root::TypeUser
      end
    end

    class UpdateDeviceLocked < TLRequest
      CONSTRUCTOR_ID = 0x38DF3532

      getter period : Int32

      def initialize(
        period : Int32
      )
        @period = period
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @period.tl_serialize(io, true)
      end

      def return_type
        Bool
      end
    end

    class GetAuthorizations < TLRequest
      CONSTRUCTOR_ID = 0xE320C158

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def return_type
        Account::TypeAuthorizations
      end
    end

    class ResetAuthorization < TLRequest
      CONSTRUCTOR_ID = 0xDF77F3BC

      getter hash : Int64

      def initialize(
        hash : Int64
      )
        @hash = hash
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @hash.tl_serialize(io, true)
      end

      def return_type
        Bool
      end
    end

    class GetPassword < TLRequest
      CONSTRUCTOR_ID = 0x548A30F5

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def return_type
        Account::TypePassword
      end
    end

    class GetPasswordSettings < TLRequest
      CONSTRUCTOR_ID = 0x9CD4EAF9

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
        Account::TypePasswordSettings
      end
    end

    class UpdatePasswordSettings < TLRequest
      CONSTRUCTOR_ID = 0xA59B102F

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
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @password.tl_serialize(io, false)
        @new_settings.tl_serialize(io, false)
      end

      def return_type
        Bool
      end
    end

    class SendConfirmPhoneCode < TLRequest
      CONSTRUCTOR_ID = 0x1B3FAA88

      getter hash : Bytes
      getter settings : Root::TypeCodeSettings

      def initialize(
        hash : Bytes | String | IO,
        settings : Root::TypeCodeSettings
      )
        @hash = hash
        @settings = settings
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @hash.tl_serialize(io, true)
        @settings.tl_serialize(io, false)
      end

      def return_type
        Auth::TypeSentCode
      end
    end

    class ConfirmPhone < TLRequest
      CONSTRUCTOR_ID = 0x5F2178C3

      getter phone_code_hash : Bytes
      getter phone_code : Bytes

      def initialize(
        phone_code_hash : Bytes | String | IO,
        phone_code : Bytes | String | IO
      )
        @phone_code_hash = phone_code_hash
        @phone_code = phone_code
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @phone_code_hash.tl_serialize(io, true)
        @phone_code.tl_serialize(io, true)
      end

      def return_type
        Bool
      end
    end

    class GetTmpPassword < TLRequest
      CONSTRUCTOR_ID = 0x449E0B51

      getter password : Root::TypeInputCheckPasswordSRP
      getter period : Int32

      def initialize(
        password : Root::TypeInputCheckPasswordSRP,
        period : Int32
      )
        @password = password
        @period = period
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @password.tl_serialize(io, false)
        @period.tl_serialize(io, true)
      end

      def return_type
        Account::TypeTmpPassword
      end
    end

    class GetWebAuthorizations < TLRequest
      CONSTRUCTOR_ID = 0x182E6D6F

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def return_type
        Account::TypeWebAuthorizations
      end
    end

    class ResetWebAuthorization < TLRequest
      CONSTRUCTOR_ID = 0x2D01B9EF

      getter hash : Int64

      def initialize(
        hash : Int64
      )
        @hash = hash
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @hash.tl_serialize(io, true)
      end

      def return_type
        Bool
      end
    end

    class ResetWebAuthorizations < TLRequest
      CONSTRUCTOR_ID = 0x682D2594

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def return_type
        Bool
      end
    end

    class GetAllSecureValues < TLRequest
      CONSTRUCTOR_ID = 0xB288BC7D

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def return_type
        Array(Root::TypeSecureValue)
      end
    end

    class GetSecureValue < TLRequest
      CONSTRUCTOR_ID = 0x73665BC2

      getter types : Array(Root::TypeSecureValueType)

      def initialize(
        types : Array(Root::TypeSecureValueType)
      )
        @types = types
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @types.tl_serialize(io, false)
      end

      def return_type
        Array(Root::TypeSecureValue)
      end
    end

    class SaveSecureValue < TLRequest
      CONSTRUCTOR_ID = 0x899FE31D

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
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @value.tl_serialize(io, false)
        @secure_secret_id.tl_serialize(io, true)
      end

      def return_type
        Root::TypeSecureValue
      end
    end

    class DeleteSecureValue < TLRequest
      CONSTRUCTOR_ID = 0xB880BC4B

      getter types : Array(Root::TypeSecureValueType)

      def initialize(
        types : Array(Root::TypeSecureValueType)
      )
        @types = types
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @types.tl_serialize(io, false)
      end

      def return_type
        Bool
      end
    end

    class GetAuthorizationForm < TLRequest
      CONSTRUCTOR_ID = 0xA929597A

      getter bot_id : Int64
      getter scope : Bytes
      getter public_key : Bytes

      def initialize(
        bot_id : Int64,
        scope : Bytes | String | IO,
        public_key : Bytes | String | IO
      )
        @bot_id = bot_id
        @scope = scope
        @public_key = public_key
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @bot_id.tl_serialize(io, true)
        @scope.tl_serialize(io, true)
        @public_key.tl_serialize(io, true)
      end

      def return_type
        Account::TypeAuthorizationForm
      end
    end

    class AcceptAuthorization < TLRequest
      CONSTRUCTOR_ID = 0xF3ED4C73

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
        @scope = scope
        @public_key = public_key
        @value_hashes = value_hashes
        @credentials = credentials
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @bot_id.tl_serialize(io, true)
        @scope.tl_serialize(io, true)
        @public_key.tl_serialize(io, true)
        @value_hashes.tl_serialize(io, false)
        @credentials.tl_serialize(io, false)
      end

      def return_type
        Bool
      end
    end

    class SendVerifyPhoneCode < TLRequest
      CONSTRUCTOR_ID = 0xA5A356F9

      getter phone_number : Bytes
      getter settings : Root::TypeCodeSettings

      def initialize(
        phone_number : Bytes | String | IO,
        settings : Root::TypeCodeSettings
      )
        @phone_number = phone_number
        @settings = settings
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @phone_number.tl_serialize(io, true)
        @settings.tl_serialize(io, false)
      end

      def return_type
        Auth::TypeSentCode
      end
    end

    class VerifyPhone < TLRequest
      CONSTRUCTOR_ID = 0x4DD3A7F6

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
        Bool
      end
    end

    class SendVerifyEmailCode < TLRequest
      CONSTRUCTOR_ID = 0x7011509F

      getter email : Bytes

      def initialize(
        email : Bytes | String | IO
      )
        @email = email
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @email.tl_serialize(io, true)
      end

      def return_type
        Account::TypeSentEmailCode
      end
    end

    class VerifyEmail < TLRequest
      CONSTRUCTOR_ID = 0xECBA39DB

      getter email : Bytes
      getter code : Bytes

      def initialize(
        email : Bytes | String | IO,
        code : Bytes | String | IO
      )
        @email = email
        @code = code
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @email.tl_serialize(io, true)
        @code.tl_serialize(io, true)
      end

      def return_type
        Bool
      end
    end

    class InitTakeoutSession < TLRequest
      CONSTRUCTOR_ID = 0xF05B4804

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
        @file_max_size = file_max_size
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!contacts.nil? ? 1 : 0) |
            (!message_users.nil? ? 2 : 0) |
            (!message_chats.nil? ? 4 : 0) |
            (!message_megagroups.nil? ? 8 : 0) |
            (!message_channels.nil? ? 16 : 0) |
            (!files.nil? ? 32 : 0) |
            (!file_max_size.nil? ? 32 : 0)
        ).tl_serialize(io)
        @file_max_size.tl_serialize(io, true) unless @file_max_size.nil?
      end

      def return_type
        Account::TypeTakeout
      end
    end

    class FinishTakeoutSession < TLRequest
      CONSTRUCTOR_ID = 0x1D2652EE

      getter success : Bool | Nil

      def initialize(
        success : Bool | Nil = nil
      )
        @success = success
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!success.nil? ? 1 : 0)
        ).tl_serialize(io)
      end

      def return_type
        Bool
      end
    end

    class ConfirmPasswordEmail < TLRequest
      CONSTRUCTOR_ID = 0x8FDF1920

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

    class ResendPasswordEmail < TLRequest
      CONSTRUCTOR_ID = 0x7A7F2A15

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def return_type
        Bool
      end
    end

    class CancelPasswordEmail < TLRequest
      CONSTRUCTOR_ID = 0xC1CBD5B6

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def return_type
        Bool
      end
    end

    class GetContactSignUpNotification < TLRequest
      CONSTRUCTOR_ID = 0x9F07C728

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def return_type
        Bool
      end
    end

    class SetContactSignUpNotification < TLRequest
      CONSTRUCTOR_ID = 0xCFF43F61

      getter silent : Bool

      def initialize(
        silent : Bool
      )
        @silent = silent
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @silent.tl_serialize(io, false)
      end

      def return_type
        Bool
      end
    end

    class GetNotifyExceptions < TLRequest
      CONSTRUCTOR_ID = 0x53577479

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
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!compare_sound.nil? ? 2 : 0) |
            (!peer.nil? ? 1 : 0)
        ).tl_serialize(io)
        @peer.tl_serialize(io, false) unless @peer.nil?
      end

      def return_type
        Root::TypeUpdates
      end
    end

    class GetWallPaper < TLRequest
      CONSTRUCTOR_ID = 0xFC8DDBEA

      getter wallpaper : Root::TypeInputWallPaper

      def initialize(
        wallpaper : Root::TypeInputWallPaper
      )
        @wallpaper = wallpaper
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @wallpaper.tl_serialize(io, false)
      end

      def return_type
        Root::TypeWallPaper
      end
    end

    class UploadWallPaper < TLRequest
      CONSTRUCTOR_ID = 0xDD853661

      getter file : Root::TypeInputFile
      getter mime_type : Bytes
      getter settings : Root::TypeWallPaperSettings

      def initialize(
        file : Root::TypeInputFile,
        mime_type : Bytes | String | IO,
        settings : Root::TypeWallPaperSettings
      )
        @file = file
        @mime_type = mime_type
        @settings = settings
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @file.tl_serialize(io, false)
        @mime_type.tl_serialize(io, true)
        @settings.tl_serialize(io, false)
      end

      def return_type
        Root::TypeWallPaper
      end
    end

    class SaveWallPaper < TLRequest
      CONSTRUCTOR_ID = 0x6C5A5B37

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
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @wallpaper.tl_serialize(io, false)
        @unsave.tl_serialize(io, false)
        @settings.tl_serialize(io, false)
      end

      def return_type
        Bool
      end
    end

    class InstallWallPaper < TLRequest
      CONSTRUCTOR_ID = 0xFEED5769

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
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @wallpaper.tl_serialize(io, false)
        @settings.tl_serialize(io, false)
      end

      def return_type
        Bool
      end
    end

    class ResetWallPapers < TLRequest
      CONSTRUCTOR_ID = 0xBB3B9804

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def return_type
        Bool
      end
    end

    class GetAutoDownloadSettings < TLRequest
      CONSTRUCTOR_ID = 0x56DA0B3F

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def return_type
        Account::TypeAutoDownloadSettings
      end
    end

    class SaveAutoDownloadSettings < TLRequest
      CONSTRUCTOR_ID = 0x76F36233

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
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!low.nil? ? 1 : 0) |
            (!high.nil? ? 2 : 0)
        ).tl_serialize(io)
        @settings.tl_serialize(io, false)
      end

      def return_type
        Bool
      end
    end

    class UploadTheme < TLRequest
      CONSTRUCTOR_ID = 0x1C3DB333

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
        @file_name = file_name
        @mime_type = mime_type
        @thumb = thumb
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!thumb.nil? ? 1 : 0)
        ).tl_serialize(io)
        @file.tl_serialize(io, false)
        @thumb.tl_serialize(io, false) unless @thumb.nil?
        @file_name.tl_serialize(io, true)
        @mime_type.tl_serialize(io, true)
      end

      def return_type
        Root::TypeDocument
      end
    end

    class CreateTheme < TLRequest
      CONSTRUCTOR_ID = 0x8432C21F

      getter slug : Bytes
      getter title : Bytes
      getter document : Root::TypeInputDocument | Nil
      getter settings : Root::TypeInputThemeSettings | Nil

      def initialize(
        slug : Bytes | String | IO,
        title : Bytes | String | IO,
        document : Root::TypeInputDocument | Nil = nil,
        settings : Root::TypeInputThemeSettings | Nil = nil
      )
        @slug = slug
        @title = title
        @document = document
        @settings = settings
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!document.nil? ? 4 : 0) |
            (!settings.nil? ? 8 : 0)
        ).tl_serialize(io)
        @slug.tl_serialize(io, true)
        @title.tl_serialize(io, true)
        @document.tl_serialize(io, false) unless @document.nil?
        @settings.tl_serialize(io, false) unless @settings.nil?
      end

      def return_type
        Root::TypeTheme
      end
    end

    class UpdateTheme < TLRequest
      CONSTRUCTOR_ID = 0x5CB367D5

      getter format : Bytes
      getter theme : Root::TypeInputTheme
      getter slug : Bytes | Nil
      getter title : Bytes | Nil
      getter document : Root::TypeInputDocument | Nil
      getter settings : Root::TypeInputThemeSettings | Nil

      def initialize(
        format : Bytes | String | IO,
        theme : Root::TypeInputTheme,
        slug : Bytes | Nil = nil,
        title : Bytes | Nil = nil,
        document : Root::TypeInputDocument | Nil = nil,
        settings : Root::TypeInputThemeSettings | Nil = nil
      )
        @format = format
        @theme = theme
        @slug = slug
        @title = title
        @document = document
        @settings = settings
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!slug.nil? ? 1 : 0) |
            (!title.nil? ? 2 : 0) |
            (!document.nil? ? 4 : 0) |
            (!settings.nil? ? 8 : 0)
        ).tl_serialize(io)
        @format.tl_serialize(io, true)
        @theme.tl_serialize(io, false)
        @slug.tl_serialize(io, true) unless @slug.nil?
        @title.tl_serialize(io, true) unless @title.nil?
        @document.tl_serialize(io, false) unless @document.nil?
        @settings.tl_serialize(io, false) unless @settings.nil?
      end

      def return_type
        Root::TypeTheme
      end
    end

    class SaveTheme < TLRequest
      CONSTRUCTOR_ID = 0xF257106C

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
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @theme.tl_serialize(io, false)
        @unsave.tl_serialize(io, false)
      end

      def return_type
        Bool
      end
    end

    class InstallTheme < TLRequest
      CONSTRUCTOR_ID = 0x7AE43737

      getter dark : Bool | Nil
      getter format : Bytes | Nil
      getter theme : Root::TypeInputTheme | Nil

      def initialize(
        dark : Bool | Nil = nil,
        format : Bytes | Nil = nil,
        theme : Root::TypeInputTheme | Nil = nil
      )
        @dark = dark
        @format = format
        @theme = theme
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!dark.nil? ? 1 : 0) |
            (!format.nil? ? 2 : 0) |
            (!theme.nil? ? 2 : 0)
        ).tl_serialize(io)
        @format.tl_serialize(io, true) unless @format.nil?
        @theme.tl_serialize(io, false) unless @theme.nil?
      end

      def return_type
        Bool
      end
    end

    class GetTheme < TLRequest
      CONSTRUCTOR_ID = 0x8D9D742B

      getter format : Bytes
      getter theme : Root::TypeInputTheme
      getter document_id : Int64

      def initialize(
        format : Bytes | String | IO,
        theme : Root::TypeInputTheme,
        document_id : Int64
      )
        @format = format
        @theme = theme
        @document_id = document_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @format.tl_serialize(io, true)
        @theme.tl_serialize(io, false)
        @document_id.tl_serialize(io, true)
      end

      def return_type
        Root::TypeTheme
      end
    end

    class GetThemes < TLRequest
      CONSTRUCTOR_ID = 0x7206E458

      getter format : Bytes
      getter hash : Int64

      def initialize(
        format : Bytes | String | IO,
        hash : Int64
      )
        @format = format
        @hash = hash
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @format.tl_serialize(io, true)
        @hash.tl_serialize(io, true)
      end

      def return_type
        Account::TypeThemes
      end
    end

    class SetContentSettings < TLRequest
      CONSTRUCTOR_ID = 0xB574B16B

      getter sensitive_enabled : Bool | Nil

      def initialize(
        sensitive_enabled : Bool | Nil = nil
      )
        @sensitive_enabled = sensitive_enabled
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!sensitive_enabled.nil? ? 1 : 0)
        ).tl_serialize(io)
      end

      def return_type
        Bool
      end
    end

    class GetContentSettings < TLRequest
      CONSTRUCTOR_ID = 0x8B9B4DAE

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def return_type
        Account::TypeContentSettings
      end
    end

    class GetMultiWallPapers < TLRequest
      CONSTRUCTOR_ID = 0x65AD71DC

      getter wallpapers : Array(Root::TypeInputWallPaper)

      def initialize(
        wallpapers : Array(Root::TypeInputWallPaper)
      )
        @wallpapers = wallpapers
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @wallpapers.tl_serialize(io, false)
      end

      def return_type
        Array(Root::TypeWallPaper)
      end
    end

    class GetGlobalPrivacySettings < TLRequest
      CONSTRUCTOR_ID = 0xEB2B4CF6

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def return_type
        Root::TypeGlobalPrivacySettings
      end
    end

    class SetGlobalPrivacySettings < TLRequest
      CONSTRUCTOR_ID = 0x1EDAAAC2

      getter settings : Root::TypeGlobalPrivacySettings

      def initialize(
        settings : Root::TypeGlobalPrivacySettings
      )
        @settings = settings
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @settings.tl_serialize(io, false)
      end

      def return_type
        Root::TypeGlobalPrivacySettings
      end
    end

    class ReportProfilePhoto < TLRequest
      CONSTRUCTOR_ID = 0xFA8CC6F5

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
        @message = message
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @peer.tl_serialize(io, false)
        @photo_id.tl_serialize(io, false)
        @reason.tl_serialize(io, false)
        @message.tl_serialize(io, true)
      end

      def return_type
        Bool
      end
    end

    class ResetPassword < TLRequest
      CONSTRUCTOR_ID = 0x9308CE1B

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def return_type
        Account::TypeResetPasswordResult
      end
    end

    class DeclinePasswordReset < TLRequest
      CONSTRUCTOR_ID = 0x4C9409F6

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def return_type
        Bool
      end
    end

    class GetChatThemes < TLRequest
      CONSTRUCTOR_ID = 0xD6D71D7B

      getter hash : Int32

      def initialize(
        hash : Int32
      )
        @hash = hash
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @hash.tl_serialize(io, true)
      end

      def return_type
        Account::TypeChatThemes
      end
    end
  end
end
