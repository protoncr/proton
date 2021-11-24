# Copyright 2021 - Chris Watson and contributors.
#
# Licensed under the MIT License. You should have received a copy of the license
# with this project. By using this project you agree to abide by all terms
# contained therein.
#
# This module contains generated, raw MTProto types for Telegram's user API.
# It is not advised to modify this code directly, other than to test
# changes. All changes should be made in the code generator.

require "../utils"
require "../core/*"

module Proton::TL
  module Types
    module Help
      abstract class TypeAppUpdate < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0xCCBBCE30
            AppUpdate.tl_deserialize(io, bare)
          when 0xC45A6536
            NoAppUpdate.tl_deserialize(io, bare)
          when 0x522D5A7D
            GetAppUpdate.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeInviteText < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x18CB9F78
            InviteText.tl_deserialize(io, bare)
          when 0x4D392343
            GetInviteText.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeSupport < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x17C6B5F6
            Support.tl_deserialize(io, bare)
          when 0x9CDF08CD
            GetSupport.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeTermsOfService < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x780A0310
            TermsOfService.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeRecentMeUrls < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x0E0310D7
            RecentMeUrls.tl_deserialize(io, bare)
          when 0x3DC0F114
            GetRecentMeUrls.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeTermsOfServiceUpdate < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0xE3309F7F
            TermsOfServiceUpdateEmpty.tl_deserialize(io, bare)
          when 0x28ECF961
            TermsOfServiceUpdate.tl_deserialize(io, bare)
          when 0x2CA51FD1
            GetTermsOfServiceUpdate.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeDeepLinkInfo < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x66AFA166
            DeepLinkInfoEmpty.tl_deserialize(io, bare)
          when 0x6A4EE832
            DeepLinkInfo.tl_deserialize(io, bare)
          when 0x3FEDC75F
            GetDeepLinkInfo.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypePassportConfig < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0xBFB9F457
            PassportConfigNotModified.tl_deserialize(io, bare)
          when 0xA098D6AF
            PassportConfig.tl_deserialize(io, bare)
          when 0xC661AD08
            GetPassportConfig.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeSupportName < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x8C05F1C9
            SupportName.tl_deserialize(io, bare)
          when 0xD360E72C
            GetSupportName.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeUserInfo < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0xF3AE2EED
            UserInfoEmpty.tl_deserialize(io, bare)
          when 0x01EB3758
            UserInfo.tl_deserialize(io, bare)
          when 0x038A08D3
            GetUserInfo.tl_deserialize(io, bare)
          when 0x66B91B70
            EditUserInfo.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypePromoData < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x98F6AC75
            PromoDataEmpty.tl_deserialize(io, bare)
          when 0x8C39793F
            PromoData.tl_deserialize(io, bare)
          when 0xC0977421
            GetPromoData.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeCountryCode < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x4203C5EF
            CountryCode.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeCountry < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0xC3878E23
            Country.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeCountriesList < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x93CC1F32
            CountriesListNotModified.tl_deserialize(io, bare)
          when 0x87D0759E
            CountriesList.tl_deserialize(io, bare)
          when 0x735787A8
            GetCountriesList.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeConfig < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0xC4F9186B
            GetConfig.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeNearestDc < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x1FB33026
            GetNearestDc.tl_deserialize(io, bare)
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
          when 0x9010EF6F
            GetAppChangelog.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeCdnConfig < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x52029342
            GetCdnConfig.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeJSONValue < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x98914110
            GetAppConfig.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeConfigSimple < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x5A592A6C
            ConfigSimple.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      class AppUpdate < TypeAppUpdate
        CONSTRUCTOR_ID = 0xCCBBCE30

        getter id : Int32
        getter version : Bytes
        getter text : Bytes
        getter entities : Array(Root::TypeMessageEntity)
        getter can_not_skip : Bool | Nil
        getter document : Root::TypeDocument | Nil
        getter url : Bytes | Nil
        getter sticker : Root::TypeDocument | Nil

        def initialize(
          id : Int32,
          version : Bytes | String | IO,
          text : Bytes | String | IO,
          entities : Array(Root::TypeMessageEntity),
          can_not_skip : Bool | Nil = nil,
          document : Root::TypeDocument | Nil = nil,
          url : Bytes | Nil = nil,
          sticker : Root::TypeDocument | Nil = nil
        )
          @id = id
          @version = version
          @text = text
          @entities = entities
          @can_not_skip = can_not_skip
          @document = document
          @url = url
          @sticker = sticker
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!can_not_skip.nil? ? 1 : 0) |
              (!document.nil? ? 2 : 0) |
              (!url.nil? ? 4 : 0) |
              (!sticker.nil? ? 8 : 0)
          ).tl_serialize(io)
          @id.tl_serialize(io, true)
          @version.tl_serialize(io, true)
          @text.tl_serialize(io, true)
          @entities.tl_serialize(io, false)
          @document.tl_serialize(io, false) unless @document.nil?
          @url.tl_serialize(io, true) unless @url.nil?
          @sticker.tl_serialize(io, false) unless @sticker.nil?
        end

        def self.tl_deserialize(io : IO, bare = false)
          flags = Int32.tl_deserialize(io)
          new(
            id = Int32.tl_deserialize(io, true),
            version = Bytes.tl_deserialize(io, true),
            text = Bytes.tl_deserialize(io, true),
            entities = Array(Root::TypeMessageEntity).tl_deserialize(io, false),
            can_not_skip = flags & 1 == 1,
            document = flags & 2 == 1 ? Root::TypeDocument.tl_deserialize(io, false) : nil,
            url = flags & 4 == 1 ? Bytes.tl_deserialize(io, true) : nil,
            sticker = flags & 8 == 1 ? Root::TypeDocument.tl_deserialize(io, false) : nil,
          )
        end
      end

      class NoAppUpdate < TypeAppUpdate
        CONSTRUCTOR_ID = 0xC45A6536

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
        end

        def self.tl_deserialize(io : IO, bare = false)
          new()
        end
      end

      class InviteText < TypeInviteText
        CONSTRUCTOR_ID = 0x18CB9F78

        getter message : Bytes

        def initialize(
          message : Bytes | String | IO
        )
          @message = message
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @message.tl_serialize(io, true)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            message = Bytes.tl_deserialize(io, true),
          )
        end
      end

      class Support < TypeSupport
        CONSTRUCTOR_ID = 0x17C6B5F6

        getter phone_number : Bytes
        getter user : Root::TypeUser

        def initialize(
          phone_number : Bytes | String | IO,
          user : Root::TypeUser
        )
          @phone_number = phone_number
          @user = user
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @phone_number.tl_serialize(io, true)
          @user.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            phone_number = Bytes.tl_deserialize(io, true),
            user = Root::TypeUser.tl_deserialize(io, false),
          )
        end
      end

      class TermsOfService < TypeTermsOfService
        CONSTRUCTOR_ID = 0x780A0310

        getter id : Root::TypeDataJSON
        getter text : Bytes
        getter entities : Array(Root::TypeMessageEntity)
        getter popup : Bool | Nil
        getter min_age_confirm : Int32 | Nil

        def initialize(
          id : Root::TypeDataJSON,
          text : Bytes | String | IO,
          entities : Array(Root::TypeMessageEntity),
          popup : Bool | Nil = nil,
          min_age_confirm : Int32 | Nil = nil
        )
          @id = id
          @text = text
          @entities = entities
          @popup = popup
          @min_age_confirm = min_age_confirm
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!popup.nil? ? 1 : 0) |
              (!min_age_confirm.nil? ? 2 : 0)
          ).tl_serialize(io)
          @id.tl_serialize(io, false)
          @text.tl_serialize(io, true)
          @entities.tl_serialize(io, false)
          @min_age_confirm.tl_serialize(io, true) unless @min_age_confirm.nil?
        end

        def self.tl_deserialize(io : IO, bare = false)
          flags = Int32.tl_deserialize(io)
          new(
            id = Root::TypeDataJSON.tl_deserialize(io, false),
            text = Bytes.tl_deserialize(io, true),
            entities = Array(Root::TypeMessageEntity).tl_deserialize(io, false),
            popup = flags & 1 == 1,
            min_age_confirm = flags & 2 == 1 ? Int32.tl_deserialize(io, true) : nil,
          )
        end
      end

      class RecentMeUrls < TypeRecentMeUrls
        CONSTRUCTOR_ID = 0x0E0310D7

        getter urls : Array(Root::TypeRecentMeUrl)
        getter chats : Array(Root::TypeChat)
        getter users : Array(Root::TypeUser)

        def initialize(
          urls : Array(Root::TypeRecentMeUrl),
          chats : Array(Root::TypeChat),
          users : Array(Root::TypeUser)
        )
          @urls = urls
          @chats = chats
          @users = users
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @urls.tl_serialize(io, false)
          @chats.tl_serialize(io, false)
          @users.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            urls = Array(Root::TypeRecentMeUrl).tl_deserialize(io, false),
            chats = Array(Root::TypeChat).tl_deserialize(io, false),
            users = Array(Root::TypeUser).tl_deserialize(io, false),
          )
        end
      end

      class TermsOfServiceUpdateEmpty < TypeTermsOfServiceUpdate
        CONSTRUCTOR_ID = 0xE3309F7F

        getter expires : Int32

        def initialize(
          expires : Int32
        )
          @expires = expires
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @expires.tl_serialize(io, true)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            expires = Int32.tl_deserialize(io, true),
          )
        end
      end

      class TermsOfServiceUpdate < TypeTermsOfServiceUpdate
        CONSTRUCTOR_ID = 0x28ECF961

        getter expires : Int32
        getter terms_of_service : Help::TypeTermsOfService

        def initialize(
          expires : Int32,
          terms_of_service : Help::TypeTermsOfService
        )
          @expires = expires
          @terms_of_service = terms_of_service
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @expires.tl_serialize(io, true)
          @terms_of_service.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            expires = Int32.tl_deserialize(io, true),
            terms_of_service = Help::TypeTermsOfService.tl_deserialize(io, false),
          )
        end
      end

      class DeepLinkInfoEmpty < TypeDeepLinkInfo
        CONSTRUCTOR_ID = 0x66AFA166

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
        end

        def self.tl_deserialize(io : IO, bare = false)
          new()
        end
      end

      class DeepLinkInfo < TypeDeepLinkInfo
        CONSTRUCTOR_ID = 0x6A4EE832

        getter message : Bytes
        getter update_app : Bool | Nil
        getter entities : Array(Root::TypeMessageEntity) | Nil

        def initialize(
          message : Bytes | String | IO,
          update_app : Bool | Nil = nil,
          entities : Array(Root::TypeMessageEntity) | Nil = nil
        )
          @message = message
          @update_app = update_app
          @entities = entities
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!update_app.nil? ? 1 : 0) |
              (!entities.nil? ? 2 : 0)
          ).tl_serialize(io)
          @message.tl_serialize(io, true)
          @entities.tl_serialize(io, false) unless @entities.nil?
        end

        def self.tl_deserialize(io : IO, bare = false)
          flags = Int32.tl_deserialize(io)
          new(
            message = Bytes.tl_deserialize(io, true),
            update_app = flags & 1 == 1,
            entities = flags & 2 == 1 ? Array(Root::TypeMessageEntity).tl_deserialize(io, false) : nil,
          )
        end
      end

      class PassportConfigNotModified < TypePassportConfig
        CONSTRUCTOR_ID = 0xBFB9F457

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
        end

        def self.tl_deserialize(io : IO, bare = false)
          new()
        end
      end

      class PassportConfig < TypePassportConfig
        CONSTRUCTOR_ID = 0xA098D6AF

        getter hash : Int32
        getter countries_langs : Root::TypeDataJSON

        def initialize(
          hash : Int32,
          countries_langs : Root::TypeDataJSON
        )
          @hash = hash
          @countries_langs = countries_langs
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @hash.tl_serialize(io, true)
          @countries_langs.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            hash = Int32.tl_deserialize(io, true),
            countries_langs = Root::TypeDataJSON.tl_deserialize(io, false),
          )
        end
      end

      class SupportName < TypeSupportName
        CONSTRUCTOR_ID = 0x8C05F1C9

        getter name : Bytes

        def initialize(
          name : Bytes | String | IO
        )
          @name = name
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @name.tl_serialize(io, true)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            name = Bytes.tl_deserialize(io, true),
          )
        end
      end

      class UserInfoEmpty < TypeUserInfo
        CONSTRUCTOR_ID = 0xF3AE2EED

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
        end

        def self.tl_deserialize(io : IO, bare = false)
          new()
        end
      end

      class UserInfo < TypeUserInfo
        CONSTRUCTOR_ID = 0x01EB3758

        getter message : Bytes
        getter entities : Array(Root::TypeMessageEntity)
        getter author : Bytes
        getter date : Int32

        def initialize(
          message : Bytes | String | IO,
          entities : Array(Root::TypeMessageEntity),
          author : Bytes | String | IO,
          date : Int32
        )
          @message = message
          @entities = entities
          @author = author
          @date = date
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @message.tl_serialize(io, true)
          @entities.tl_serialize(io, false)
          @author.tl_serialize(io, true)
          @date.tl_serialize(io, true)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            message = Bytes.tl_deserialize(io, true),
            entities = Array(Root::TypeMessageEntity).tl_deserialize(io, false),
            author = Bytes.tl_deserialize(io, true),
            date = Int32.tl_deserialize(io, true),
          )
        end
      end

      class PromoDataEmpty < TypePromoData
        CONSTRUCTOR_ID = 0x98F6AC75

        getter expires : Int32

        def initialize(
          expires : Int32
        )
          @expires = expires
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @expires.tl_serialize(io, true)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            expires = Int32.tl_deserialize(io, true),
          )
        end
      end

      class PromoData < TypePromoData
        CONSTRUCTOR_ID = 0x8C39793F

        getter expires : Int32
        getter peer : Root::TypePeer
        getter chats : Array(Root::TypeChat)
        getter users : Array(Root::TypeUser)
        getter proxy : Bool | Nil
        getter psa_type : Bytes | Nil
        getter psa_message : Bytes | Nil

        def initialize(
          expires : Int32,
          peer : Root::TypePeer,
          chats : Array(Root::TypeChat),
          users : Array(Root::TypeUser),
          proxy : Bool | Nil = nil,
          psa_type : Bytes | Nil = nil,
          psa_message : Bytes | Nil = nil
        )
          @expires = expires
          @peer = peer
          @chats = chats
          @users = users
          @proxy = proxy
          @psa_type = psa_type
          @psa_message = psa_message
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!proxy.nil? ? 1 : 0) |
              (!psa_type.nil? ? 2 : 0) |
              (!psa_message.nil? ? 4 : 0)
          ).tl_serialize(io)
          @expires.tl_serialize(io, true)
          @peer.tl_serialize(io, false)
          @chats.tl_serialize(io, false)
          @users.tl_serialize(io, false)
          @psa_type.tl_serialize(io, true) unless @psa_type.nil?
          @psa_message.tl_serialize(io, true) unless @psa_message.nil?
        end

        def self.tl_deserialize(io : IO, bare = false)
          flags = Int32.tl_deserialize(io)
          new(
            expires = Int32.tl_deserialize(io, true),
            peer = Root::TypePeer.tl_deserialize(io, false),
            chats = Array(Root::TypeChat).tl_deserialize(io, false),
            users = Array(Root::TypeUser).tl_deserialize(io, false),
            proxy = flags & 1 == 1,
            psa_type = flags & 2 == 1 ? Bytes.tl_deserialize(io, true) : nil,
            psa_message = flags & 4 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          )
        end
      end

      class CountryCode < TypeCountryCode
        CONSTRUCTOR_ID = 0x4203C5EF

        getter country_code : Bytes
        getter prefixes : Array(Bytes) | Nil
        getter patterns : Array(Bytes) | Nil

        def initialize(
          country_code : Bytes | String | IO,
          prefixes : Array(Bytes) | Nil = nil,
          patterns : Array(Bytes) | Nil = nil
        )
          @country_code = country_code
          @prefixes = prefixes
          @patterns = patterns
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!prefixes.nil? ? 1 : 0) |
              (!patterns.nil? ? 2 : 0)
          ).tl_serialize(io)
          @country_code.tl_serialize(io, true)
          @prefixes.tl_serialize(io, false) unless @prefixes.nil?
          @patterns.tl_serialize(io, false) unless @patterns.nil?
        end

        def self.tl_deserialize(io : IO, bare = false)
          flags = Int32.tl_deserialize(io)
          new(
            country_code = Bytes.tl_deserialize(io, true),
            prefixes = flags & 1 == 1 ? Array(Bytes).tl_deserialize(io, false) : nil,
            patterns = flags & 2 == 1 ? Array(Bytes).tl_deserialize(io, false) : nil,
          )
        end
      end

      class Country < TypeCountry
        CONSTRUCTOR_ID = 0xC3878E23

        getter iso2 : Bytes
        getter default_name : Bytes
        getter country_codes : Array(Help::TypeCountryCode)
        getter hidden : Bool | Nil
        getter name : Bytes | Nil

        def initialize(
          iso2 : Bytes | String | IO,
          default_name : Bytes | String | IO,
          country_codes : Array(Help::TypeCountryCode),
          hidden : Bool | Nil = nil,
          name : Bytes | Nil = nil
        )
          @iso2 = iso2
          @default_name = default_name
          @country_codes = country_codes
          @hidden = hidden
          @name = name
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!hidden.nil? ? 1 : 0) |
              (!name.nil? ? 2 : 0)
          ).tl_serialize(io)
          @iso2.tl_serialize(io, true)
          @default_name.tl_serialize(io, true)
          @name.tl_serialize(io, true) unless @name.nil?
          @country_codes.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          flags = Int32.tl_deserialize(io)
          new(
            iso2 = Bytes.tl_deserialize(io, true),
            default_name = Bytes.tl_deserialize(io, true),
            country_codes = Array(Help::TypeCountryCode).tl_deserialize(io, false),
            hidden = flags & 1 == 1,
            name = flags & 2 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          )
        end
      end

      class CountriesListNotModified < TypeCountriesList
        CONSTRUCTOR_ID = 0x93CC1F32

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
        end

        def self.tl_deserialize(io : IO, bare = false)
          new()
        end
      end

      class CountriesList < TypeCountriesList
        CONSTRUCTOR_ID = 0x87D0759E

        getter countries : Array(Help::TypeCountry)
        getter hash : Int32

        def initialize(
          countries : Array(Help::TypeCountry),
          hash : Int32
        )
          @countries = countries
          @hash = hash
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @countries.tl_serialize(io, false)
          @hash.tl_serialize(io, true)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            countries = Array(Help::TypeCountry).tl_deserialize(io, false),
            hash = Int32.tl_deserialize(io, true),
          )
        end
      end

      class ConfigSimple < TypeConfigSimple
        CONSTRUCTOR_ID = 0x5A592A6C

        getter date : Int32
        getter expires : Int32
        getter rules : Array(Root::TypeAccessPointRule)

        def initialize(
          date : Int32,
          expires : Int32,
          rules : Array(Root::TypeAccessPointRule)
        )
          @date = date
          @expires = expires
          @rules = rules
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @date.tl_serialize(io, true)
          @expires.tl_serialize(io, true)
          @rules.tl_serialize(io, true)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            date = Int32.tl_deserialize(io, true),
            expires = Int32.tl_deserialize(io, true),
            rules = Array(Root::TypeAccessPointRule).tl_deserialize(io, true),
          )
        end
      end

      class GetConfig < TLRequest
        CONSTRUCTOR_ID = 0xC4F9186B

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
        end

        def return_type
          Root::TypeConfig
        end
      end

      class GetNearestDc < TLRequest
        CONSTRUCTOR_ID = 0x1FB33026

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
        end

        def return_type
          Root::TypeNearestDc
        end
      end

      class GetAppUpdate < TLRequest
        CONSTRUCTOR_ID = 0x522D5A7D

        getter source : Bytes

        def initialize(
          source : Bytes | String | IO
        )
          @source = source
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @source.tl_serialize(io, true)
        end

        def return_type
          Help::TypeAppUpdate
        end
      end

      class GetInviteText < TLRequest
        CONSTRUCTOR_ID = 0x4D392343

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
        end

        def return_type
          Help::TypeInviteText
        end
      end

      class GetSupport < TLRequest
        CONSTRUCTOR_ID = 0x9CDF08CD

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
        end

        def return_type
          Help::TypeSupport
        end
      end

      class GetAppChangelog < TLRequest
        CONSTRUCTOR_ID = 0x9010EF6F

        getter prev_app_version : Bytes

        def initialize(
          prev_app_version : Bytes | String | IO
        )
          @prev_app_version = prev_app_version
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @prev_app_version.tl_serialize(io, true)
        end

        def return_type
          Root::TypeUpdates
        end
      end

      class SetBotUpdatesStatus < TLRequest
        CONSTRUCTOR_ID = 0xEC22CFCD

        getter pending_updates_count : Int32
        getter message : Bytes

        def initialize(
          pending_updates_count : Int32,
          message : Bytes | String | IO
        )
          @pending_updates_count = pending_updates_count
          @message = message
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @pending_updates_count.tl_serialize(io, true)
          @message.tl_serialize(io, true)
        end

        def return_type
          Bool
        end
      end

      class GetCdnConfig < TLRequest
        CONSTRUCTOR_ID = 0x52029342

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
        end

        def return_type
          Root::TypeCdnConfig
        end
      end

      class GetRecentMeUrls < TLRequest
        CONSTRUCTOR_ID = 0x3DC0F114

        getter referer : Bytes

        def initialize(
          referer : Bytes | String | IO
        )
          @referer = referer
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @referer.tl_serialize(io, true)
        end

        def return_type
          Help::TypeRecentMeUrls
        end
      end

      class GetTermsOfServiceUpdate < TLRequest
        CONSTRUCTOR_ID = 0x2CA51FD1

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
        end

        def return_type
          Help::TypeTermsOfServiceUpdate
        end
      end

      class AcceptTermsOfService < TLRequest
        CONSTRUCTOR_ID = 0xEE72F79A

        getter id : Root::TypeDataJSON

        def initialize(
          id : Root::TypeDataJSON
        )
          @id = id
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @id.tl_serialize(io, false)
        end

        def return_type
          Bool
        end
      end

      class GetDeepLinkInfo < TLRequest
        CONSTRUCTOR_ID = 0x3FEDC75F

        getter path : Bytes

        def initialize(
          path : Bytes | String | IO
        )
          @path = path
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @path.tl_serialize(io, true)
        end

        def return_type
          Help::TypeDeepLinkInfo
        end
      end

      class GetAppConfig < TLRequest
        CONSTRUCTOR_ID = 0x98914110

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
        end

        def return_type
          Root::TypeJSONValue
        end
      end

      class SaveAppLog < TLRequest
        CONSTRUCTOR_ID = 0x6F02F748

        getter events : Array(Root::TypeInputAppEvent)

        def initialize(
          events : Array(Root::TypeInputAppEvent)
        )
          @events = events
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @events.tl_serialize(io, false)
        end

        def return_type
          Bool
        end
      end

      class GetPassportConfig < TLRequest
        CONSTRUCTOR_ID = 0xC661AD08

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
          Help::TypePassportConfig
        end
      end

      class GetSupportName < TLRequest
        CONSTRUCTOR_ID = 0xD360E72C

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
        end

        def return_type
          Help::TypeSupportName
        end
      end

      class GetUserInfo < TLRequest
        CONSTRUCTOR_ID = 0x038A08D3

        getter user_id : Root::TypeInputUser

        def initialize(
          user_id : Root::TypeInputUser
        )
          @user_id = user_id
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @user_id.tl_serialize(io, false)
        end

        def return_type
          Help::TypeUserInfo
        end
      end

      class EditUserInfo < TLRequest
        CONSTRUCTOR_ID = 0x66B91B70

        getter user_id : Root::TypeInputUser
        getter message : Bytes
        getter entities : Array(Root::TypeMessageEntity)

        def initialize(
          user_id : Root::TypeInputUser,
          message : Bytes | String | IO,
          entities : Array(Root::TypeMessageEntity)
        )
          @user_id = user_id
          @message = message
          @entities = entities
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @user_id.tl_serialize(io, false)
          @message.tl_serialize(io, true)
          @entities.tl_serialize(io, false)
        end

        def return_type
          Help::TypeUserInfo
        end
      end

      class GetPromoData < TLRequest
        CONSTRUCTOR_ID = 0xC0977421

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
        end

        def return_type
          Help::TypePromoData
        end
      end

      class HidePromoData < TLRequest
        CONSTRUCTOR_ID = 0x1E251C95

        getter peer : Root::TypeInputPeer

        def initialize(
          peer : Root::TypeInputPeer
        )
          @peer = peer
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
        end

        def return_type
          Bool
        end
      end

      class DismissSuggestion < TLRequest
        CONSTRUCTOR_ID = 0xF50DBAA1

        getter peer : Root::TypeInputPeer
        getter suggestion : Bytes

        def initialize(
          peer : Root::TypeInputPeer,
          suggestion : Bytes | String | IO
        )
          @peer = peer
          @suggestion = suggestion
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @suggestion.tl_serialize(io, true)
        end

        def return_type
          Bool
        end
      end

      class GetCountriesList < TLRequest
        CONSTRUCTOR_ID = 0x735787A8

        getter lang_code : Bytes
        getter hash : Int32

        def initialize(
          lang_code : Bytes | String | IO,
          hash : Int32
        )
          @lang_code = lang_code
          @hash = hash
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @lang_code.tl_serialize(io, true)
          @hash.tl_serialize(io, true)
        end

        def return_type
          Help::TypeCountriesList
        end
      end
    end
  end
end
