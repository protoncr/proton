# Copyright 2021 - Chris Watson and contributors.
#
# Licensed under the MIT License. You should have received a copy of the license
# with this project. By using this project you agree to abide by all terms
# contained therein.
#
# This module contains generated, raw MTProto types for Telegram's user API.
# It is not advised to modify this code directly, other than to test
# changes. All changes should be made in the code generator.

module Proton::TL
  module Help
    abstract class TypeAppUpdate < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xCCBBCE30
          AppUpdate.tl_deserialize(io, bare)
        when 0xC45A6536
          NoAppUpdate.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInviteText < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x18CB9F78
          InviteText.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeSupport < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x17C6B5F6
          Support.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeTermsOfService < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
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
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x0E0310D7
          RecentMeUrls.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeTermsOfServiceUpdate < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xE3309F7F
          TermsOfServiceUpdateEmpty.tl_deserialize(io, bare)
        when 0x28ECF961
          TermsOfServiceUpdate.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeDeepLinkInfo < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x66AFA166
          DeepLinkInfoEmpty.tl_deserialize(io, bare)
        when 0x6A4EE832
          DeepLinkInfo.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePassportConfig < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xBFB9F457
          PassportConfigNotModified.tl_deserialize(io, bare)
        when 0xA098D6AF
          PassportConfig.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeSupportName < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x8C05F1C9
          SupportName.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeUserInfo < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xF3AE2EED
          UserInfoEmpty.tl_deserialize(io, bare)
        when 0x01EB3758
          UserInfo.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePromoData < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x98F6AC75
          PromoDataEmpty.tl_deserialize(io, bare)
        when 0x8C39793F
          PromoData.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeCountryCode < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
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
        constructor_id = UInt32.tl_deserialize(io)
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
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x93CC1F32
          CountriesListNotModified.tl_deserialize(io, bare)
        when 0x87D0759E
          CountriesList.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeConfig < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeNearestDc < TLObject
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

    abstract class TypeCdnConfig < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeJSONValue < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeConfigSimple < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
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
      getter constructor_id : UInt32 = 0xCCBBCE30_u32
      class_getter constructor_id : UInt32 = 0xCCBBCE30_u32

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
        @id = TL::Utils.parse_int!(id, Int32)
        @version = TL::Utils.parse_bytes!(version)
        @text = TL::Utils.parse_bytes!(text)
        @entities = entities
        @can_not_skip = can_not_skip
        @document = document
        @url = TL::Utils.parse_bytes(url)
        @sticker = sticker
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!can_not_skip.nil? ? 0x01 : 0) |
            (!document.nil? ? 0x02 : 0) |
            (!url.nil? ? 0x04 : 0) |
            (!sticker.nil? ? 0x08 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io)
        @version.tl_serialize(io)
        @text.tl_serialize(io)
        @entities.tl_serialize(io)
        @document.tl_serialize(io) unless @document.nil?
        @url.tl_serialize(io) unless @url.nil?
        @sticker.tl_serialize(io) unless @sticker.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        flags = UInt32.tl_deserialize(io)
        new(
          id: Int32.tl_deserialize(io),
          version: Bytes.tl_deserialize(io),
          text: Bytes.tl_deserialize(io),
          entities: Array(Root::TypeMessageEntity).tl_deserialize(io),
          can_not_skip: flags & 0x01 > 0 || nil,
          document: flags & 0x02 > 0 ? Root::TypeDocument.tl_deserialize(io) : nil,
          url: flags & 0x04 > 0 ? Bytes.tl_deserialize(io) : nil,
          sticker: flags & 0x08 > 0 ? Root::TypeDocument.tl_deserialize(io) : nil,
        )
      end
    end

    class NoAppUpdate < TypeAppUpdate
      getter constructor_id : UInt32 = 0xC45A6536_u32
      class_getter constructor_id : UInt32 = 0xC45A6536_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new()
      end
    end

    class InviteText < TypeInviteText
      getter constructor_id : UInt32 = 0x18CB9F78_u32
      class_getter constructor_id : UInt32 = 0x18CB9F78_u32

      getter message : Bytes

      def initialize(
        message : Bytes | String | IO
      )
        @message = TL::Utils.parse_bytes!(message)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @message.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          message: Bytes.tl_deserialize(io),
        )
      end
    end

    class Support < TypeSupport
      getter constructor_id : UInt32 = 0x17C6B5F6_u32
      class_getter constructor_id : UInt32 = 0x17C6B5F6_u32

      getter phone_number : Bytes
      getter user : Root::TypeUser

      def initialize(
        phone_number : Bytes | String | IO,
        user : Root::TypeUser
      )
        @phone_number = TL::Utils.parse_bytes!(phone_number)
        @user = user
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @phone_number.tl_serialize(io)
        @user.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          phone_number: Bytes.tl_deserialize(io),
          user: Root::TypeUser.tl_deserialize(io),
        )
      end
    end

    class TermsOfService < TypeTermsOfService
      getter constructor_id : UInt32 = 0x780A0310_u32
      class_getter constructor_id : UInt32 = 0x780A0310_u32

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
        @text = TL::Utils.parse_bytes!(text)
        @entities = entities
        @popup = popup
        @min_age_confirm = TL::Utils.parse_int(min_age_confirm, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!popup.nil? ? 0x01 : 0) |
            (!min_age_confirm.nil? ? 0x02 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io)
        @text.tl_serialize(io)
        @entities.tl_serialize(io)
        @min_age_confirm.tl_serialize(io) unless @min_age_confirm.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        flags = UInt32.tl_deserialize(io)
        new(
          id: Root::TypeDataJSON.tl_deserialize(io),
          text: Bytes.tl_deserialize(io),
          entities: Array(Root::TypeMessageEntity).tl_deserialize(io),
          popup: flags & 0x01 > 0 || nil,
          min_age_confirm: flags & 0x02 > 0 ? Int32.tl_deserialize(io) : nil,
        )
      end
    end

    class RecentMeUrls < TypeRecentMeUrls
      getter constructor_id : UInt32 = 0x0E0310D7_u32
      class_getter constructor_id : UInt32 = 0x0E0310D7_u32

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
        constructor_id.tl_serialize(io) unless bare
        @urls.tl_serialize(io)
        @chats.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          urls: Array(Root::TypeRecentMeUrl).tl_deserialize(io),
          chats: Array(Root::TypeChat).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
        )
      end
    end

    class TermsOfServiceUpdateEmpty < TypeTermsOfServiceUpdate
      getter constructor_id : UInt32 = 0xE3309F7F_u32
      class_getter constructor_id : UInt32 = 0xE3309F7F_u32

      getter expires : Int32

      def initialize(
        expires : Int32
      )
        @expires = TL::Utils.parse_int!(expires, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @expires.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          expires: Int32.tl_deserialize(io),
        )
      end
    end

    class TermsOfServiceUpdate < TypeTermsOfServiceUpdate
      getter constructor_id : UInt32 = 0x28ECF961_u32
      class_getter constructor_id : UInt32 = 0x28ECF961_u32

      getter expires : Int32
      getter terms_of_service : Help::TypeTermsOfService

      def initialize(
        expires : Int32,
        terms_of_service : Help::TypeTermsOfService
      )
        @expires = TL::Utils.parse_int!(expires, Int32)
        @terms_of_service = terms_of_service
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @expires.tl_serialize(io)
        @terms_of_service.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          expires: Int32.tl_deserialize(io),
          terms_of_service: Help::TypeTermsOfService.tl_deserialize(io),
        )
      end
    end

    class DeepLinkInfoEmpty < TypeDeepLinkInfo
      getter constructor_id : UInt32 = 0x66AFA166_u32
      class_getter constructor_id : UInt32 = 0x66AFA166_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new()
      end
    end

    class DeepLinkInfo < TypeDeepLinkInfo
      getter constructor_id : UInt32 = 0x6A4EE832_u32
      class_getter constructor_id : UInt32 = 0x6A4EE832_u32

      getter message : Bytes
      getter update_app : Bool | Nil
      getter entities : Array(Root::TypeMessageEntity) | Nil

      def initialize(
        message : Bytes | String | IO,
        update_app : Bool | Nil = nil,
        entities : Array(Root::TypeMessageEntity) | Nil = nil
      )
        @message = TL::Utils.parse_bytes!(message)
        @update_app = update_app
        @entities = entities
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!update_app.nil? ? 0x01 : 0) |
            (!entities.nil? ? 0x02 : 0)
        ).tl_serialize(io)
        @message.tl_serialize(io)
        @entities.tl_serialize(io) unless @entities.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        flags = UInt32.tl_deserialize(io)
        new(
          message: Bytes.tl_deserialize(io),
          update_app: flags & 0x01 > 0 || nil,
          entities: flags & 0x02 > 0 ? Array(Root::TypeMessageEntity).tl_deserialize(io) : nil,
        )
      end
    end

    class PassportConfigNotModified < TypePassportConfig
      getter constructor_id : UInt32 = 0xBFB9F457_u32
      class_getter constructor_id : UInt32 = 0xBFB9F457_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new()
      end
    end

    class PassportConfig < TypePassportConfig
      getter constructor_id : UInt32 = 0xA098D6AF_u32
      class_getter constructor_id : UInt32 = 0xA098D6AF_u32

      getter hash : Int32
      getter countries_langs : Root::TypeDataJSON

      def initialize(
        hash : Int32,
        countries_langs : Root::TypeDataJSON
      )
        @hash = TL::Utils.parse_int!(hash, Int32)
        @countries_langs = countries_langs
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @hash.tl_serialize(io)
        @countries_langs.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          hash: Int32.tl_deserialize(io),
          countries_langs: Root::TypeDataJSON.tl_deserialize(io),
        )
      end
    end

    class SupportName < TypeSupportName
      getter constructor_id : UInt32 = 0x8C05F1C9_u32
      class_getter constructor_id : UInt32 = 0x8C05F1C9_u32

      getter name : Bytes

      def initialize(
        name : Bytes | String | IO
      )
        @name = TL::Utils.parse_bytes!(name)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @name.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          name: Bytes.tl_deserialize(io),
        )
      end
    end

    class UserInfoEmpty < TypeUserInfo
      getter constructor_id : UInt32 = 0xF3AE2EED_u32
      class_getter constructor_id : UInt32 = 0xF3AE2EED_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new()
      end
    end

    class UserInfo < TypeUserInfo
      getter constructor_id : UInt32 = 0x01EB3758_u32
      class_getter constructor_id : UInt32 = 0x01EB3758_u32

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
        @message = TL::Utils.parse_bytes!(message)
        @entities = entities
        @author = TL::Utils.parse_bytes!(author)
        @date = TL::Utils.parse_int!(date, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @message.tl_serialize(io)
        @entities.tl_serialize(io)
        @author.tl_serialize(io)
        @date.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          message: Bytes.tl_deserialize(io),
          entities: Array(Root::TypeMessageEntity).tl_deserialize(io),
          author: Bytes.tl_deserialize(io),
          date: Int32.tl_deserialize(io),
        )
      end
    end

    class PromoDataEmpty < TypePromoData
      getter constructor_id : UInt32 = 0x98F6AC75_u32
      class_getter constructor_id : UInt32 = 0x98F6AC75_u32

      getter expires : Int32

      def initialize(
        expires : Int32
      )
        @expires = TL::Utils.parse_int!(expires, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @expires.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          expires: Int32.tl_deserialize(io),
        )
      end
    end

    class PromoData < TypePromoData
      getter constructor_id : UInt32 = 0x8C39793F_u32
      class_getter constructor_id : UInt32 = 0x8C39793F_u32

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
        @expires = TL::Utils.parse_int!(expires, Int32)
        @peer = peer
        @chats = chats
        @users = users
        @proxy = proxy
        @psa_type = TL::Utils.parse_bytes(psa_type)
        @psa_message = TL::Utils.parse_bytes(psa_message)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!proxy.nil? ? 0x01 : 0) |
            (!psa_type.nil? ? 0x02 : 0) |
            (!psa_message.nil? ? 0x04 : 0)
        ).tl_serialize(io)
        @expires.tl_serialize(io)
        @peer.tl_serialize(io)
        @chats.tl_serialize(io)
        @users.tl_serialize(io)
        @psa_type.tl_serialize(io) unless @psa_type.nil?
        @psa_message.tl_serialize(io) unless @psa_message.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        flags = UInt32.tl_deserialize(io)
        new(
          expires: Int32.tl_deserialize(io),
          peer: Root::TypePeer.tl_deserialize(io),
          chats: Array(Root::TypeChat).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
          proxy: flags & 0x01 > 0 || nil,
          psa_type: flags & 0x02 > 0 ? Bytes.tl_deserialize(io) : nil,
          psa_message: flags & 0x04 > 0 ? Bytes.tl_deserialize(io) : nil,
        )
      end
    end

    class CountryCode < TypeCountryCode
      getter constructor_id : UInt32 = 0x4203C5EF_u32
      class_getter constructor_id : UInt32 = 0x4203C5EF_u32

      getter country_code : Bytes
      getter prefixes : Array(Bytes) | Nil
      getter patterns : Array(Bytes) | Nil

      def initialize(
        country_code : Bytes | String | IO,
        prefixes : Array(Bytes) | Nil = nil,
        patterns : Array(Bytes) | Nil = nil
      )
        @country_code = TL::Utils.parse_bytes!(country_code)
        @prefixes = prefixes
        @patterns = patterns
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!prefixes.nil? ? 0x01 : 0) |
            (!patterns.nil? ? 0x02 : 0)
        ).tl_serialize(io)
        @country_code.tl_serialize(io)
        @prefixes.tl_serialize(io) unless @prefixes.nil?
        @patterns.tl_serialize(io) unless @patterns.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        flags = UInt32.tl_deserialize(io)
        new(
          country_code: Bytes.tl_deserialize(io),
          prefixes: flags & 0x01 > 0 ? Array(Bytes).tl_deserialize(io) : nil,
          patterns: flags & 0x02 > 0 ? Array(Bytes).tl_deserialize(io) : nil,
        )
      end
    end

    class Country < TypeCountry
      getter constructor_id : UInt32 = 0xC3878E23_u32
      class_getter constructor_id : UInt32 = 0xC3878E23_u32

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
        @iso2 = TL::Utils.parse_bytes!(iso2)
        @default_name = TL::Utils.parse_bytes!(default_name)
        @country_codes = country_codes
        @hidden = hidden
        @name = TL::Utils.parse_bytes(name)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!hidden.nil? ? 0x01 : 0) |
            (!name.nil? ? 0x02 : 0)
        ).tl_serialize(io)
        @iso2.tl_serialize(io)
        @default_name.tl_serialize(io)
        @name.tl_serialize(io) unless @name.nil?
        @country_codes.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        flags = UInt32.tl_deserialize(io)
        new(
          iso2: Bytes.tl_deserialize(io),
          default_name: Bytes.tl_deserialize(io),
          country_codes: Array(Help::TypeCountryCode).tl_deserialize(io),
          hidden: flags & 0x01 > 0 || nil,
          name: flags & 0x02 > 0 ? Bytes.tl_deserialize(io) : nil,
        )
      end
    end

    class CountriesListNotModified < TypeCountriesList
      getter constructor_id : UInt32 = 0x93CC1F32_u32
      class_getter constructor_id : UInt32 = 0x93CC1F32_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new()
      end
    end

    class CountriesList < TypeCountriesList
      getter constructor_id : UInt32 = 0x87D0759E_u32
      class_getter constructor_id : UInt32 = 0x87D0759E_u32

      getter countries : Array(Help::TypeCountry)
      getter hash : Int32

      def initialize(
        countries : Array(Help::TypeCountry),
        hash : Int32
      )
        @countries = countries
        @hash = TL::Utils.parse_int!(hash, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @countries.tl_serialize(io)
        @hash.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          countries: Array(Help::TypeCountry).tl_deserialize(io),
          hash: Int32.tl_deserialize(io),
        )
      end
    end

    class ConfigSimple < TypeConfigSimple
      getter constructor_id : UInt32 = 0x5A592A6C_u32
      class_getter constructor_id : UInt32 = 0x5A592A6C_u32

      getter date : Int32
      getter expires : Int32
      getter rules : Array(Root::TypeAccessPointRule)

      def initialize(
        date : Int32,
        expires : Int32,
        rules : Array(Root::TypeAccessPointRule)
      )
        @date = TL::Utils.parse_int!(date, Int32)
        @expires = TL::Utils.parse_int!(expires, Int32)
        @rules = rules
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @date.tl_serialize(io)
        @expires.tl_serialize(io)
        @rules.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          date: Int32.tl_deserialize(io),
          expires: Int32.tl_deserialize(io),
          rules: Array(Root::TypeAccessPointRule).tl_deserialize(io, true),
        )
      end
    end

    class GetConfig < TLRequest
      getter constructor_id : UInt32 = 0xC4F9186B_u32
      class_getter constructor_id : UInt32 = 0xC4F9186B_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.return_type
        Root::TypeConfig
      end
    end

    class GetNearestDc < TLRequest
      getter constructor_id : UInt32 = 0x1FB33026_u32
      class_getter constructor_id : UInt32 = 0x1FB33026_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.return_type
        Root::TypeNearestDc
      end
    end

    class GetAppUpdate < TLRequest
      getter constructor_id : UInt32 = 0x522D5A7D_u32
      class_getter constructor_id : UInt32 = 0x522D5A7D_u32

      getter source : Bytes

      def initialize(
        source : Bytes | String | IO
      )
        @source = TL::Utils.parse_bytes!(source)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @source.tl_serialize(io)
      end

      def self.return_type
        Help::TypeAppUpdate
      end
    end

    class GetInviteText < TLRequest
      getter constructor_id : UInt32 = 0x4D392343_u32
      class_getter constructor_id : UInt32 = 0x4D392343_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.return_type
        Help::TypeInviteText
      end
    end

    class GetSupport < TLRequest
      getter constructor_id : UInt32 = 0x9CDF08CD_u32
      class_getter constructor_id : UInt32 = 0x9CDF08CD_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.return_type
        Help::TypeSupport
      end
    end

    class GetAppChangelog < TLRequest
      getter constructor_id : UInt32 = 0x9010EF6F_u32
      class_getter constructor_id : UInt32 = 0x9010EF6F_u32

      getter prev_app_version : Bytes

      def initialize(
        prev_app_version : Bytes | String | IO
      )
        @prev_app_version = TL::Utils.parse_bytes!(prev_app_version)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @prev_app_version.tl_serialize(io)
      end

      def self.return_type
        Root::TypeUpdates
      end
    end

    class SetBotUpdatesStatus < TLRequest
      getter constructor_id : UInt32 = 0xEC22CFCD_u32
      class_getter constructor_id : UInt32 = 0xEC22CFCD_u32

      getter pending_updates_count : Int32
      getter message : Bytes

      def initialize(
        pending_updates_count : Int32,
        message : Bytes | String | IO
      )
        @pending_updates_count = TL::Utils.parse_int!(pending_updates_count, Int32)
        @message = TL::Utils.parse_bytes!(message)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @pending_updates_count.tl_serialize(io)
        @message.tl_serialize(io)
      end

      def self.return_type
        Bool
      end
    end

    class GetCdnConfig < TLRequest
      getter constructor_id : UInt32 = 0x52029342_u32
      class_getter constructor_id : UInt32 = 0x52029342_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.return_type
        Root::TypeCdnConfig
      end
    end

    class GetRecentMeUrls < TLRequest
      getter constructor_id : UInt32 = 0x3DC0F114_u32
      class_getter constructor_id : UInt32 = 0x3DC0F114_u32

      getter referer : Bytes

      def initialize(
        referer : Bytes | String | IO
      )
        @referer = TL::Utils.parse_bytes!(referer)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @referer.tl_serialize(io)
      end

      def self.return_type
        Help::TypeRecentMeUrls
      end
    end

    class GetTermsOfServiceUpdate < TLRequest
      getter constructor_id : UInt32 = 0x2CA51FD1_u32
      class_getter constructor_id : UInt32 = 0x2CA51FD1_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.return_type
        Help::TypeTermsOfServiceUpdate
      end
    end

    class AcceptTermsOfService < TLRequest
      getter constructor_id : UInt32 = 0xEE72F79A_u32
      class_getter constructor_id : UInt32 = 0xEE72F79A_u32

      getter id : Root::TypeDataJSON

      def initialize(
        id : Root::TypeDataJSON
      )
        @id = id
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @id.tl_serialize(io)
      end

      def self.return_type
        Bool
      end
    end

    class GetDeepLinkInfo < TLRequest
      getter constructor_id : UInt32 = 0x3FEDC75F_u32
      class_getter constructor_id : UInt32 = 0x3FEDC75F_u32

      getter path : Bytes

      def initialize(
        path : Bytes | String | IO
      )
        @path = TL::Utils.parse_bytes!(path)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @path.tl_serialize(io)
      end

      def self.return_type
        Help::TypeDeepLinkInfo
      end
    end

    class GetAppConfig < TLRequest
      getter constructor_id : UInt32 = 0x98914110_u32
      class_getter constructor_id : UInt32 = 0x98914110_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.return_type
        Root::TypeJSONValue
      end
    end

    class SaveAppLog < TLRequest
      getter constructor_id : UInt32 = 0x6F02F748_u32
      class_getter constructor_id : UInt32 = 0x6F02F748_u32

      getter events : Array(Root::TypeInputAppEvent)

      def initialize(
        events : Array(Root::TypeInputAppEvent)
      )
        @events = events
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @events.tl_serialize(io)
      end

      def self.return_type
        Bool
      end
    end

    class GetPassportConfig < TLRequest
      getter constructor_id : UInt32 = 0xC661AD08_u32
      class_getter constructor_id : UInt32 = 0xC661AD08_u32

      getter hash : Int32

      def initialize(
        hash : Int32
      )
        @hash = TL::Utils.parse_int!(hash, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @hash.tl_serialize(io)
      end

      def self.return_type
        Help::TypePassportConfig
      end
    end

    class GetSupportName < TLRequest
      getter constructor_id : UInt32 = 0xD360E72C_u32
      class_getter constructor_id : UInt32 = 0xD360E72C_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.return_type
        Help::TypeSupportName
      end
    end

    class GetUserInfo < TLRequest
      getter constructor_id : UInt32 = 0x038A08D3_u32
      class_getter constructor_id : UInt32 = 0x038A08D3_u32

      getter user_id : Root::TypeInputUser

      def initialize(
        user_id : Root::TypeInputUser
      )
        @user_id = user_id
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @user_id.tl_serialize(io)
      end

      def self.return_type
        Help::TypeUserInfo
      end
    end

    class EditUserInfo < TLRequest
      getter constructor_id : UInt32 = 0x66B91B70_u32
      class_getter constructor_id : UInt32 = 0x66B91B70_u32

      getter user_id : Root::TypeInputUser
      getter message : Bytes
      getter entities : Array(Root::TypeMessageEntity)

      def initialize(
        user_id : Root::TypeInputUser,
        message : Bytes | String | IO,
        entities : Array(Root::TypeMessageEntity)
      )
        @user_id = user_id
        @message = TL::Utils.parse_bytes!(message)
        @entities = entities
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @user_id.tl_serialize(io)
        @message.tl_serialize(io)
        @entities.tl_serialize(io)
      end

      def self.return_type
        Help::TypeUserInfo
      end
    end

    class GetPromoData < TLRequest
      getter constructor_id : UInt32 = 0xC0977421_u32
      class_getter constructor_id : UInt32 = 0xC0977421_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.return_type
        Help::TypePromoData
      end
    end

    class HidePromoData < TLRequest
      getter constructor_id : UInt32 = 0x1E251C95_u32
      class_getter constructor_id : UInt32 = 0x1E251C95_u32

      getter peer : Root::TypeInputPeer

      def initialize(
        peer : Root::TypeInputPeer
      )
        @peer = peer
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
      end

      def self.return_type
        Bool
      end
    end

    class DismissSuggestion < TLRequest
      getter constructor_id : UInt32 = 0xF50DBAA1_u32
      class_getter constructor_id : UInt32 = 0xF50DBAA1_u32

      getter peer : Root::TypeInputPeer
      getter suggestion : Bytes

      def initialize(
        peer : Root::TypeInputPeer,
        suggestion : Bytes | String | IO
      )
        @peer = peer
        @suggestion = TL::Utils.parse_bytes!(suggestion)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @suggestion.tl_serialize(io)
      end

      def self.return_type
        Bool
      end
    end

    class GetCountriesList < TLRequest
      getter constructor_id : UInt32 = 0x735787A8_u32
      class_getter constructor_id : UInt32 = 0x735787A8_u32

      getter lang_code : Bytes
      getter hash : Int32

      def initialize(
        lang_code : Bytes | String | IO,
        hash : Int32
      )
        @lang_code = TL::Utils.parse_bytes!(lang_code)
        @hash = TL::Utils.parse_int!(hash, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @lang_code.tl_serialize(io)
        @hash.tl_serialize(io)
      end

      def self.return_type
        Help::TypeCountriesList
      end
    end
  end
end
