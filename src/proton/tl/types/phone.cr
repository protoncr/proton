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
  module Phone
    abstract class TypePhoneCall < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xEC82E140
          PhoneCall.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeGroupCall < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x9E727AAD
          GroupCall.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeGroupParticipants < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xF47751B6
          GroupParticipants.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeJoinAsPeers < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xAFE5623F
          JoinAsPeers.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeExportedGroupCallInvite < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x204BD158
          ExportedGroupCallInvite.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeDataJSON < TLObject
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

    class PhoneCall < TypePhoneCall
      getter constructor_id : UInt32 = 0xEC82E140_u32
      class_getter constructor_id : UInt32 = 0xEC82E140_u32

      getter phone_call : Root::TypePhoneCall
      getter users : Array(Root::TypeUser)

      def initialize(
        phone_call : Root::TypePhoneCall,
        users : Array(Root::TypeUser)
      )
        @phone_call = phone_call
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @phone_call.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          phone_call: Root::TypePhoneCall.tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
        )
      end
    end

    class GroupCall < TypeGroupCall
      getter constructor_id : UInt32 = 0x9E727AAD_u32
      class_getter constructor_id : UInt32 = 0x9E727AAD_u32

      getter call : Root::TypeGroupCall
      getter participants : Array(Root::TypeGroupCallParticipant)
      getter participants_next_offset : Bytes
      getter chats : Array(Root::TypeChat)
      getter users : Array(Root::TypeUser)

      def initialize(
        call : Root::TypeGroupCall,
        participants : Array(Root::TypeGroupCallParticipant),
        participants_next_offset : Bytes | String | IO,
        chats : Array(Root::TypeChat),
        users : Array(Root::TypeUser)
      )
        @call = call
        @participants = participants
        @participants_next_offset = TL::Utils.parse_bytes!(participants_next_offset)
        @chats = chats
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @call.tl_serialize(io)
        @participants.tl_serialize(io)
        @participants_next_offset.tl_serialize(io)
        @chats.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          call: Root::TypeGroupCall.tl_deserialize(io),
          participants: Array(Root::TypeGroupCallParticipant).tl_deserialize(io),
          participants_next_offset: Bytes.tl_deserialize(io),
          chats: Array(Root::TypeChat).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
        )
      end
    end

    class GroupParticipants < TypeGroupParticipants
      getter constructor_id : UInt32 = 0xF47751B6_u32
      class_getter constructor_id : UInt32 = 0xF47751B6_u32

      getter count : Int32
      getter participants : Array(Root::TypeGroupCallParticipant)
      getter next_offset : Bytes
      getter chats : Array(Root::TypeChat)
      getter users : Array(Root::TypeUser)
      getter version : Int32

      def initialize(
        count : Int32,
        participants : Array(Root::TypeGroupCallParticipant),
        next_offset : Bytes | String | IO,
        chats : Array(Root::TypeChat),
        users : Array(Root::TypeUser),
        version : Int32
      )
        @count = TL::Utils.parse_int!(count, Int32)
        @participants = participants
        @next_offset = TL::Utils.parse_bytes!(next_offset)
        @chats = chats
        @users = users
        @version = TL::Utils.parse_int!(version, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @count.tl_serialize(io)
        @participants.tl_serialize(io)
        @next_offset.tl_serialize(io)
        @chats.tl_serialize(io)
        @users.tl_serialize(io)
        @version.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          count: Int32.tl_deserialize(io),
          participants: Array(Root::TypeGroupCallParticipant).tl_deserialize(io),
          next_offset: Bytes.tl_deserialize(io),
          chats: Array(Root::TypeChat).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
          version: Int32.tl_deserialize(io),
        )
      end
    end

    class JoinAsPeers < TypeJoinAsPeers
      getter constructor_id : UInt32 = 0xAFE5623F_u32
      class_getter constructor_id : UInt32 = 0xAFE5623F_u32

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

    class ExportedGroupCallInvite < TypeExportedGroupCallInvite
      getter constructor_id : UInt32 = 0x204BD158_u32
      class_getter constructor_id : UInt32 = 0x204BD158_u32

      getter link : Bytes

      def initialize(
        link : Bytes | String | IO
      )
        @link = TL::Utils.parse_bytes!(link)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @link.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          link: Bytes.tl_deserialize(io),
        )
      end
    end

    class GetCallConfig < TLRequest
      getter constructor_id : UInt32 = 0x55451FA9_u32
      class_getter constructor_id : UInt32 = 0x55451FA9_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.return_type
        Root::TypeDataJSON
      end
    end

    class RequestCall < TLRequest
      getter constructor_id : UInt32 = 0x42FF96ED_u32
      class_getter constructor_id : UInt32 = 0x42FF96ED_u32

      getter user_id : Root::TypeInputUser
      getter random_id : Int32
      getter g_a_hash : Bytes
      getter protocol : Root::TypePhoneCallProtocol
      getter video : Bool | Nil

      def initialize(
        user_id : Root::TypeInputUser,
        random_id : Int32,
        g_a_hash : Bytes | String | IO,
        protocol : Root::TypePhoneCallProtocol,
        video : Bool | Nil = nil
      )
        @user_id = user_id
        @random_id = TL::Utils.parse_int!(random_id, Int32)
        @g_a_hash = TL::Utils.parse_bytes!(g_a_hash)
        @protocol = protocol
        @video = video
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!video.nil? ? 0x01 : 0)
        ).tl_serialize(io)
        @user_id.tl_serialize(io)
        @random_id.tl_serialize(io)
        @g_a_hash.tl_serialize(io)
        @protocol.tl_serialize(io)
      end

      def self.return_type
        Phone::TypePhoneCall
      end
    end

    class AcceptCall < TLRequest
      getter constructor_id : UInt32 = 0x3BD2B4A0_u32
      class_getter constructor_id : UInt32 = 0x3BD2B4A0_u32

      getter peer : Root::TypeInputPhoneCall
      getter g_b : Bytes
      getter protocol : Root::TypePhoneCallProtocol

      def initialize(
        peer : Root::TypeInputPhoneCall,
        g_b : Bytes | String | IO,
        protocol : Root::TypePhoneCallProtocol
      )
        @peer = peer
        @g_b = TL::Utils.parse_bytes!(g_b)
        @protocol = protocol
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @g_b.tl_serialize(io)
        @protocol.tl_serialize(io)
      end

      def self.return_type
        Phone::TypePhoneCall
      end
    end

    class ConfirmCall < TLRequest
      getter constructor_id : UInt32 = 0x2EFE1722_u32
      class_getter constructor_id : UInt32 = 0x2EFE1722_u32

      getter peer : Root::TypeInputPhoneCall
      getter g_a : Bytes
      getter key_fingerprint : Int64
      getter protocol : Root::TypePhoneCallProtocol

      def initialize(
        peer : Root::TypeInputPhoneCall,
        g_a : Bytes | String | IO,
        key_fingerprint : Int64,
        protocol : Root::TypePhoneCallProtocol
      )
        @peer = peer
        @g_a = TL::Utils.parse_bytes!(g_a)
        @key_fingerprint = key_fingerprint
        @protocol = protocol
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @g_a.tl_serialize(io)
        @key_fingerprint.tl_serialize(io)
        @protocol.tl_serialize(io)
      end

      def self.return_type
        Phone::TypePhoneCall
      end
    end

    class ReceivedCall < TLRequest
      getter constructor_id : UInt32 = 0x17D54F61_u32
      class_getter constructor_id : UInt32 = 0x17D54F61_u32

      getter peer : Root::TypeInputPhoneCall

      def initialize(
        peer : Root::TypeInputPhoneCall
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

    class DiscardCall < TLRequest
      getter constructor_id : UInt32 = 0xB2CBC1C0_u32
      class_getter constructor_id : UInt32 = 0xB2CBC1C0_u32

      getter peer : Root::TypeInputPhoneCall
      getter duration : Int32
      getter reason : Root::TypePhoneCallDiscardReason
      getter connection_id : Int64
      getter video : Bool | Nil

      def initialize(
        peer : Root::TypeInputPhoneCall,
        duration : Int32,
        reason : Root::TypePhoneCallDiscardReason,
        connection_id : Int64,
        video : Bool | Nil = nil
      )
        @peer = peer
        @duration = TL::Utils.parse_int!(duration, Int32)
        @reason = reason
        @connection_id = connection_id
        @video = video
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!video.nil? ? 0x01 : 0)
        ).tl_serialize(io)
        @peer.tl_serialize(io)
        @duration.tl_serialize(io)
        @reason.tl_serialize(io)
        @connection_id.tl_serialize(io)
      end

      def self.return_type
        Root::TypeUpdates
      end
    end

    class SetCallRating < TLRequest
      getter constructor_id : UInt32 = 0x59EAD627_u32
      class_getter constructor_id : UInt32 = 0x59EAD627_u32

      getter peer : Root::TypeInputPhoneCall
      getter rating : Int32
      getter comment : Bytes
      getter user_initiative : Bool | Nil

      def initialize(
        peer : Root::TypeInputPhoneCall,
        rating : Int32,
        comment : Bytes | String | IO,
        user_initiative : Bool | Nil = nil
      )
        @peer = peer
        @rating = TL::Utils.parse_int!(rating, Int32)
        @comment = TL::Utils.parse_bytes!(comment)
        @user_initiative = user_initiative
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!user_initiative.nil? ? 0x01 : 0)
        ).tl_serialize(io)
        @peer.tl_serialize(io)
        @rating.tl_serialize(io)
        @comment.tl_serialize(io)
      end

      def self.return_type
        Root::TypeUpdates
      end
    end

    class SaveCallDebug < TLRequest
      getter constructor_id : UInt32 = 0x277ADD7E_u32
      class_getter constructor_id : UInt32 = 0x277ADD7E_u32

      getter peer : Root::TypeInputPhoneCall
      getter debug : Root::TypeDataJSON

      def initialize(
        peer : Root::TypeInputPhoneCall,
        debug : Root::TypeDataJSON
      )
        @peer = peer
        @debug = debug
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @debug.tl_serialize(io)
      end

      def self.return_type
        Bool
      end
    end

    class SendSignalingData < TLRequest
      getter constructor_id : UInt32 = 0xFF7A9383_u32
      class_getter constructor_id : UInt32 = 0xFF7A9383_u32

      getter peer : Root::TypeInputPhoneCall
      getter data : Bytes

      def initialize(
        peer : Root::TypeInputPhoneCall,
        data : Bytes | String | IO
      )
        @peer = peer
        @data = TL::Utils.parse_bytes!(data)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @data.tl_serialize(io)
      end

      def self.return_type
        Bool
      end
    end

    class CreateGroupCall < TLRequest
      getter constructor_id : UInt32 = 0x48CDC6D8_u32
      class_getter constructor_id : UInt32 = 0x48CDC6D8_u32

      getter peer : Root::TypeInputPeer
      getter random_id : Int32
      getter title : Bytes | Nil
      getter schedule_date : Int32 | Nil

      def initialize(
        peer : Root::TypeInputPeer,
        random_id : Int32,
        title : Bytes | Nil = nil,
        schedule_date : Int32 | Nil = nil
      )
        @peer = peer
        @random_id = TL::Utils.parse_int!(random_id, Int32)
        @title = TL::Utils.parse_bytes(title)
        @schedule_date = TL::Utils.parse_int(schedule_date, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!title.nil? ? 0x01 : 0) |
            (!schedule_date.nil? ? 0x02 : 0)
        ).tl_serialize(io)
        @peer.tl_serialize(io)
        @random_id.tl_serialize(io)
        @title.tl_serialize(io) unless @title.nil?
        @schedule_date.tl_serialize(io) unless @schedule_date.nil?
      end

      def self.return_type
        Root::TypeUpdates
      end
    end

    class JoinGroupCall < TLRequest
      getter constructor_id : UInt32 = 0xB132FF7B_u32
      class_getter constructor_id : UInt32 = 0xB132FF7B_u32

      getter call : Root::TypeInputGroupCall
      getter join_as : Root::TypeInputPeer
      getter params : Root::TypeDataJSON
      getter muted : Bool | Nil
      getter video_stopped : Bool | Nil
      getter invite_hash : Bytes | Nil

      def initialize(
        call : Root::TypeInputGroupCall,
        join_as : Root::TypeInputPeer,
        params : Root::TypeDataJSON,
        muted : Bool | Nil = nil,
        video_stopped : Bool | Nil = nil,
        invite_hash : Bytes | Nil = nil
      )
        @call = call
        @join_as = join_as
        @params = params
        @muted = muted
        @video_stopped = video_stopped
        @invite_hash = TL::Utils.parse_bytes(invite_hash)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!muted.nil? ? 0x01 : 0) |
            (!video_stopped.nil? ? 0x04 : 0) |
            (!invite_hash.nil? ? 0x02 : 0)
        ).tl_serialize(io)
        @call.tl_serialize(io)
        @join_as.tl_serialize(io)
        @invite_hash.tl_serialize(io) unless @invite_hash.nil?
        @params.tl_serialize(io)
      end

      def self.return_type
        Root::TypeUpdates
      end
    end

    class LeaveGroupCall < TLRequest
      getter constructor_id : UInt32 = 0x500377F9_u32
      class_getter constructor_id : UInt32 = 0x500377F9_u32

      getter call : Root::TypeInputGroupCall
      getter source : Int32

      def initialize(
        call : Root::TypeInputGroupCall,
        source : Int32
      )
        @call = call
        @source = TL::Utils.parse_int!(source, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @call.tl_serialize(io)
        @source.tl_serialize(io)
      end

      def self.return_type
        Root::TypeUpdates
      end
    end

    class InviteToGroupCall < TLRequest
      getter constructor_id : UInt32 = 0x7B393160_u32
      class_getter constructor_id : UInt32 = 0x7B393160_u32

      getter call : Root::TypeInputGroupCall
      getter users : Array(Root::TypeInputUser)

      def initialize(
        call : Root::TypeInputGroupCall,
        users : Array(Root::TypeInputUser)
      )
        @call = call
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @call.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.return_type
        Root::TypeUpdates
      end
    end

    class DiscardGroupCall < TLRequest
      getter constructor_id : UInt32 = 0x7A777135_u32
      class_getter constructor_id : UInt32 = 0x7A777135_u32

      getter call : Root::TypeInputGroupCall

      def initialize(
        call : Root::TypeInputGroupCall
      )
        @call = call
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @call.tl_serialize(io)
      end

      def self.return_type
        Root::TypeUpdates
      end
    end

    class ToggleGroupCallSettings < TLRequest
      getter constructor_id : UInt32 = 0x74BBB43D_u32
      class_getter constructor_id : UInt32 = 0x74BBB43D_u32

      getter call : Root::TypeInputGroupCall
      getter reset_invite_hash : Bool | Nil
      getter join_muted : Bool | Nil

      def initialize(
        call : Root::TypeInputGroupCall,
        reset_invite_hash : Bool | Nil = nil,
        join_muted : Bool | Nil = nil
      )
        @call = call
        @reset_invite_hash = reset_invite_hash
        @join_muted = join_muted
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!reset_invite_hash.nil? ? 0x02 : 0) |
            (!join_muted.nil? ? 0x01 : 0)
        ).tl_serialize(io)
        @call.tl_serialize(io)
        @join_muted.tl_serialize(io) unless @join_muted.nil?
      end

      def self.return_type
        Root::TypeUpdates
      end
    end

    class GetGroupCall < TLRequest
      getter constructor_id : UInt32 = 0x041845DB_u32
      class_getter constructor_id : UInt32 = 0x041845DB_u32

      getter call : Root::TypeInputGroupCall
      getter limit : Int32

      def initialize(
        call : Root::TypeInputGroupCall,
        limit : Int32
      )
        @call = call
        @limit = TL::Utils.parse_int!(limit, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @call.tl_serialize(io)
        @limit.tl_serialize(io)
      end

      def self.return_type
        Phone::TypeGroupCall
      end
    end

    class GetGroupParticipants < TLRequest
      getter constructor_id : UInt32 = 0xC558D8AB_u32
      class_getter constructor_id : UInt32 = 0xC558D8AB_u32

      getter call : Root::TypeInputGroupCall
      getter ids : Array(Root::TypeInputPeer)
      getter sources : Array(Int32)
      getter offset : Bytes
      getter limit : Int32

      def initialize(
        call : Root::TypeInputGroupCall,
        ids : Array(Root::TypeInputPeer),
        sources : Array(Int32),
        offset : Bytes | String | IO,
        limit : Int32
      )
        @call = call
        @ids = ids
        @sources = sources
        @offset = TL::Utils.parse_bytes!(offset)
        @limit = TL::Utils.parse_int!(limit, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @call.tl_serialize(io)
        @ids.tl_serialize(io)
        @sources.tl_serialize(io)
        @offset.tl_serialize(io)
        @limit.tl_serialize(io)
      end

      def self.return_type
        Phone::TypeGroupParticipants
      end
    end

    class CheckGroupCall < TLRequest
      getter constructor_id : UInt32 = 0xB59CF977_u32
      class_getter constructor_id : UInt32 = 0xB59CF977_u32

      getter call : Root::TypeInputGroupCall
      getter sources : Array(Int32)

      def initialize(
        call : Root::TypeInputGroupCall,
        sources : Array(Int32)
      )
        @call = call
        @sources = sources
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @call.tl_serialize(io)
        @sources.tl_serialize(io)
      end

      def self.return_type
        Array(Int32)
      end
    end

    class ToggleGroupCallRecord < TLRequest
      getter constructor_id : UInt32 = 0xF128C708_u32
      class_getter constructor_id : UInt32 = 0xF128C708_u32

      getter call : Root::TypeInputGroupCall
      getter start : Bool | Nil
      getter video : Bool | Nil
      getter title : Bytes | Nil
      getter video_portrait : Bool | Nil

      def initialize(
        call : Root::TypeInputGroupCall,
        start : Bool | Nil = nil,
        video : Bool | Nil = nil,
        title : Bytes | Nil = nil,
        video_portrait : Bool | Nil = nil
      )
        @call = call
        @start = start
        @video = video
        @title = TL::Utils.parse_bytes(title)
        @video_portrait = video_portrait
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!start.nil? ? 0x01 : 0) |
            (!video.nil? ? 0x04 : 0) |
            (!title.nil? ? 0x02 : 0) |
            (!video_portrait.nil? ? 0x04 : 0)
        ).tl_serialize(io)
        @call.tl_serialize(io)
        @title.tl_serialize(io) unless @title.nil?
        @video_portrait.tl_serialize(io) unless @video_portrait.nil?
      end

      def self.return_type
        Root::TypeUpdates
      end
    end

    class EditGroupCallParticipant < TLRequest
      getter constructor_id : UInt32 = 0xA5273ABF_u32
      class_getter constructor_id : UInt32 = 0xA5273ABF_u32

      getter call : Root::TypeInputGroupCall
      getter participant : Root::TypeInputPeer
      getter muted : Bool | Nil
      getter volume : Int32 | Nil
      getter raise_hand : Bool | Nil
      getter video_stopped : Bool | Nil
      getter video_paused : Bool | Nil
      getter presentation_paused : Bool | Nil

      def initialize(
        call : Root::TypeInputGroupCall,
        participant : Root::TypeInputPeer,
        muted : Bool | Nil = nil,
        volume : Int32 | Nil = nil,
        raise_hand : Bool | Nil = nil,
        video_stopped : Bool | Nil = nil,
        video_paused : Bool | Nil = nil,
        presentation_paused : Bool | Nil = nil
      )
        @call = call
        @participant = participant
        @muted = muted
        @volume = TL::Utils.parse_int(volume, Int32)
        @raise_hand = raise_hand
        @video_stopped = video_stopped
        @video_paused = video_paused
        @presentation_paused = presentation_paused
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!muted.nil? ? 0x01 : 0) |
            (!volume.nil? ? 0x02 : 0) |
            (!raise_hand.nil? ? 0x04 : 0) |
            (!video_stopped.nil? ? 0x08 : 0) |
            (!video_paused.nil? ? 0x10 : 0) |
            (!presentation_paused.nil? ? 0x20 : 0)
        ).tl_serialize(io)
        @call.tl_serialize(io)
        @participant.tl_serialize(io)
        @muted.tl_serialize(io) unless @muted.nil?
        @volume.tl_serialize(io) unless @volume.nil?
        @raise_hand.tl_serialize(io) unless @raise_hand.nil?
        @video_stopped.tl_serialize(io) unless @video_stopped.nil?
        @video_paused.tl_serialize(io) unless @video_paused.nil?
        @presentation_paused.tl_serialize(io) unless @presentation_paused.nil?
      end

      def self.return_type
        Root::TypeUpdates
      end
    end

    class EditGroupCallTitle < TLRequest
      getter constructor_id : UInt32 = 0x1CA6AC0A_u32
      class_getter constructor_id : UInt32 = 0x1CA6AC0A_u32

      getter call : Root::TypeInputGroupCall
      getter title : Bytes

      def initialize(
        call : Root::TypeInputGroupCall,
        title : Bytes | String | IO
      )
        @call = call
        @title = TL::Utils.parse_bytes!(title)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @call.tl_serialize(io)
        @title.tl_serialize(io)
      end

      def self.return_type
        Root::TypeUpdates
      end
    end

    class GetGroupCallJoinAs < TLRequest
      getter constructor_id : UInt32 = 0xEF7C213A_u32
      class_getter constructor_id : UInt32 = 0xEF7C213A_u32

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
        Phone::TypeJoinAsPeers
      end
    end

    class ExportGroupCallInvite < TLRequest
      getter constructor_id : UInt32 = 0xE6AA647F_u32
      class_getter constructor_id : UInt32 = 0xE6AA647F_u32

      getter call : Root::TypeInputGroupCall
      getter can_self_unmute : Bool | Nil

      def initialize(
        call : Root::TypeInputGroupCall,
        can_self_unmute : Bool | Nil = nil
      )
        @call = call
        @can_self_unmute = can_self_unmute
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!can_self_unmute.nil? ? 0x01 : 0)
        ).tl_serialize(io)
        @call.tl_serialize(io)
      end

      def self.return_type
        Phone::TypeExportedGroupCallInvite
      end
    end

    class ToggleGroupCallStartSubscription < TLRequest
      getter constructor_id : UInt32 = 0x219C34E6_u32
      class_getter constructor_id : UInt32 = 0x219C34E6_u32

      getter call : Root::TypeInputGroupCall
      getter subscribed : Bool

      def initialize(
        call : Root::TypeInputGroupCall,
        subscribed : Bool
      )
        @call = call
        @subscribed = subscribed
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @call.tl_serialize(io)
        @subscribed.tl_serialize(io)
      end

      def self.return_type
        Root::TypeUpdates
      end
    end

    class StartScheduledGroupCall < TLRequest
      getter constructor_id : UInt32 = 0x5680E342_u32
      class_getter constructor_id : UInt32 = 0x5680E342_u32

      getter call : Root::TypeInputGroupCall

      def initialize(
        call : Root::TypeInputGroupCall
      )
        @call = call
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @call.tl_serialize(io)
      end

      def self.return_type
        Root::TypeUpdates
      end
    end

    class SaveDefaultGroupCallJoinAs < TLRequest
      getter constructor_id : UInt32 = 0x575E1F8C_u32
      class_getter constructor_id : UInt32 = 0x575E1F8C_u32

      getter peer : Root::TypeInputPeer
      getter join_as : Root::TypeInputPeer

      def initialize(
        peer : Root::TypeInputPeer,
        join_as : Root::TypeInputPeer
      )
        @peer = peer
        @join_as = join_as
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @join_as.tl_serialize(io)
      end

      def self.return_type
        Bool
      end
    end

    class JoinGroupCallPresentation < TLRequest
      getter constructor_id : UInt32 = 0xCBEA6BC4_u32
      class_getter constructor_id : UInt32 = 0xCBEA6BC4_u32

      getter call : Root::TypeInputGroupCall
      getter params : Root::TypeDataJSON

      def initialize(
        call : Root::TypeInputGroupCall,
        params : Root::TypeDataJSON
      )
        @call = call
        @params = params
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @call.tl_serialize(io)
        @params.tl_serialize(io)
      end

      def self.return_type
        Root::TypeUpdates
      end
    end

    class LeaveGroupCallPresentation < TLRequest
      getter constructor_id : UInt32 = 0x1C50D144_u32
      class_getter constructor_id : UInt32 = 0x1C50D144_u32

      getter call : Root::TypeInputGroupCall

      def initialize(
        call : Root::TypeInputGroupCall
      )
        @call = call
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @call.tl_serialize(io)
      end

      def self.return_type
        Root::TypeUpdates
      end
    end
  end
end
