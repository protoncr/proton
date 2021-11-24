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
    module Phone
      abstract class TypePhoneCall < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0xEC82E140
            PhoneCall.tl_deserialize(io, bare)
          when 0x42FF96ED
            RequestCall.tl_deserialize(io, bare)
          when 0x3BD2B4A0
            AcceptCall.tl_deserialize(io, bare)
          when 0x2EFE1722
            ConfirmCall.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeGroupCall < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x9E727AAD
            GroupCall.tl_deserialize(io, bare)
          when 0x041845DB
            GetGroupCall.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeGroupParticipants < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0xF47751B6
            GroupParticipants.tl_deserialize(io, bare)
          when 0xC558D8AB
            GetGroupParticipants.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeJoinAsPeers < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0xAFE5623F
            JoinAsPeers.tl_deserialize(io, bare)
          when 0xEF7C213A
            GetGroupCallJoinAs.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeExportedGroupCallInvite < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x204BD158
            ExportedGroupCallInvite.tl_deserialize(io, bare)
          when 0xE6AA647F
            ExportGroupCallInvite.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeDataJSON < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x55451FA9
            GetCallConfig.tl_deserialize(io, bare)
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
          when 0xB2CBC1C0
            DiscardCall.tl_deserialize(io, bare)
          when 0x59EAD627
            SetCallRating.tl_deserialize(io, bare)
          when 0x48CDC6D8
            CreateGroupCall.tl_deserialize(io, bare)
          when 0xB132FF7B
            JoinGroupCall.tl_deserialize(io, bare)
          when 0x500377F9
            LeaveGroupCall.tl_deserialize(io, bare)
          when 0x7B393160
            InviteToGroupCall.tl_deserialize(io, bare)
          when 0x7A777135
            DiscardGroupCall.tl_deserialize(io, bare)
          when 0x74BBB43D
            ToggleGroupCallSettings.tl_deserialize(io, bare)
          when 0xF128C708
            ToggleGroupCallRecord.tl_deserialize(io, bare)
          when 0xA5273ABF
            EditGroupCallParticipant.tl_deserialize(io, bare)
          when 0x1CA6AC0A
            EditGroupCallTitle.tl_deserialize(io, bare)
          when 0x219C34E6
            ToggleGroupCallStartSubscription.tl_deserialize(io, bare)
          when 0x5680E342
            StartScheduledGroupCall.tl_deserialize(io, bare)
          when 0xCBEA6BC4
            JoinGroupCallPresentation.tl_deserialize(io, bare)
          when 0x1C50D144
            LeaveGroupCallPresentation.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      class PhoneCall < TypePhoneCall
        CONSTRUCTOR_ID = 0xEC82E140

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @phone_call.tl_serialize(io, false)
          @users.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            phone_call = Root::TypePhoneCall.tl_deserialize(io, false),
            users = Array(Root::TypeUser).tl_deserialize(io, false),
          )
        end
      end

      class GroupCall < TypeGroupCall
        CONSTRUCTOR_ID = 0x9E727AAD

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
          @participants_next_offset = participants_next_offset
          @chats = chats
          @users = users
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @call.tl_serialize(io, false)
          @participants.tl_serialize(io, false)
          @participants_next_offset.tl_serialize(io, true)
          @chats.tl_serialize(io, false)
          @users.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            call = Root::TypeGroupCall.tl_deserialize(io, false),
            participants = Array(Root::TypeGroupCallParticipant).tl_deserialize(io, false),
            participants_next_offset = Bytes.tl_deserialize(io, true),
            chats = Array(Root::TypeChat).tl_deserialize(io, false),
            users = Array(Root::TypeUser).tl_deserialize(io, false),
          )
        end
      end

      class GroupParticipants < TypeGroupParticipants
        CONSTRUCTOR_ID = 0xF47751B6

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
          @count = count
          @participants = participants
          @next_offset = next_offset
          @chats = chats
          @users = users
          @version = version
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @count.tl_serialize(io, true)
          @participants.tl_serialize(io, false)
          @next_offset.tl_serialize(io, true)
          @chats.tl_serialize(io, false)
          @users.tl_serialize(io, false)
          @version.tl_serialize(io, true)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            count = Int32.tl_deserialize(io, true),
            participants = Array(Root::TypeGroupCallParticipant).tl_deserialize(io, false),
            next_offset = Bytes.tl_deserialize(io, true),
            chats = Array(Root::TypeChat).tl_deserialize(io, false),
            users = Array(Root::TypeUser).tl_deserialize(io, false),
            version = Int32.tl_deserialize(io, true),
          )
        end
      end

      class JoinAsPeers < TypeJoinAsPeers
        CONSTRUCTOR_ID = 0xAFE5623F

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peers.tl_serialize(io, false)
          @chats.tl_serialize(io, false)
          @users.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            peers = Array(Root::TypePeer).tl_deserialize(io, false),
            chats = Array(Root::TypeChat).tl_deserialize(io, false),
            users = Array(Root::TypeUser).tl_deserialize(io, false),
          )
        end
      end

      class ExportedGroupCallInvite < TypeExportedGroupCallInvite
        CONSTRUCTOR_ID = 0x204BD158

        getter link : Bytes

        def initialize(
          link : Bytes | String | IO
        )
          @link = link
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @link.tl_serialize(io, true)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            link = Bytes.tl_deserialize(io, true),
          )
        end
      end

      class GetCallConfig < TLRequest
        CONSTRUCTOR_ID = 0x55451FA9

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
        end

        def return_type
          Root::TypeDataJSON
        end
      end

      class RequestCall < TLRequest
        CONSTRUCTOR_ID = 0x42FF96ED

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
          @random_id = random_id
          @g_a_hash = TL::Utils.parse_bytes!(g_a_hash)
          @protocol = protocol
          @video = video
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!video.nil? ? 1 : 0)
          ).tl_serialize(io)
          @user_id.tl_serialize(io, false)
          @random_id.tl_serialize(io, true)
          @g_a_hash.tl_serialize(io, true)
          @protocol.tl_serialize(io, false)
        end

        def return_type
          Phone::TypePhoneCall
        end
      end

      class AcceptCall < TLRequest
        CONSTRUCTOR_ID = 0x3BD2B4A0

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @g_b.tl_serialize(io, true)
          @protocol.tl_serialize(io, false)
        end

        def return_type
          Phone::TypePhoneCall
        end
      end

      class ConfirmCall < TLRequest
        CONSTRUCTOR_ID = 0x2EFE1722

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @g_a.tl_serialize(io, true)
          @key_fingerprint.tl_serialize(io, true)
          @protocol.tl_serialize(io, false)
        end

        def return_type
          Phone::TypePhoneCall
        end
      end

      class ReceivedCall < TLRequest
        CONSTRUCTOR_ID = 0x17D54F61

        getter peer : Root::TypeInputPhoneCall

        def initialize(
          peer : Root::TypeInputPhoneCall
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

      class DiscardCall < TLRequest
        CONSTRUCTOR_ID = 0xB2CBC1C0

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
          @duration = duration
          @reason = reason
          @connection_id = connection_id
          @video = video
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!video.nil? ? 1 : 0)
          ).tl_serialize(io)
          @peer.tl_serialize(io, false)
          @duration.tl_serialize(io, true)
          @reason.tl_serialize(io, false)
          @connection_id.tl_serialize(io, true)
        end

        def return_type
          Root::TypeUpdates
        end
      end

      class SetCallRating < TLRequest
        CONSTRUCTOR_ID = 0x59EAD627

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
          @rating = rating
          @comment = comment
          @user_initiative = user_initiative
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!user_initiative.nil? ? 1 : 0)
          ).tl_serialize(io)
          @peer.tl_serialize(io, false)
          @rating.tl_serialize(io, true)
          @comment.tl_serialize(io, true)
        end

        def return_type
          Root::TypeUpdates
        end
      end

      class SaveCallDebug < TLRequest
        CONSTRUCTOR_ID = 0x277ADD7E

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @debug.tl_serialize(io, false)
        end

        def return_type
          Bool
        end
      end

      class SendSignalingData < TLRequest
        CONSTRUCTOR_ID = 0xFF7A9383

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @data.tl_serialize(io, true)
        end

        def return_type
          Bool
        end
      end

      class CreateGroupCall < TLRequest
        CONSTRUCTOR_ID = 0x48CDC6D8

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
          @random_id = random_id
          @title = title
          @schedule_date = schedule_date
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!title.nil? ? 1 : 0) |
              (!schedule_date.nil? ? 2 : 0)
          ).tl_serialize(io)
          @peer.tl_serialize(io, false)
          @random_id.tl_serialize(io, true)
          @title.tl_serialize(io, true) unless @title.nil?
          @schedule_date.tl_serialize(io, true) unless @schedule_date.nil?
        end

        def return_type
          Root::TypeUpdates
        end
      end

      class JoinGroupCall < TLRequest
        CONSTRUCTOR_ID = 0xB132FF7B

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
          @invite_hash = invite_hash
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!muted.nil? ? 1 : 0) |
              (!video_stopped.nil? ? 4 : 0) |
              (!invite_hash.nil? ? 2 : 0)
          ).tl_serialize(io)
          @call.tl_serialize(io, false)
          @join_as.tl_serialize(io, false)
          @invite_hash.tl_serialize(io, true) unless @invite_hash.nil?
          @params.tl_serialize(io, false)
        end

        def return_type
          Root::TypeUpdates
        end
      end

      class LeaveGroupCall < TLRequest
        CONSTRUCTOR_ID = 0x500377F9

        getter call : Root::TypeInputGroupCall
        getter source : Int32

        def initialize(
          call : Root::TypeInputGroupCall,
          source : Int32
        )
          @call = call
          @source = source
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @call.tl_serialize(io, false)
          @source.tl_serialize(io, true)
        end

        def return_type
          Root::TypeUpdates
        end
      end

      class InviteToGroupCall < TLRequest
        CONSTRUCTOR_ID = 0x7B393160

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @call.tl_serialize(io, false)
          @users.tl_serialize(io, false)
        end

        def return_type
          Root::TypeUpdates
        end
      end

      class DiscardGroupCall < TLRequest
        CONSTRUCTOR_ID = 0x7A777135

        getter call : Root::TypeInputGroupCall

        def initialize(
          call : Root::TypeInputGroupCall
        )
          @call = call
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @call.tl_serialize(io, false)
        end

        def return_type
          Root::TypeUpdates
        end
      end

      class ToggleGroupCallSettings < TLRequest
        CONSTRUCTOR_ID = 0x74BBB43D

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!reset_invite_hash.nil? ? 2 : 0) |
              (!join_muted.nil? ? 1 : 0)
          ).tl_serialize(io)
          @call.tl_serialize(io, false)
          @join_muted.tl_serialize(io, false) unless @join_muted.nil?
        end

        def return_type
          Root::TypeUpdates
        end
      end

      class GetGroupCall < TLRequest
        CONSTRUCTOR_ID = 0x041845DB

        getter call : Root::TypeInputGroupCall
        getter limit : Int32

        def initialize(
          call : Root::TypeInputGroupCall,
          limit : Int32
        )
          @call = call
          @limit = limit
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @call.tl_serialize(io, false)
          @limit.tl_serialize(io, true)
        end

        def return_type
          Phone::TypeGroupCall
        end
      end

      class GetGroupParticipants < TLRequest
        CONSTRUCTOR_ID = 0xC558D8AB

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
          @offset = offset
          @limit = limit
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @call.tl_serialize(io, false)
          @ids.tl_serialize(io, false)
          @sources.tl_serialize(io, false)
          @offset.tl_serialize(io, true)
          @limit.tl_serialize(io, true)
        end

        def return_type
          Phone::TypeGroupParticipants
        end
      end

      class CheckGroupCall < TLRequest
        CONSTRUCTOR_ID = 0xB59CF977

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @call.tl_serialize(io, false)
          @sources.tl_serialize(io, false)
        end

        def return_type
          Array(Int32)
        end
      end

      class ToggleGroupCallRecord < TLRequest
        CONSTRUCTOR_ID = 0xF128C708

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
          @title = title
          @video_portrait = video_portrait
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!start.nil? ? 1 : 0) |
              (!video.nil? ? 4 : 0) |
              (!title.nil? ? 2 : 0) |
              (!video_portrait.nil? ? 4 : 0)
          ).tl_serialize(io)
          @call.tl_serialize(io, false)
          @title.tl_serialize(io, true) unless @title.nil?
          @video_portrait.tl_serialize(io, false) unless @video_portrait.nil?
        end

        def return_type
          Root::TypeUpdates
        end
      end

      class EditGroupCallParticipant < TLRequest
        CONSTRUCTOR_ID = 0xA5273ABF

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
          @volume = volume
          @raise_hand = raise_hand
          @video_stopped = video_stopped
          @video_paused = video_paused
          @presentation_paused = presentation_paused
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!muted.nil? ? 1 : 0) |
              (!volume.nil? ? 2 : 0) |
              (!raise_hand.nil? ? 4 : 0) |
              (!video_stopped.nil? ? 8 : 0) |
              (!video_paused.nil? ? 16 : 0) |
              (!presentation_paused.nil? ? 32 : 0)
          ).tl_serialize(io)
          @call.tl_serialize(io, false)
          @participant.tl_serialize(io, false)
          @muted.tl_serialize(io, false) unless @muted.nil?
          @volume.tl_serialize(io, true) unless @volume.nil?
          @raise_hand.tl_serialize(io, false) unless @raise_hand.nil?
          @video_stopped.tl_serialize(io, false) unless @video_stopped.nil?
          @video_paused.tl_serialize(io, false) unless @video_paused.nil?
          @presentation_paused.tl_serialize(io, false) unless @presentation_paused.nil?
        end

        def return_type
          Root::TypeUpdates
        end
      end

      class EditGroupCallTitle < TLRequest
        CONSTRUCTOR_ID = 0x1CA6AC0A

        getter call : Root::TypeInputGroupCall
        getter title : Bytes

        def initialize(
          call : Root::TypeInputGroupCall,
          title : Bytes | String | IO
        )
          @call = call
          @title = title
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @call.tl_serialize(io, false)
          @title.tl_serialize(io, true)
        end

        def return_type
          Root::TypeUpdates
        end
      end

      class GetGroupCallJoinAs < TLRequest
        CONSTRUCTOR_ID = 0xEF7C213A

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
          Phone::TypeJoinAsPeers
        end
      end

      class ExportGroupCallInvite < TLRequest
        CONSTRUCTOR_ID = 0xE6AA647F

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!can_self_unmute.nil? ? 1 : 0)
          ).tl_serialize(io)
          @call.tl_serialize(io, false)
        end

        def return_type
          Phone::TypeExportedGroupCallInvite
        end
      end

      class ToggleGroupCallStartSubscription < TLRequest
        CONSTRUCTOR_ID = 0x219C34E6

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @call.tl_serialize(io, false)
          @subscribed.tl_serialize(io, false)
        end

        def return_type
          Root::TypeUpdates
        end
      end

      class StartScheduledGroupCall < TLRequest
        CONSTRUCTOR_ID = 0x5680E342

        getter call : Root::TypeInputGroupCall

        def initialize(
          call : Root::TypeInputGroupCall
        )
          @call = call
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @call.tl_serialize(io, false)
        end

        def return_type
          Root::TypeUpdates
        end
      end

      class SaveDefaultGroupCallJoinAs < TLRequest
        CONSTRUCTOR_ID = 0x575E1F8C

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @join_as.tl_serialize(io, false)
        end

        def return_type
          Bool
        end
      end

      class JoinGroupCallPresentation < TLRequest
        CONSTRUCTOR_ID = 0xCBEA6BC4

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @call.tl_serialize(io, false)
          @params.tl_serialize(io, false)
        end

        def return_type
          Root::TypeUpdates
        end
      end

      class LeaveGroupCallPresentation < TLRequest
        CONSTRUCTOR_ID = 0x1C50D144

        getter call : Root::TypeInputGroupCall

        def initialize(
          call : Root::TypeInputGroupCall
        )
          @call = call
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @call.tl_serialize(io, false)
        end

        def return_type
          Root::TypeUpdates
        end
      end
    end
  end
end
