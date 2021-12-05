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
require "./messages"

module Proton::TL
  module Channels
    abstract class TypeChannelParticipants < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x9AB0FEAF
          ChannelParticipants.tl_deserialize(io, bare)
        when 0xF0173FE9
          ChannelParticipantsNotModified.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: 0x%08X" % constructor_id
        end
      end
    end

    abstract class TypeChannelParticipant < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xDFB80317
          ChannelParticipant.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: 0x%08X" % constructor_id
        end
      end
    end

    abstract class TypeAdminLogResults < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xED8AF74D
          AdminLogResults.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: 0x%08X" % constructor_id
        end
      end
    end

    abstract class TypeSendAsPeers < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x8356CDA9
          SendAsPeers.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: 0x%08X" % constructor_id
        end
      end
    end

    abstract class TypeAffectedMessages < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        else
          raise "Unknown constructor id: 0x%08X" % constructor_id
        end
      end
    end

    abstract class TypeMessages < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        else
          raise "Unknown constructor id: 0x%08X" % constructor_id
        end
      end
    end

    abstract class TypeChats < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        else
          raise "Unknown constructor id: 0x%08X" % constructor_id
        end
      end
    end

    abstract class TypeChatFull < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        else
          raise "Unknown constructor id: 0x%08X" % constructor_id
        end
      end
    end

    abstract class TypeUpdates < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        else
          raise "Unknown constructor id: 0x%08X" % constructor_id
        end
      end
    end

    abstract class TypeExportedMessageLink < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        else
          raise "Unknown constructor id: 0x%08X" % constructor_id
        end
      end
    end

    abstract class TypeInactiveChats < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        else
          raise "Unknown constructor id: 0x%08X" % constructor_id
        end
      end
    end

    abstract class TypeSponsoredMessages < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        else
          raise "Unknown constructor id: 0x%08X" % constructor_id
        end
      end
    end

    abstract class TypeAffectedHistory < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        else
          raise "Unknown constructor id: 0x%08X" % constructor_id
        end
      end
    end

    class ChannelParticipants < TypeChannelParticipants
      getter constructor_id : UInt32 = 0x9AB0FEAF_u32
      class_getter constructor_id : UInt32 = 0x9AB0FEAF_u32

      getter count : Int32
      getter participants : Array(Root::TypeChannelParticipant)
      getter chats : Array(Root::TypeChat)
      getter users : Array(Root::TypeUser)

      def initialize(
        count : Int32,
        participants : Array(Root::TypeChannelParticipant),
        chats : Array(Root::TypeChat),
        users : Array(Root::TypeUser)
      )
        @count = TL::Utils.parse_int!(count, Int32)
        @participants = participants
        @chats = chats
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @count.tl_serialize(io)
        @participants.tl_serialize(io)
        @chats.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          count: Int32.tl_deserialize(io),
          participants: Array(Root::TypeChannelParticipant).tl_deserialize(io),
          chats: Array(Root::TypeChat).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
        )
      end
    end

    class ChannelParticipantsNotModified < TypeChannelParticipants
      getter constructor_id : UInt32 = 0xF0173FE9_u32
      class_getter constructor_id : UInt32 = 0xF0173FE9_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new()
      end
    end

    class ChannelParticipant < TypeChannelParticipant
      getter constructor_id : UInt32 = 0xDFB80317_u32
      class_getter constructor_id : UInt32 = 0xDFB80317_u32

      getter participant : Root::TypeChannelParticipant
      getter chats : Array(Root::TypeChat)
      getter users : Array(Root::TypeUser)

      def initialize(
        participant : Root::TypeChannelParticipant,
        chats : Array(Root::TypeChat),
        users : Array(Root::TypeUser)
      )
        @participant = participant
        @chats = chats
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @participant.tl_serialize(io)
        @chats.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          participant: Root::TypeChannelParticipant.tl_deserialize(io),
          chats: Array(Root::TypeChat).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
        )
      end
    end

    class AdminLogResults < TypeAdminLogResults
      getter constructor_id : UInt32 = 0xED8AF74D_u32
      class_getter constructor_id : UInt32 = 0xED8AF74D_u32

      getter events : Array(Root::TypeChannelAdminLogEvent)
      getter chats : Array(Root::TypeChat)
      getter users : Array(Root::TypeUser)

      def initialize(
        events : Array(Root::TypeChannelAdminLogEvent),
        chats : Array(Root::TypeChat),
        users : Array(Root::TypeUser)
      )
        @events = events
        @chats = chats
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @events.tl_serialize(io)
        @chats.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          events: Array(Root::TypeChannelAdminLogEvent).tl_deserialize(io),
          chats: Array(Root::TypeChat).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
        )
      end
    end

    class SendAsPeers < TypeSendAsPeers
      getter constructor_id : UInt32 = 0x8356CDA9_u32
      class_getter constructor_id : UInt32 = 0x8356CDA9_u32

      getter peers : Array(Root::TypePeer)
      getter chats : Array(Root::TypeChat)
      getter users : Array(Root::TypeUser)

      def initialize(
        peers : Array(Root::TypePeer),
        chats : Array(Root::TypeChat),
        users : Array(Root::TypeUser)
      )
        @peers = peers
        @chats = chats
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peers.tl_serialize(io)
        @chats.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          peers: Array(Root::TypePeer).tl_deserialize(io),
          chats: Array(Root::TypeChat).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
        )
      end
    end

    class ReadHistory < TLRequest
      getter constructor_id : UInt32 = 0xCC104937_u32
      class_getter constructor_id : UInt32 = 0xCC104937_u32

      getter channel : Root::TypeInputChannel
      getter max_id : Int32

      def initialize(
        channel : Root::TypeInputChannel,
        max_id : Int32
      )
        @channel = channel
        @max_id = TL::Utils.parse_int!(max_id, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @channel.tl_serialize(io)
        @max_id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class DeleteMessages < TLRequest
      getter constructor_id : UInt32 = 0x84C1FD4E_u32
      class_getter constructor_id : UInt32 = 0x84C1FD4E_u32

      getter channel : Root::TypeInputChannel
      getter id : Array(Int32)

      def initialize(
        channel : Root::TypeInputChannel,
        id : Array(Int32)
      )
        @channel = channel
        @id = id
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @channel.tl_serialize(io)
        @id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeAffectedMessages
      end
    end

    class ReportSpam < TLRequest
      getter constructor_id : UInt32 = 0xF44A8315_u32
      class_getter constructor_id : UInt32 = 0xF44A8315_u32

      getter channel : Root::TypeInputChannel
      getter participant : Root::TypeInputPeer
      getter id : Array(Int32)

      def initialize(
        channel : Root::TypeInputChannel,
        participant : Root::TypeInputPeer,
        id : Array(Int32)
      )
        @channel = channel
        @participant = participant
        @id = id
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @channel.tl_serialize(io)
        @participant.tl_serialize(io)
        @id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class GetMessages < TLRequest
      getter constructor_id : UInt32 = 0xAD8C9A23_u32
      class_getter constructor_id : UInt32 = 0xAD8C9A23_u32

      getter channel : Root::TypeInputChannel
      getter id : Array(Root::TypeInputMessage)

      def initialize(
        channel : Root::TypeInputChannel,
        id : Array(Root::TypeInputMessage)
      )
        @channel = channel
        @id = id
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @channel.tl_serialize(io)
        @id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeMessages
      end
    end

    class GetParticipants < TLRequest
      getter constructor_id : UInt32 = 0x77CED9D0_u32
      class_getter constructor_id : UInt32 = 0x77CED9D0_u32

      getter channel : Root::TypeInputChannel
      getter filter : Root::TypeChannelParticipantsFilter
      getter offset : Int32
      getter limit : Int32
      getter hash : Int64

      def initialize(
        channel : Root::TypeInputChannel,
        filter : Root::TypeChannelParticipantsFilter,
        offset : Int32,
        limit : Int32,
        hash : Int64
      )
        @channel = channel
        @filter = filter
        @offset = TL::Utils.parse_int!(offset, Int32)
        @limit = TL::Utils.parse_int!(limit, Int32)
        @hash = hash
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @channel.tl_serialize(io)
        @filter.tl_serialize(io)
        @offset.tl_serialize(io)
        @limit.tl_serialize(io)
        @hash.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Channels::TypeChannelParticipants
      end
    end

    class GetParticipant < TLRequest
      getter constructor_id : UInt32 = 0xA0AB6CC6_u32
      class_getter constructor_id : UInt32 = 0xA0AB6CC6_u32

      getter channel : Root::TypeInputChannel
      getter participant : Root::TypeInputPeer

      def initialize(
        channel : Root::TypeInputChannel,
        participant : Root::TypeInputPeer
      )
        @channel = channel
        @participant = participant
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @channel.tl_serialize(io)
        @participant.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Channels::TypeChannelParticipant
      end
    end

    class GetChannels < TLRequest
      getter constructor_id : UInt32 = 0x0A7F6BBB_u32
      class_getter constructor_id : UInt32 = 0x0A7F6BBB_u32

      getter id : Array(Root::TypeInputChannel)

      def initialize(
        id : Array(Root::TypeInputChannel)
      )
        @id = id
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeChats
      end
    end

    class GetFullChannel < TLRequest
      getter constructor_id : UInt32 = 0x08736A09_u32
      class_getter constructor_id : UInt32 = 0x08736A09_u32

      getter channel : Root::TypeInputChannel

      def initialize(
        channel : Root::TypeInputChannel
      )
        @channel = channel
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @channel.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeChatFull
      end
    end

    class CreateChannel < TLRequest
      getter constructor_id : UInt32 = 0x3D5FB10F_u32
      class_getter constructor_id : UInt32 = 0x3D5FB10F_u32

      getter title : Bytes
      getter about : Bytes
      getter broadcast : Bool | Nil
      getter megagroup : Bool | Nil
      getter for_import : Bool | Nil
      getter geo_point : Root::TypeInputGeoPoint | Nil
      getter address : Bytes | Nil

      def initialize(
        title : Bytes | String | IO,
        about : Bytes | String | IO,
        broadcast : Bool | Nil = nil,
        megagroup : Bool | Nil = nil,
        for_import : Bool | Nil = nil,
        geo_point : Root::TypeInputGeoPoint | Nil = nil,
        address : Bytes | Nil = nil
      )
        @title = TL::Utils.parse_bytes!(title)
        @about = TL::Utils.parse_bytes!(about)
        @broadcast = broadcast
        @megagroup = megagroup
        @for_import = for_import
        @geo_point = geo_point
        @address = TL::Utils.parse_bytes(address)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!broadcast.nil? ? 0x01 : 0) |
            (!megagroup.nil? ? 0x02 : 0) |
            (!for_import.nil? ? 0x08 : 0) |
            (!geo_point.nil? ? 0x04 : 0) |
            (!address.nil? ? 0x04 : 0)
        ).tl_serialize(io)
        @title.tl_serialize(io)
        @about.tl_serialize(io)
        @geo_point.tl_serialize(io) unless @geo_point.nil?
        @address.tl_serialize(io) unless @address.nil?
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class EditAdmin < TLRequest
      getter constructor_id : UInt32 = 0xD33C8902_u32
      class_getter constructor_id : UInt32 = 0xD33C8902_u32

      getter channel : Root::TypeInputChannel
      getter user_id : Root::TypeInputUser
      getter admin_rights : Root::TypeChatAdminRights
      getter rank : Bytes

      def initialize(
        channel : Root::TypeInputChannel,
        user_id : Root::TypeInputUser,
        admin_rights : Root::TypeChatAdminRights,
        rank : Bytes | String | IO
      )
        @channel = channel
        @user_id = user_id
        @admin_rights = admin_rights
        @rank = TL::Utils.parse_bytes!(rank)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @channel.tl_serialize(io)
        @user_id.tl_serialize(io)
        @admin_rights.tl_serialize(io)
        @rank.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class EditTitle < TLRequest
      getter constructor_id : UInt32 = 0x566DECD0_u32
      class_getter constructor_id : UInt32 = 0x566DECD0_u32

      getter channel : Root::TypeInputChannel
      getter title : Bytes

      def initialize(
        channel : Root::TypeInputChannel,
        title : Bytes | String | IO
      )
        @channel = channel
        @title = TL::Utils.parse_bytes!(title)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @channel.tl_serialize(io)
        @title.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class EditPhoto < TLRequest
      getter constructor_id : UInt32 = 0xF12E57C9_u32
      class_getter constructor_id : UInt32 = 0xF12E57C9_u32

      getter channel : Root::TypeInputChannel
      getter photo : Root::TypeInputChatPhoto

      def initialize(
        channel : Root::TypeInputChannel,
        photo : Root::TypeInputChatPhoto
      )
        @channel = channel
        @photo = photo
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @channel.tl_serialize(io)
        @photo.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class CheckUsername < TLRequest
      getter constructor_id : UInt32 = 0x10E6BD2C_u32
      class_getter constructor_id : UInt32 = 0x10E6BD2C_u32

      getter channel : Root::TypeInputChannel
      getter username : Bytes

      def initialize(
        channel : Root::TypeInputChannel,
        username : Bytes | String | IO
      )
        @channel = channel
        @username = TL::Utils.parse_bytes!(username)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @channel.tl_serialize(io)
        @username.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class UpdateUsername < TLRequest
      getter constructor_id : UInt32 = 0x3514B3DE_u32
      class_getter constructor_id : UInt32 = 0x3514B3DE_u32

      getter channel : Root::TypeInputChannel
      getter username : Bytes

      def initialize(
        channel : Root::TypeInputChannel,
        username : Bytes | String | IO
      )
        @channel = channel
        @username = TL::Utils.parse_bytes!(username)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @channel.tl_serialize(io)
        @username.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class JoinChannel < TLRequest
      getter constructor_id : UInt32 = 0x24B524C5_u32
      class_getter constructor_id : UInt32 = 0x24B524C5_u32

      getter channel : Root::TypeInputChannel

      def initialize(
        channel : Root::TypeInputChannel
      )
        @channel = channel
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @channel.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class LeaveChannel < TLRequest
      getter constructor_id : UInt32 = 0xF836AA95_u32
      class_getter constructor_id : UInt32 = 0xF836AA95_u32

      getter channel : Root::TypeInputChannel

      def initialize(
        channel : Root::TypeInputChannel
      )
        @channel = channel
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @channel.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class InviteToChannel < TLRequest
      getter constructor_id : UInt32 = 0x199F3A6C_u32
      class_getter constructor_id : UInt32 = 0x199F3A6C_u32

      getter channel : Root::TypeInputChannel
      getter users : Array(Root::TypeInputUser)

      def initialize(
        channel : Root::TypeInputChannel,
        users : Array(Root::TypeInputUser)
      )
        @channel = channel
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @channel.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class DeleteChannel < TLRequest
      getter constructor_id : UInt32 = 0xC0111FE3_u32
      class_getter constructor_id : UInt32 = 0xC0111FE3_u32

      getter channel : Root::TypeInputChannel

      def initialize(
        channel : Root::TypeInputChannel
      )
        @channel = channel
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @channel.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class ExportMessageLink < TLRequest
      getter constructor_id : UInt32 = 0xE63FADEB_u32
      class_getter constructor_id : UInt32 = 0xE63FADEB_u32

      getter channel : Root::TypeInputChannel
      getter id : Int32
      getter grouped : Bool | Nil
      getter thread : Bool | Nil

      def initialize(
        channel : Root::TypeInputChannel,
        id : Int32,
        grouped : Bool | Nil = nil,
        thread : Bool | Nil = nil
      )
        @channel = channel
        @id = TL::Utils.parse_int!(id, Int32)
        @grouped = grouped
        @thread = thread
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!grouped.nil? ? 0x01 : 0) |
            (!thread.nil? ? 0x02 : 0)
        ).tl_serialize(io)
        @channel.tl_serialize(io)
        @id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeExportedMessageLink
      end
    end

    class ToggleSignatures < TLRequest
      getter constructor_id : UInt32 = 0x1F69B606_u32
      class_getter constructor_id : UInt32 = 0x1F69B606_u32

      getter channel : Root::TypeInputChannel
      getter enabled : Bool

      def initialize(
        channel : Root::TypeInputChannel,
        enabled : Bool
      )
        @channel = channel
        @enabled = enabled
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @channel.tl_serialize(io)
        @enabled.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class GetAdminedPublicChannels < TLRequest
      getter constructor_id : UInt32 = 0xF8B036AF_u32
      class_getter constructor_id : UInt32 = 0xF8B036AF_u32

      getter by_location : Bool | Nil
      getter check_limit : Bool | Nil

      def initialize(
        by_location : Bool | Nil = nil,
        check_limit : Bool | Nil = nil
      )
        @by_location = by_location
        @check_limit = check_limit
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!by_location.nil? ? 0x01 : 0) |
            (!check_limit.nil? ? 0x02 : 0)
        ).tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeChats
      end
    end

    class EditBanned < TLRequest
      getter constructor_id : UInt32 = 0x96E6CD81_u32
      class_getter constructor_id : UInt32 = 0x96E6CD81_u32

      getter channel : Root::TypeInputChannel
      getter participant : Root::TypeInputPeer
      getter banned_rights : Root::TypeChatBannedRights

      def initialize(
        channel : Root::TypeInputChannel,
        participant : Root::TypeInputPeer,
        banned_rights : Root::TypeChatBannedRights
      )
        @channel = channel
        @participant = participant
        @banned_rights = banned_rights
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @channel.tl_serialize(io)
        @participant.tl_serialize(io)
        @banned_rights.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class GetAdminLog < TLRequest
      getter constructor_id : UInt32 = 0x33DDF480_u32
      class_getter constructor_id : UInt32 = 0x33DDF480_u32

      getter channel : Root::TypeInputChannel
      getter q : Bytes
      getter max_id : Int64
      getter min_id : Int64
      getter limit : Int32
      getter events_filter : Root::TypeChannelAdminLogEventsFilter | Nil
      getter admins : Array(Root::TypeInputUser) | Nil

      def initialize(
        channel : Root::TypeInputChannel,
        q : Bytes | String | IO,
        max_id : Int64,
        min_id : Int64,
        limit : Int32,
        events_filter : Root::TypeChannelAdminLogEventsFilter | Nil = nil,
        admins : Array(Root::TypeInputUser) | Nil = nil
      )
        @channel = channel
        @q = TL::Utils.parse_bytes!(q)
        @max_id = max_id
        @min_id = min_id
        @limit = TL::Utils.parse_int!(limit, Int32)
        @events_filter = events_filter
        @admins = admins
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!events_filter.nil? ? 0x01 : 0) |
            (!admins.nil? ? 0x02 : 0)
        ).tl_serialize(io)
        @channel.tl_serialize(io)
        @q.tl_serialize(io)
        @events_filter.tl_serialize(io) unless @events_filter.nil?
        @admins.tl_serialize(io) unless @admins.nil?
        @max_id.tl_serialize(io)
        @min_id.tl_serialize(io)
        @limit.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Channels::TypeAdminLogResults
      end
    end

    class SetStickers < TLRequest
      getter constructor_id : UInt32 = 0xEA8CA4F9_u32
      class_getter constructor_id : UInt32 = 0xEA8CA4F9_u32

      getter channel : Root::TypeInputChannel
      getter stickerset : Root::TypeInputStickerSet

      def initialize(
        channel : Root::TypeInputChannel,
        stickerset : Root::TypeInputStickerSet
      )
        @channel = channel
        @stickerset = stickerset
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @channel.tl_serialize(io)
        @stickerset.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class ReadMessageContents < TLRequest
      getter constructor_id : UInt32 = 0xEAB5DC38_u32
      class_getter constructor_id : UInt32 = 0xEAB5DC38_u32

      getter channel : Root::TypeInputChannel
      getter id : Array(Int32)

      def initialize(
        channel : Root::TypeInputChannel,
        id : Array(Int32)
      )
        @channel = channel
        @id = id
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @channel.tl_serialize(io)
        @id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class DeleteHistory < TLRequest
      getter constructor_id : UInt32 = 0xAF369D42_u32
      class_getter constructor_id : UInt32 = 0xAF369D42_u32

      getter channel : Root::TypeInputChannel
      getter max_id : Int32

      def initialize(
        channel : Root::TypeInputChannel,
        max_id : Int32
      )
        @channel = channel
        @max_id = TL::Utils.parse_int!(max_id, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @channel.tl_serialize(io)
        @max_id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class TogglePreHistoryHidden < TLRequest
      getter constructor_id : UInt32 = 0xEABBB94C_u32
      class_getter constructor_id : UInt32 = 0xEABBB94C_u32

      getter channel : Root::TypeInputChannel
      getter enabled : Bool

      def initialize(
        channel : Root::TypeInputChannel,
        enabled : Bool
      )
        @channel = channel
        @enabled = enabled
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @channel.tl_serialize(io)
        @enabled.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class GetLeftChannels < TLRequest
      getter constructor_id : UInt32 = 0x8341ECC0_u32
      class_getter constructor_id : UInt32 = 0x8341ECC0_u32

      getter offset : Int32

      def initialize(
        offset : Int32
      )
        @offset = TL::Utils.parse_int!(offset, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @offset.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeChats
      end
    end

    class GetGroupsForDiscussion < TLRequest
      getter constructor_id : UInt32 = 0xF5DAD378_u32
      class_getter constructor_id : UInt32 = 0xF5DAD378_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.return_type : Deserializable
        Messages::TypeChats
      end
    end

    class SetDiscussionGroup < TLRequest
      getter constructor_id : UInt32 = 0x40582BB2_u32
      class_getter constructor_id : UInt32 = 0x40582BB2_u32

      getter broadcast : Root::TypeInputChannel
      getter group : Root::TypeInputChannel

      def initialize(
        broadcast : Root::TypeInputChannel,
        group : Root::TypeInputChannel
      )
        @broadcast = broadcast
        @group = group
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @broadcast.tl_serialize(io)
        @group.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class EditCreator < TLRequest
      getter constructor_id : UInt32 = 0x8F38CD1F_u32
      class_getter constructor_id : UInt32 = 0x8F38CD1F_u32

      getter channel : Root::TypeInputChannel
      getter user_id : Root::TypeInputUser
      getter password : Root::TypeInputCheckPasswordSRP

      def initialize(
        channel : Root::TypeInputChannel,
        user_id : Root::TypeInputUser,
        password : Root::TypeInputCheckPasswordSRP
      )
        @channel = channel
        @user_id = user_id
        @password = password
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @channel.tl_serialize(io)
        @user_id.tl_serialize(io)
        @password.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class EditLocation < TLRequest
      getter constructor_id : UInt32 = 0x58E63F6D_u32
      class_getter constructor_id : UInt32 = 0x58E63F6D_u32

      getter channel : Root::TypeInputChannel
      getter geo_point : Root::TypeInputGeoPoint
      getter address : Bytes

      def initialize(
        channel : Root::TypeInputChannel,
        geo_point : Root::TypeInputGeoPoint,
        address : Bytes | String | IO
      )
        @channel = channel
        @geo_point = geo_point
        @address = TL::Utils.parse_bytes!(address)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @channel.tl_serialize(io)
        @geo_point.tl_serialize(io)
        @address.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class ToggleSlowMode < TLRequest
      getter constructor_id : UInt32 = 0xEDD49EF0_u32
      class_getter constructor_id : UInt32 = 0xEDD49EF0_u32

      getter channel : Root::TypeInputChannel
      getter seconds : Int32

      def initialize(
        channel : Root::TypeInputChannel,
        seconds : Int32
      )
        @channel = channel
        @seconds = TL::Utils.parse_int!(seconds, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @channel.tl_serialize(io)
        @seconds.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class GetInactiveChannels < TLRequest
      getter constructor_id : UInt32 = 0x11E831EE_u32
      class_getter constructor_id : UInt32 = 0x11E831EE_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.return_type : Deserializable
        Messages::TypeInactiveChats
      end
    end

    class ConvertToGigagroup < TLRequest
      getter constructor_id : UInt32 = 0x0B290C69_u32
      class_getter constructor_id : UInt32 = 0x0B290C69_u32

      getter channel : Root::TypeInputChannel

      def initialize(
        channel : Root::TypeInputChannel
      )
        @channel = channel
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @channel.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class ViewSponsoredMessage < TLRequest
      getter constructor_id : UInt32 = 0xBEAEDB94_u32
      class_getter constructor_id : UInt32 = 0xBEAEDB94_u32

      getter channel : Root::TypeInputChannel
      getter random_id : Bytes

      def initialize(
        channel : Root::TypeInputChannel,
        random_id : Bytes | String | IO
      )
        @channel = channel
        @random_id = TL::Utils.parse_bytes!(random_id)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @channel.tl_serialize(io)
        @random_id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class GetSponsoredMessages < TLRequest
      getter constructor_id : UInt32 = 0xEC210FBF_u32
      class_getter constructor_id : UInt32 = 0xEC210FBF_u32

      getter channel : Root::TypeInputChannel

      def initialize(
        channel : Root::TypeInputChannel
      )
        @channel = channel
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @channel.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeSponsoredMessages
      end
    end

    class GetSendAs < TLRequest
      getter constructor_id : UInt32 = 0x0DC770EE_u32
      class_getter constructor_id : UInt32 = 0x0DC770EE_u32

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

      def self.return_type : Deserializable
        Channels::TypeSendAsPeers
      end
    end

    class DeleteParticipantHistory < TLRequest
      getter constructor_id : UInt32 = 0x367544DB_u32
      class_getter constructor_id : UInt32 = 0x367544DB_u32

      getter channel : Root::TypeInputChannel
      getter participant : Root::TypeInputPeer

      def initialize(
        channel : Root::TypeInputChannel,
        participant : Root::TypeInputPeer
      )
        @channel = channel
        @participant = participant
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @channel.tl_serialize(io)
        @participant.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeAffectedHistory
      end
    end
  end
end
