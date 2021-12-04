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
  module Contacts
    abstract class TypeContacts < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xB74BA9D2
          ContactsNotModified.tl_deserialize(io, bare)
        when 0xEAE87E42
          Contacts.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeImportedContacts < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x77D01C3B
          ImportedContacts.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeBlocked < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x0ADE1591
          Blocked.tl_deserialize(io, bare)
        when 0xE1664194
          BlockedSlice.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeFound < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xB3134D9D
          Found.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeResolvedPeer < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x7F077AD9
          ResolvedPeer.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeTopPeers < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xDE266EF5
          TopPeersNotModified.tl_deserialize(io, bare)
        when 0x70B772A8
          TopPeers.tl_deserialize(io, bare)
        when 0xB52C939D
          TopPeersDisabled.tl_deserialize(io, bare)
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

    class ContactsNotModified < TypeContacts
      getter constructor_id : UInt32 = 0xB74BA9D2_u32
      class_getter constructor_id : UInt32 = 0xB74BA9D2_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new()
      end
    end

    class Contacts < TypeContacts
      getter constructor_id : UInt32 = 0xEAE87E42_u32
      class_getter constructor_id : UInt32 = 0xEAE87E42_u32

      getter contacts : Array(Root::TypeContact)
      getter saved_count : Int32
      getter users : Array(Root::TypeUser)

      def initialize(
        contacts : Array(Root::TypeContact),
        saved_count : Int32,
        users : Array(Root::TypeUser)
      )
        @contacts = contacts
        @saved_count = TL::Utils.parse_int!(saved_count, Int32)
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @contacts.tl_serialize(io)
        @saved_count.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          contacts: Array(Root::TypeContact).tl_deserialize(io),
          saved_count: Int32.tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
        )
      end
    end

    class ImportedContacts < TypeImportedContacts
      getter constructor_id : UInt32 = 0x77D01C3B_u32
      class_getter constructor_id : UInt32 = 0x77D01C3B_u32

      getter imported : Array(Root::TypeImportedContact)
      getter popular_invites : Array(Root::TypePopularContact)
      getter retry_contacts : Array(Int64)
      getter users : Array(Root::TypeUser)

      def initialize(
        imported : Array(Root::TypeImportedContact),
        popular_invites : Array(Root::TypePopularContact),
        retry_contacts : Array(Int64),
        users : Array(Root::TypeUser)
      )
        @imported = imported
        @popular_invites = popular_invites
        @retry_contacts = retry_contacts
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @imported.tl_serialize(io)
        @popular_invites.tl_serialize(io)
        @retry_contacts.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          imported: Array(Root::TypeImportedContact).tl_deserialize(io),
          popular_invites: Array(Root::TypePopularContact).tl_deserialize(io),
          retry_contacts: Array(Int64).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
        )
      end
    end

    class Blocked < TypeBlocked
      getter constructor_id : UInt32 = 0x0ADE1591_u32
      class_getter constructor_id : UInt32 = 0x0ADE1591_u32

      getter blocked : Array(Root::TypePeerBlocked)
      getter chats : Array(Root::TypeChat)
      getter users : Array(Root::TypeUser)

      def initialize(
        blocked : Array(Root::TypePeerBlocked),
        chats : Array(Root::TypeChat),
        users : Array(Root::TypeUser)
      )
        @blocked = blocked
        @chats = chats
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @blocked.tl_serialize(io)
        @chats.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          blocked: Array(Root::TypePeerBlocked).tl_deserialize(io),
          chats: Array(Root::TypeChat).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
        )
      end
    end

    class BlockedSlice < TypeBlocked
      getter constructor_id : UInt32 = 0xE1664194_u32
      class_getter constructor_id : UInt32 = 0xE1664194_u32

      getter count : Int32
      getter blocked : Array(Root::TypePeerBlocked)
      getter chats : Array(Root::TypeChat)
      getter users : Array(Root::TypeUser)

      def initialize(
        count : Int32,
        blocked : Array(Root::TypePeerBlocked),
        chats : Array(Root::TypeChat),
        users : Array(Root::TypeUser)
      )
        @count = TL::Utils.parse_int!(count, Int32)
        @blocked = blocked
        @chats = chats
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @count.tl_serialize(io)
        @blocked.tl_serialize(io)
        @chats.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          count: Int32.tl_deserialize(io),
          blocked: Array(Root::TypePeerBlocked).tl_deserialize(io),
          chats: Array(Root::TypeChat).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
        )
      end
    end

    class Found < TypeFound
      getter constructor_id : UInt32 = 0xB3134D9D_u32
      class_getter constructor_id : UInt32 = 0xB3134D9D_u32

      getter my_results : Array(Root::TypePeer)
      getter results : Array(Root::TypePeer)
      getter chats : Array(Root::TypeChat)
      getter users : Array(Root::TypeUser)

      def initialize(
        my_results : Array(Root::TypePeer),
        results : Array(Root::TypePeer),
        chats : Array(Root::TypeChat),
        users : Array(Root::TypeUser)
      )
        @my_results = my_results
        @results = results
        @chats = chats
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @my_results.tl_serialize(io)
        @results.tl_serialize(io)
        @chats.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          my_results: Array(Root::TypePeer).tl_deserialize(io),
          results: Array(Root::TypePeer).tl_deserialize(io),
          chats: Array(Root::TypeChat).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
        )
      end
    end

    class ResolvedPeer < TypeResolvedPeer
      getter constructor_id : UInt32 = 0x7F077AD9_u32
      class_getter constructor_id : UInt32 = 0x7F077AD9_u32

      getter peer : Root::TypePeer
      getter chats : Array(Root::TypeChat)
      getter users : Array(Root::TypeUser)

      def initialize(
        peer : Root::TypePeer,
        chats : Array(Root::TypeChat),
        users : Array(Root::TypeUser)
      )
        @peer = peer
        @chats = chats
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @chats.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          peer: Root::TypePeer.tl_deserialize(io),
          chats: Array(Root::TypeChat).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
        )
      end
    end

    class TopPeersNotModified < TypeTopPeers
      getter constructor_id : UInt32 = 0xDE266EF5_u32
      class_getter constructor_id : UInt32 = 0xDE266EF5_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new()
      end
    end

    class TopPeers < TypeTopPeers
      getter constructor_id : UInt32 = 0x70B772A8_u32
      class_getter constructor_id : UInt32 = 0x70B772A8_u32

      getter categories : Array(Root::TypeTopPeerCategoryPeers)
      getter chats : Array(Root::TypeChat)
      getter users : Array(Root::TypeUser)

      def initialize(
        categories : Array(Root::TypeTopPeerCategoryPeers),
        chats : Array(Root::TypeChat),
        users : Array(Root::TypeUser)
      )
        @categories = categories
        @chats = chats
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @categories.tl_serialize(io)
        @chats.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          categories: Array(Root::TypeTopPeerCategoryPeers).tl_deserialize(io),
          chats: Array(Root::TypeChat).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
        )
      end
    end

    class TopPeersDisabled < TypeTopPeers
      getter constructor_id : UInt32 = 0xB52C939D_u32
      class_getter constructor_id : UInt32 = 0xB52C939D_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new()
      end
    end

    class GetContactIDs < TLRequest
      getter constructor_id : UInt32 = 0x7ADC669D_u32
      class_getter constructor_id : UInt32 = 0x7ADC669D_u32

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
        Array(Int32)
      end
    end

    class GetStatuses < TLRequest
      getter constructor_id : UInt32 = 0xC4A353EE_u32
      class_getter constructor_id : UInt32 = 0xC4A353EE_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.return_type : Deserializable
        Array(Root::TypeContactStatus)
      end
    end

    class GetContacts < TLRequest
      getter constructor_id : UInt32 = 0x5DD69E12_u32
      class_getter constructor_id : UInt32 = 0x5DD69E12_u32

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
        Contacts::TypeContacts
      end
    end

    class ImportContacts < TLRequest
      getter constructor_id : UInt32 = 0x2C800BE5_u32
      class_getter constructor_id : UInt32 = 0x2C800BE5_u32

      getter contacts : Array(Root::TypeInputContact)

      def initialize(
        contacts : Array(Root::TypeInputContact)
      )
        @contacts = contacts
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @contacts.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Contacts::TypeImportedContacts
      end
    end

    class DeleteContacts < TLRequest
      getter constructor_id : UInt32 = 0x096A0E00_u32
      class_getter constructor_id : UInt32 = 0x096A0E00_u32

      getter id : Array(Root::TypeInputUser)

      def initialize(
        id : Array(Root::TypeInputUser)
      )
        @id = id
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class DeleteByPhones < TLRequest
      getter constructor_id : UInt32 = 0x1013FD9E_u32
      class_getter constructor_id : UInt32 = 0x1013FD9E_u32

      getter phones : Array(Bytes)

      def initialize(
        phones : Array(Bytes)
      )
        @phones = phones
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @phones.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class Block < TLRequest
      getter constructor_id : UInt32 = 0x68CC1411_u32
      class_getter constructor_id : UInt32 = 0x68CC1411_u32

      getter id : Root::TypeInputPeer

      def initialize(
        id : Root::TypeInputPeer
      )
        @id = id
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class Unblock < TLRequest
      getter constructor_id : UInt32 = 0xBEA65D50_u32
      class_getter constructor_id : UInt32 = 0xBEA65D50_u32

      getter id : Root::TypeInputPeer

      def initialize(
        id : Root::TypeInputPeer
      )
        @id = id
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class GetBlocked < TLRequest
      getter constructor_id : UInt32 = 0xF57C350F_u32
      class_getter constructor_id : UInt32 = 0xF57C350F_u32

      getter offset : Int32
      getter limit : Int32

      def initialize(
        offset : Int32,
        limit : Int32
      )
        @offset = TL::Utils.parse_int!(offset, Int32)
        @limit = TL::Utils.parse_int!(limit, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @offset.tl_serialize(io)
        @limit.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Contacts::TypeBlocked
      end
    end

    class Search < TLRequest
      getter constructor_id : UInt32 = 0x11F812D8_u32
      class_getter constructor_id : UInt32 = 0x11F812D8_u32

      getter q : Bytes
      getter limit : Int32

      def initialize(
        q : Bytes | String | IO,
        limit : Int32
      )
        @q = TL::Utils.parse_bytes!(q)
        @limit = TL::Utils.parse_int!(limit, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @q.tl_serialize(io)
        @limit.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Contacts::TypeFound
      end
    end

    class ResolveUsername < TLRequest
      getter constructor_id : UInt32 = 0xF93CCBA3_u32
      class_getter constructor_id : UInt32 = 0xF93CCBA3_u32

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
        Contacts::TypeResolvedPeer
      end
    end

    class GetTopPeers < TLRequest
      getter constructor_id : UInt32 = 0x973478B6_u32
      class_getter constructor_id : UInt32 = 0x973478B6_u32

      getter offset : Int32
      getter limit : Int32
      getter hash : Int64
      getter correspondents : Bool | Nil
      getter bots_pm : Bool | Nil
      getter bots_inline : Bool | Nil
      getter phone_calls : Bool | Nil
      getter forward_users : Bool | Nil
      getter forward_chats : Bool | Nil
      getter groups : Bool | Nil
      getter channels : Bool | Nil

      def initialize(
        offset : Int32,
        limit : Int32,
        hash : Int64,
        correspondents : Bool | Nil = nil,
        bots_pm : Bool | Nil = nil,
        bots_inline : Bool | Nil = nil,
        phone_calls : Bool | Nil = nil,
        forward_users : Bool | Nil = nil,
        forward_chats : Bool | Nil = nil,
        groups : Bool | Nil = nil,
        channels : Bool | Nil = nil
      )
        @offset = TL::Utils.parse_int!(offset, Int32)
        @limit = TL::Utils.parse_int!(limit, Int32)
        @hash = hash
        @correspondents = correspondents
        @bots_pm = bots_pm
        @bots_inline = bots_inline
        @phone_calls = phone_calls
        @forward_users = forward_users
        @forward_chats = forward_chats
        @groups = groups
        @channels = channels
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!correspondents.nil? ? 0x01 : 0) |
            (!bots_pm.nil? ? 0x02 : 0) |
            (!bots_inline.nil? ? 0x04 : 0) |
            (!phone_calls.nil? ? 0x08 : 0) |
            (!forward_users.nil? ? 0x10 : 0) |
            (!forward_chats.nil? ? 0x20 : 0) |
            (!groups.nil? ? 0x400 : 0) |
            (!channels.nil? ? 0x8000 : 0)
        ).tl_serialize(io)
        @offset.tl_serialize(io)
        @limit.tl_serialize(io)
        @hash.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Contacts::TypeTopPeers
      end
    end

    class ResetTopPeerRating < TLRequest
      getter constructor_id : UInt32 = 0x1AE373AC_u32
      class_getter constructor_id : UInt32 = 0x1AE373AC_u32

      getter category : Root::TypeTopPeerCategory
      getter peer : Root::TypeInputPeer

      def initialize(
        category : Root::TypeTopPeerCategory,
        peer : Root::TypeInputPeer
      )
        @category = category
        @peer = peer
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @category.tl_serialize(io)
        @peer.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class ResetSaved < TLRequest
      getter constructor_id : UInt32 = 0x879537F1_u32
      class_getter constructor_id : UInt32 = 0x879537F1_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class GetSaved < TLRequest
      getter constructor_id : UInt32 = 0x82F1E39F_u32
      class_getter constructor_id : UInt32 = 0x82F1E39F_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.return_type : Deserializable
        Array(Root::TypeSavedContact)
      end
    end

    class ToggleTopPeers < TLRequest
      getter constructor_id : UInt32 = 0x8514BDDA_u32
      class_getter constructor_id : UInt32 = 0x8514BDDA_u32

      getter enabled : Bool

      def initialize(
        enabled : Bool
      )
        @enabled = enabled
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @enabled.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class AddContact < TLRequest
      getter constructor_id : UInt32 = 0xE8F463D0_u32
      class_getter constructor_id : UInt32 = 0xE8F463D0_u32

      getter id : Root::TypeInputUser
      getter first_name : Bytes
      getter last_name : Bytes
      getter phone : Bytes
      getter add_phone_privacy_exception : Bool | Nil

      def initialize(
        id : Root::TypeInputUser,
        first_name : Bytes | String | IO,
        last_name : Bytes | String | IO,
        phone : Bytes | String | IO,
        add_phone_privacy_exception : Bool | Nil = nil
      )
        @id = id
        @first_name = TL::Utils.parse_bytes!(first_name)
        @last_name = TL::Utils.parse_bytes!(last_name)
        @phone = TL::Utils.parse_bytes!(phone)
        @add_phone_privacy_exception = add_phone_privacy_exception
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!add_phone_privacy_exception.nil? ? 0x01 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io)
        @first_name.tl_serialize(io)
        @last_name.tl_serialize(io)
        @phone.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class AcceptContact < TLRequest
      getter constructor_id : UInt32 = 0xF831A20F_u32
      class_getter constructor_id : UInt32 = 0xF831A20F_u32

      getter id : Root::TypeInputUser

      def initialize(
        id : Root::TypeInputUser
      )
        @id = id
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class GetLocated < TLRequest
      getter constructor_id : UInt32 = 0xD348BC44_u32
      class_getter constructor_id : UInt32 = 0xD348BC44_u32

      getter geo_point : Root::TypeInputGeoPoint
      getter background : Bool | Nil
      getter self_expires : Int32 | Nil

      def initialize(
        geo_point : Root::TypeInputGeoPoint,
        background : Bool | Nil = nil,
        self_expires : Int32 | Nil = nil
      )
        @geo_point = geo_point
        @background = background
        @self_expires = TL::Utils.parse_int(self_expires, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!background.nil? ? 0x02 : 0) |
            (!self_expires.nil? ? 0x01 : 0)
        ).tl_serialize(io)
        @geo_point.tl_serialize(io)
        @self_expires.tl_serialize(io) unless @self_expires.nil?
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class BlockFromReplies < TLRequest
      getter constructor_id : UInt32 = 0x29A8962C_u32
      class_getter constructor_id : UInt32 = 0x29A8962C_u32

      getter msg_id : Int32
      getter delete_message : Bool | Nil
      getter delete_history : Bool | Nil
      getter report_spam : Bool | Nil

      def initialize(
        msg_id : Int32,
        delete_message : Bool | Nil = nil,
        delete_history : Bool | Nil = nil,
        report_spam : Bool | Nil = nil
      )
        @msg_id = TL::Utils.parse_int!(msg_id, Int32)
        @delete_message = delete_message
        @delete_history = delete_history
        @report_spam = report_spam
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!delete_message.nil? ? 0x01 : 0) |
            (!delete_history.nil? ? 0x02 : 0) |
            (!report_spam.nil? ? 0x04 : 0)
        ).tl_serialize(io)
        @msg_id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end
  end
end
