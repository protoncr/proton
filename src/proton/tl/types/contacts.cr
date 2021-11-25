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
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xB74BA9D2
          ContactsNotModified.tl_deserialize(io, bare)
        when 0xEAE87E42
          Contacts.tl_deserialize(io, bare)
        when 0x5DD69E12
          GetContacts.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeImportedContacts < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x77D01C3B
          ImportedContacts.tl_deserialize(io, bare)
        when 0x2C800BE5
          ImportContacts.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeBlocked < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x0ADE1591
          Blocked.tl_deserialize(io, bare)
        when 0xE1664194
          BlockedSlice.tl_deserialize(io, bare)
        when 0xF57C350F
          GetBlocked.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeFound < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xB3134D9D
          Found.tl_deserialize(io, bare)
        when 0x11F812D8
          Search.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeResolvedPeer < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x7F077AD9
          ResolvedPeer.tl_deserialize(io, bare)
        when 0xF93CCBA3
          ResolveUsername.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeTopPeers < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xDE266EF5
          TopPeersNotModified.tl_deserialize(io, bare)
        when 0x70B772A8
          TopPeers.tl_deserialize(io, bare)
        when 0xB52C939D
          TopPeersDisabled.tl_deserialize(io, bare)
        when 0x973478B6
          GetTopPeers.tl_deserialize(io, bare)
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
        when 0x096A0E00
          DeleteContacts.tl_deserialize(io, bare)
        when 0xE8F463D0
          AddContact.tl_deserialize(io, bare)
        when 0xF831A20F
          AcceptContact.tl_deserialize(io, bare)
        when 0xD348BC44
          GetLocated.tl_deserialize(io, bare)
        when 0x29A8962C
          BlockFromReplies.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    class ContactsNotModified < TypeContacts
      CONSTRUCTOR_ID = 0xB74BA9D2

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class Contacts < TypeContacts
      CONSTRUCTOR_ID = 0xEAE87E42

      getter contacts : Array(Root::TypeContact)
      getter saved_count : Int32
      getter users : Array(Root::TypeUser)

      def initialize(
        contacts : Array(Root::TypeContact),
        saved_count : Int32,
        users : Array(Root::TypeUser)
      )
        @contacts = contacts
        @saved_count = saved_count
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @contacts.tl_serialize(io, false)
        @saved_count.tl_serialize(io, true)
        @users.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          contacts: Array(Root::TypeContact).tl_deserialize(io, false),
          saved_count: Int32.tl_deserialize(io, true),
          users: Array(Root::TypeUser).tl_deserialize(io, false),
        )
      end
    end

    class ImportedContacts < TypeImportedContacts
      CONSTRUCTOR_ID = 0x77D01C3B

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
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @imported.tl_serialize(io, false)
        @popular_invites.tl_serialize(io, false)
        @retry_contacts.tl_serialize(io, false)
        @users.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          imported: Array(Root::TypeImportedContact).tl_deserialize(io, false),
          popular_invites: Array(Root::TypePopularContact).tl_deserialize(io, false),
          retry_contacts: Array(Int64).tl_deserialize(io, false),
          users: Array(Root::TypeUser).tl_deserialize(io, false),
        )
      end
    end

    class Blocked < TypeBlocked
      CONSTRUCTOR_ID = 0x0ADE1591

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
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @blocked.tl_serialize(io, false)
        @chats.tl_serialize(io, false)
        @users.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          blocked: Array(Root::TypePeerBlocked).tl_deserialize(io, false),
          chats: Array(Root::TypeChat).tl_deserialize(io, false),
          users: Array(Root::TypeUser).tl_deserialize(io, false),
        )
      end
    end

    class BlockedSlice < TypeBlocked
      CONSTRUCTOR_ID = 0xE1664194

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
        @count = count
        @blocked = blocked
        @chats = chats
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @count.tl_serialize(io, true)
        @blocked.tl_serialize(io, false)
        @chats.tl_serialize(io, false)
        @users.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          count: Int32.tl_deserialize(io, true),
          blocked: Array(Root::TypePeerBlocked).tl_deserialize(io, false),
          chats: Array(Root::TypeChat).tl_deserialize(io, false),
          users: Array(Root::TypeUser).tl_deserialize(io, false),
        )
      end
    end

    class Found < TypeFound
      CONSTRUCTOR_ID = 0xB3134D9D

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
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @my_results.tl_serialize(io, false)
        @results.tl_serialize(io, false)
        @chats.tl_serialize(io, false)
        @users.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          my_results: Array(Root::TypePeer).tl_deserialize(io, false),
          results: Array(Root::TypePeer).tl_deserialize(io, false),
          chats: Array(Root::TypeChat).tl_deserialize(io, false),
          users: Array(Root::TypeUser).tl_deserialize(io, false),
        )
      end
    end

    class ResolvedPeer < TypeResolvedPeer
      CONSTRUCTOR_ID = 0x7F077AD9

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
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @peer.tl_serialize(io, false)
        @chats.tl_serialize(io, false)
        @users.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          peer: Root::TypePeer.tl_deserialize(io, false),
          chats: Array(Root::TypeChat).tl_deserialize(io, false),
          users: Array(Root::TypeUser).tl_deserialize(io, false),
        )
      end
    end

    class TopPeersNotModified < TypeTopPeers
      CONSTRUCTOR_ID = 0xDE266EF5

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class TopPeers < TypeTopPeers
      CONSTRUCTOR_ID = 0x70B772A8

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
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @categories.tl_serialize(io, false)
        @chats.tl_serialize(io, false)
        @users.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          categories: Array(Root::TypeTopPeerCategoryPeers).tl_deserialize(io, false),
          chats: Array(Root::TypeChat).tl_deserialize(io, false),
          users: Array(Root::TypeUser).tl_deserialize(io, false),
        )
      end
    end

    class TopPeersDisabled < TypeTopPeers
      CONSTRUCTOR_ID = 0xB52C939D

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class GetContactIDs < TLRequest
      CONSTRUCTOR_ID = 0x7ADC669D

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
        Array(Int32)
      end
    end

    class GetStatuses < TLRequest
      CONSTRUCTOR_ID = 0xC4A353EE

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def return_type
        Array(Root::TypeContactStatus)
      end
    end

    class GetContacts < TLRequest
      CONSTRUCTOR_ID = 0x5DD69E12

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
        Contacts::TypeContacts
      end
    end

    class ImportContacts < TLRequest
      CONSTRUCTOR_ID = 0x2C800BE5

      getter contacts : Array(Root::TypeInputContact)

      def initialize(
        contacts : Array(Root::TypeInputContact)
      )
        @contacts = contacts
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @contacts.tl_serialize(io, false)
      end

      def return_type
        Contacts::TypeImportedContacts
      end
    end

    class DeleteContacts < TLRequest
      CONSTRUCTOR_ID = 0x096A0E00

      getter id : Array(Root::TypeInputUser)

      def initialize(
        id : Array(Root::TypeInputUser)
      )
        @id = id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, false)
      end

      def return_type
        Root::TypeUpdates
      end
    end

    class DeleteByPhones < TLRequest
      CONSTRUCTOR_ID = 0x1013FD9E

      getter phones : Array(Bytes)

      def initialize(
        phones : Array(Bytes)
      )
        @phones = phones
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @phones.tl_serialize(io, false)
      end

      def return_type
        Bool
      end
    end

    class Block < TLRequest
      CONSTRUCTOR_ID = 0x68CC1411

      getter id : Root::TypeInputPeer

      def initialize(
        id : Root::TypeInputPeer
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

    class Unblock < TLRequest
      CONSTRUCTOR_ID = 0xBEA65D50

      getter id : Root::TypeInputPeer

      def initialize(
        id : Root::TypeInputPeer
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

    class GetBlocked < TLRequest
      CONSTRUCTOR_ID = 0xF57C350F

      getter offset : Int32
      getter limit : Int32

      def initialize(
        offset : Int32,
        limit : Int32
      )
        @offset = offset
        @limit = limit
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @offset.tl_serialize(io, true)
        @limit.tl_serialize(io, true)
      end

      def return_type
        Contacts::TypeBlocked
      end
    end

    class Search < TLRequest
      CONSTRUCTOR_ID = 0x11F812D8

      getter q : Bytes
      getter limit : Int32

      def initialize(
        q : Bytes | String | IO,
        limit : Int32
      )
        @q = q
        @limit = limit
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @q.tl_serialize(io, true)
        @limit.tl_serialize(io, true)
      end

      def return_type
        Contacts::TypeFound
      end
    end

    class ResolveUsername < TLRequest
      CONSTRUCTOR_ID = 0xF93CCBA3

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
        Contacts::TypeResolvedPeer
      end
    end

    class GetTopPeers < TLRequest
      CONSTRUCTOR_ID = 0x973478B6

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
        @offset = offset
        @limit = limit
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
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!correspondents.nil? ? 1 : 0) |
            (!bots_pm.nil? ? 2 : 0) |
            (!bots_inline.nil? ? 4 : 0) |
            (!phone_calls.nil? ? 8 : 0) |
            (!forward_users.nil? ? 16 : 0) |
            (!forward_chats.nil? ? 32 : 0) |
            (!groups.nil? ? 1024 : 0) |
            (!channels.nil? ? 32768 : 0)
        ).tl_serialize(io)
        @offset.tl_serialize(io, true)
        @limit.tl_serialize(io, true)
        @hash.tl_serialize(io, true)
      end

      def return_type
        Contacts::TypeTopPeers
      end
    end

    class ResetTopPeerRating < TLRequest
      CONSTRUCTOR_ID = 0x1AE373AC

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
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @category.tl_serialize(io, false)
        @peer.tl_serialize(io, false)
      end

      def return_type
        Bool
      end
    end

    class ResetSaved < TLRequest
      CONSTRUCTOR_ID = 0x879537F1

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def return_type
        Bool
      end
    end

    class GetSaved < TLRequest
      CONSTRUCTOR_ID = 0x82F1E39F

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def return_type
        Array(Root::TypeSavedContact)
      end
    end

    class ToggleTopPeers < TLRequest
      CONSTRUCTOR_ID = 0x8514BDDA

      getter enabled : Bool

      def initialize(
        enabled : Bool
      )
        @enabled = enabled
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @enabled.tl_serialize(io, false)
      end

      def return_type
        Bool
      end
    end

    class AddContact < TLRequest
      CONSTRUCTOR_ID = 0xE8F463D0

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
        @first_name = first_name
        @last_name = last_name
        @phone = phone
        @add_phone_privacy_exception = add_phone_privacy_exception
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!add_phone_privacy_exception.nil? ? 1 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io, false)
        @first_name.tl_serialize(io, true)
        @last_name.tl_serialize(io, true)
        @phone.tl_serialize(io, true)
      end

      def return_type
        Root::TypeUpdates
      end
    end

    class AcceptContact < TLRequest
      CONSTRUCTOR_ID = 0xF831A20F

      getter id : Root::TypeInputUser

      def initialize(
        id : Root::TypeInputUser
      )
        @id = id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, false)
      end

      def return_type
        Root::TypeUpdates
      end
    end

    class GetLocated < TLRequest
      CONSTRUCTOR_ID = 0xD348BC44

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
        @self_expires = self_expires
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!background.nil? ? 2 : 0) |
            (!self_expires.nil? ? 1 : 0)
        ).tl_serialize(io)
        @geo_point.tl_serialize(io, false)
        @self_expires.tl_serialize(io, true) unless @self_expires.nil?
      end

      def return_type
        Root::TypeUpdates
      end
    end

    class BlockFromReplies < TLRequest
      CONSTRUCTOR_ID = 0x29A8962C

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
        @msg_id = msg_id
        @delete_message = delete_message
        @delete_history = delete_history
        @report_spam = report_spam
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!delete_message.nil? ? 1 : 0) |
            (!delete_history.nil? ? 2 : 0) |
            (!report_spam.nil? ? 4 : 0)
        ).tl_serialize(io)
        @msg_id.tl_serialize(io, true)
      end

      def return_type
        Root::TypeUpdates
      end
    end
  end
end
