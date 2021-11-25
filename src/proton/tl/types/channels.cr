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
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x9AB0FEAF
          ChannelParticipants.tl_deserialize(io, bare)
        when 0xF0173FE9
          ChannelParticipantsNotModified.tl_deserialize(io, bare)
        when 0x77CED9D0
          GetParticipants.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeChannelParticipant < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xDFB80317
          ChannelParticipant.tl_deserialize(io, bare)
        when 0xA0AB6CC6
          GetParticipant.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeAdminLogResults < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xED8AF74D
          AdminLogResults.tl_deserialize(io, bare)
        when 0x33DDF480
          GetAdminLog.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeAffectedMessages < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x84C1FD4E
          DeleteMessages.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeAffectedHistory < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xD10DD71B
          DeleteUserHistory.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeMessages < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xAD8C9A23
          GetMessages.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeChats < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x0A7F6BBB
          GetChannels.tl_deserialize(io, bare)
        when 0xF8B036AF
          GetAdminedPublicChannels.tl_deserialize(io, bare)
        when 0x8341ECC0
          GetLeftChannels.tl_deserialize(io, bare)
        when 0xF5DAD378
          GetGroupsForDiscussion.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeChatFull < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x08736A09
          GetFullChannel.tl_deserialize(io, bare)
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
        when 0x3D5FB10F
          CreateChannel.tl_deserialize(io, bare)
        when 0xD33C8902
          EditAdmin.tl_deserialize(io, bare)
        when 0x566DECD0
          EditTitle.tl_deserialize(io, bare)
        when 0xF12E57C9
          EditPhoto.tl_deserialize(io, bare)
        when 0x24B524C5
          JoinChannel.tl_deserialize(io, bare)
        when 0xF836AA95
          LeaveChannel.tl_deserialize(io, bare)
        when 0x199F3A6C
          InviteToChannel.tl_deserialize(io, bare)
        when 0xC0111FE3
          DeleteChannel.tl_deserialize(io, bare)
        when 0x1F69B606
          ToggleSignatures.tl_deserialize(io, bare)
        when 0x96E6CD81
          EditBanned.tl_deserialize(io, bare)
        when 0xEABBB94C
          TogglePreHistoryHidden.tl_deserialize(io, bare)
        when 0x8F38CD1F
          EditCreator.tl_deserialize(io, bare)
        when 0xEDD49EF0
          ToggleSlowMode.tl_deserialize(io, bare)
        when 0x0B290C69
          ConvertToGigagroup.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeExportedMessageLink < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xE63FADEB
          ExportMessageLink.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInactiveChats < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x11E831EE
          GetInactiveChannels.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeSponsoredMessages < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xEC210FBF
          GetSponsoredMessages.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    class ChannelParticipants < TypeChannelParticipants
      CONSTRUCTOR_ID = 0x9AB0FEAF

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
        @count = count
        @participants = participants
        @chats = chats
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @count.tl_serialize(io, true)
        @participants.tl_serialize(io, false)
        @chats.tl_serialize(io, false)
        @users.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          count: Int32.tl_deserialize(io, true),
          participants: Array(Root::TypeChannelParticipant).tl_deserialize(io, false),
          chats: Array(Root::TypeChat).tl_deserialize(io, false),
          users: Array(Root::TypeUser).tl_deserialize(io, false),
        )
      end
    end

    class ChannelParticipantsNotModified < TypeChannelParticipants
      CONSTRUCTOR_ID = 0xF0173FE9

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class ChannelParticipant < TypeChannelParticipant
      CONSTRUCTOR_ID = 0xDFB80317

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
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @participant.tl_serialize(io, false)
        @chats.tl_serialize(io, false)
        @users.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          participant: Root::TypeChannelParticipant.tl_deserialize(io, false),
          chats: Array(Root::TypeChat).tl_deserialize(io, false),
          users: Array(Root::TypeUser).tl_deserialize(io, false),
        )
      end
    end

    class AdminLogResults < TypeAdminLogResults
      CONSTRUCTOR_ID = 0xED8AF74D

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
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @events.tl_serialize(io, false)
        @chats.tl_serialize(io, false)
        @users.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          events: Array(Root::TypeChannelAdminLogEvent).tl_deserialize(io, false),
          chats: Array(Root::TypeChat).tl_deserialize(io, false),
          users: Array(Root::TypeUser).tl_deserialize(io, false),
        )
      end
    end

    class ReadHistory < TLRequest
      CONSTRUCTOR_ID = 0xCC104937

      getter channel : Root::TypeInputChannel
      getter max_id : Int32

      def initialize(
        channel : Root::TypeInputChannel,
        max_id : Int32
      )
        @channel = channel
        @max_id = max_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel.tl_serialize(io, false)
        @max_id.tl_serialize(io, true)
      end

      def return_type
        Bool
      end
    end

    class DeleteMessages < TLRequest
      CONSTRUCTOR_ID = 0x84C1FD4E

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
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel.tl_serialize(io, false)
        @id.tl_serialize(io, false)
      end

      def return_type
        Messages::TypeAffectedMessages
      end
    end

    class DeleteUserHistory < TLRequest
      CONSTRUCTOR_ID = 0xD10DD71B

      getter channel : Root::TypeInputChannel
      getter user_id : Root::TypeInputUser

      def initialize(
        channel : Root::TypeInputChannel,
        user_id : Root::TypeInputUser
      )
        @channel = channel
        @user_id = user_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel.tl_serialize(io, false)
        @user_id.tl_serialize(io, false)
      end

      def return_type
        Messages::TypeAffectedHistory
      end
    end

    class ReportSpam < TLRequest
      CONSTRUCTOR_ID = 0xFE087810

      getter channel : Root::TypeInputChannel
      getter user_id : Root::TypeInputUser
      getter id : Array(Int32)

      def initialize(
        channel : Root::TypeInputChannel,
        user_id : Root::TypeInputUser,
        id : Array(Int32)
      )
        @channel = channel
        @user_id = user_id
        @id = id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel.tl_serialize(io, false)
        @user_id.tl_serialize(io, false)
        @id.tl_serialize(io, false)
      end

      def return_type
        Bool
      end
    end

    class GetMessages < TLRequest
      CONSTRUCTOR_ID = 0xAD8C9A23

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
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel.tl_serialize(io, false)
        @id.tl_serialize(io, false)
      end

      def return_type
        Messages::TypeMessages
      end
    end

    class GetParticipants < TLRequest
      CONSTRUCTOR_ID = 0x77CED9D0

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
        @offset = offset
        @limit = limit
        @hash = hash
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel.tl_serialize(io, false)
        @filter.tl_serialize(io, false)
        @offset.tl_serialize(io, true)
        @limit.tl_serialize(io, true)
        @hash.tl_serialize(io, true)
      end

      def return_type
        Channels::TypeChannelParticipants
      end
    end

    class GetParticipant < TLRequest
      CONSTRUCTOR_ID = 0xA0AB6CC6

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
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel.tl_serialize(io, false)
        @participant.tl_serialize(io, false)
      end

      def return_type
        Channels::TypeChannelParticipant
      end
    end

    class GetChannels < TLRequest
      CONSTRUCTOR_ID = 0x0A7F6BBB

      getter id : Array(Root::TypeInputChannel)

      def initialize(
        id : Array(Root::TypeInputChannel)
      )
        @id = id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, false)
      end

      def return_type
        Messages::TypeChats
      end
    end

    class GetFullChannel < TLRequest
      CONSTRUCTOR_ID = 0x08736A09

      getter channel : Root::TypeInputChannel

      def initialize(
        channel : Root::TypeInputChannel
      )
        @channel = channel
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel.tl_serialize(io, false)
      end

      def return_type
        Messages::TypeChatFull
      end
    end

    class CreateChannel < TLRequest
      CONSTRUCTOR_ID = 0x3D5FB10F

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
        @title = title
        @about = about
        @broadcast = broadcast
        @megagroup = megagroup
        @for_import = for_import
        @geo_point = geo_point
        @address = address
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!broadcast.nil? ? 1 : 0) |
            (!megagroup.nil? ? 2 : 0) |
            (!for_import.nil? ? 8 : 0) |
            (!geo_point.nil? ? 4 : 0) |
            (!address.nil? ? 4 : 0)
        ).tl_serialize(io)
        @title.tl_serialize(io, true)
        @about.tl_serialize(io, true)
        @geo_point.tl_serialize(io, false) unless @geo_point.nil?
        @address.tl_serialize(io, true) unless @address.nil?
      end

      def return_type
        Root::TypeUpdates
      end
    end

    class EditAdmin < TLRequest
      CONSTRUCTOR_ID = 0xD33C8902

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
        @rank = rank
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel.tl_serialize(io, false)
        @user_id.tl_serialize(io, false)
        @admin_rights.tl_serialize(io, false)
        @rank.tl_serialize(io, true)
      end

      def return_type
        Root::TypeUpdates
      end
    end

    class EditTitle < TLRequest
      CONSTRUCTOR_ID = 0x566DECD0

      getter channel : Root::TypeInputChannel
      getter title : Bytes

      def initialize(
        channel : Root::TypeInputChannel,
        title : Bytes | String | IO
      )
        @channel = channel
        @title = title
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel.tl_serialize(io, false)
        @title.tl_serialize(io, true)
      end

      def return_type
        Root::TypeUpdates
      end
    end

    class EditPhoto < TLRequest
      CONSTRUCTOR_ID = 0xF12E57C9

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
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel.tl_serialize(io, false)
        @photo.tl_serialize(io, false)
      end

      def return_type
        Root::TypeUpdates
      end
    end

    class CheckUsername < TLRequest
      CONSTRUCTOR_ID = 0x10E6BD2C

      getter channel : Root::TypeInputChannel
      getter username : Bytes

      def initialize(
        channel : Root::TypeInputChannel,
        username : Bytes | String | IO
      )
        @channel = channel
        @username = username
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel.tl_serialize(io, false)
        @username.tl_serialize(io, true)
      end

      def return_type
        Bool
      end
    end

    class UpdateUsername < TLRequest
      CONSTRUCTOR_ID = 0x3514B3DE

      getter channel : Root::TypeInputChannel
      getter username : Bytes

      def initialize(
        channel : Root::TypeInputChannel,
        username : Bytes | String | IO
      )
        @channel = channel
        @username = username
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel.tl_serialize(io, false)
        @username.tl_serialize(io, true)
      end

      def return_type
        Bool
      end
    end

    class JoinChannel < TLRequest
      CONSTRUCTOR_ID = 0x24B524C5

      getter channel : Root::TypeInputChannel

      def initialize(
        channel : Root::TypeInputChannel
      )
        @channel = channel
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel.tl_serialize(io, false)
      end

      def return_type
        Root::TypeUpdates
      end
    end

    class LeaveChannel < TLRequest
      CONSTRUCTOR_ID = 0xF836AA95

      getter channel : Root::TypeInputChannel

      def initialize(
        channel : Root::TypeInputChannel
      )
        @channel = channel
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel.tl_serialize(io, false)
      end

      def return_type
        Root::TypeUpdates
      end
    end

    class InviteToChannel < TLRequest
      CONSTRUCTOR_ID = 0x199F3A6C

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
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel.tl_serialize(io, false)
        @users.tl_serialize(io, false)
      end

      def return_type
        Root::TypeUpdates
      end
    end

    class DeleteChannel < TLRequest
      CONSTRUCTOR_ID = 0xC0111FE3

      getter channel : Root::TypeInputChannel

      def initialize(
        channel : Root::TypeInputChannel
      )
        @channel = channel
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel.tl_serialize(io, false)
      end

      def return_type
        Root::TypeUpdates
      end
    end

    class ExportMessageLink < TLRequest
      CONSTRUCTOR_ID = 0xE63FADEB

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
        @id = id
        @grouped = grouped
        @thread = thread
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!grouped.nil? ? 1 : 0) |
            (!thread.nil? ? 2 : 0)
        ).tl_serialize(io)
        @channel.tl_serialize(io, false)
        @id.tl_serialize(io, true)
      end

      def return_type
        Root::TypeExportedMessageLink
      end
    end

    class ToggleSignatures < TLRequest
      CONSTRUCTOR_ID = 0x1F69B606

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
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel.tl_serialize(io, false)
        @enabled.tl_serialize(io, false)
      end

      def return_type
        Root::TypeUpdates
      end
    end

    class GetAdminedPublicChannels < TLRequest
      CONSTRUCTOR_ID = 0xF8B036AF

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
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!by_location.nil? ? 1 : 0) |
            (!check_limit.nil? ? 2 : 0)
        ).tl_serialize(io)
      end

      def return_type
        Messages::TypeChats
      end
    end

    class EditBanned < TLRequest
      CONSTRUCTOR_ID = 0x96E6CD81

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
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel.tl_serialize(io, false)
        @participant.tl_serialize(io, false)
        @banned_rights.tl_serialize(io, false)
      end

      def return_type
        Root::TypeUpdates
      end
    end

    class GetAdminLog < TLRequest
      CONSTRUCTOR_ID = 0x33DDF480

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
        @q = q
        @max_id = max_id
        @min_id = min_id
        @limit = limit
        @events_filter = events_filter
        @admins = admins
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!events_filter.nil? ? 1 : 0) |
            (!admins.nil? ? 2 : 0)
        ).tl_serialize(io)
        @channel.tl_serialize(io, false)
        @q.tl_serialize(io, true)
        @events_filter.tl_serialize(io, false) unless @events_filter.nil?
        @admins.tl_serialize(io, false) unless @admins.nil?
        @max_id.tl_serialize(io, true)
        @min_id.tl_serialize(io, true)
        @limit.tl_serialize(io, true)
      end

      def return_type
        Channels::TypeAdminLogResults
      end
    end

    class SetStickers < TLRequest
      CONSTRUCTOR_ID = 0xEA8CA4F9

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
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel.tl_serialize(io, false)
        @stickerset.tl_serialize(io, false)
      end

      def return_type
        Bool
      end
    end

    class ReadMessageContents < TLRequest
      CONSTRUCTOR_ID = 0xEAB5DC38

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
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel.tl_serialize(io, false)
        @id.tl_serialize(io, false)
      end

      def return_type
        Bool
      end
    end

    class DeleteHistory < TLRequest
      CONSTRUCTOR_ID = 0xAF369D42

      getter channel : Root::TypeInputChannel
      getter max_id : Int32

      def initialize(
        channel : Root::TypeInputChannel,
        max_id : Int32
      )
        @channel = channel
        @max_id = max_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel.tl_serialize(io, false)
        @max_id.tl_serialize(io, true)
      end

      def return_type
        Bool
      end
    end

    class TogglePreHistoryHidden < TLRequest
      CONSTRUCTOR_ID = 0xEABBB94C

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
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel.tl_serialize(io, false)
        @enabled.tl_serialize(io, false)
      end

      def return_type
        Root::TypeUpdates
      end
    end

    class GetLeftChannels < TLRequest
      CONSTRUCTOR_ID = 0x8341ECC0

      getter offset : Int32

      def initialize(
        offset : Int32
      )
        @offset = offset
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @offset.tl_serialize(io, true)
      end

      def return_type
        Messages::TypeChats
      end
    end

    class GetGroupsForDiscussion < TLRequest
      CONSTRUCTOR_ID = 0xF5DAD378

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def return_type
        Messages::TypeChats
      end
    end

    class SetDiscussionGroup < TLRequest
      CONSTRUCTOR_ID = 0x40582BB2

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
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @broadcast.tl_serialize(io, false)
        @group.tl_serialize(io, false)
      end

      def return_type
        Bool
      end
    end

    class EditCreator < TLRequest
      CONSTRUCTOR_ID = 0x8F38CD1F

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
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel.tl_serialize(io, false)
        @user_id.tl_serialize(io, false)
        @password.tl_serialize(io, false)
      end

      def return_type
        Root::TypeUpdates
      end
    end

    class EditLocation < TLRequest
      CONSTRUCTOR_ID = 0x58E63F6D

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
        @address = address
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel.tl_serialize(io, false)
        @geo_point.tl_serialize(io, false)
        @address.tl_serialize(io, true)
      end

      def return_type
        Bool
      end
    end

    class ToggleSlowMode < TLRequest
      CONSTRUCTOR_ID = 0xEDD49EF0

      getter channel : Root::TypeInputChannel
      getter seconds : Int32

      def initialize(
        channel : Root::TypeInputChannel,
        seconds : Int32
      )
        @channel = channel
        @seconds = seconds
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel.tl_serialize(io, false)
        @seconds.tl_serialize(io, true)
      end

      def return_type
        Root::TypeUpdates
      end
    end

    class GetInactiveChannels < TLRequest
      CONSTRUCTOR_ID = 0x11E831EE

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def return_type
        Messages::TypeInactiveChats
      end
    end

    class ConvertToGigagroup < TLRequest
      CONSTRUCTOR_ID = 0x0B290C69

      getter channel : Root::TypeInputChannel

      def initialize(
        channel : Root::TypeInputChannel
      )
        @channel = channel
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel.tl_serialize(io, false)
      end

      def return_type
        Root::TypeUpdates
      end
    end

    class ViewSponsoredMessage < TLRequest
      CONSTRUCTOR_ID = 0xBEAEDB94

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
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel.tl_serialize(io, false)
        @random_id.tl_serialize(io, true)
      end

      def return_type
        Bool
      end
    end

    class GetSponsoredMessages < TLRequest
      CONSTRUCTOR_ID = 0xEC210FBF

      getter channel : Root::TypeInputChannel

      def initialize(
        channel : Root::TypeInputChannel
      )
        @channel = channel
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel.tl_serialize(io, false)
      end

      def return_type
        Messages::TypeSponsoredMessages
      end
    end
  end
end
