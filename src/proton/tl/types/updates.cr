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
  module Updates
    abstract class TypeState < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xA56C2A3E
          State.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: 0x%08X" % constructor_id
        end
      end
    end

    abstract class TypeDifference < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x5D75A138
          DifferenceEmpty.tl_deserialize(io, bare)
        when 0x00F49CA0
          Difference.tl_deserialize(io, bare)
        when 0xA8FB1981
          DifferenceSlice.tl_deserialize(io, bare)
        when 0x4AFE8F6D
          DifferenceTooLong.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: 0x%08X" % constructor_id
        end
      end
    end

    abstract class TypeChannelDifference < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x3E11AFFB
          ChannelDifferenceEmpty.tl_deserialize(io, bare)
        when 0xA4BCC6FE
          ChannelDifferenceTooLong.tl_deserialize(io, bare)
        when 0x2064674E
          ChannelDifference.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: 0x%08X" % constructor_id
        end
      end
    end

    class State < TypeState
      getter constructor_id : UInt32 = 0xA56C2A3E_u32
      class_getter constructor_id : UInt32 = 0xA56C2A3E_u32

      getter pts : Int32
      getter qts : Int32
      getter date : Int32
      getter seq : Int32
      getter unread_count : Int32

      def initialize(
        pts : Int32,
        qts : Int32,
        date : Int32,
        seq : Int32,
        unread_count : Int32
      )
        @pts = TL::Utils.parse_int!(pts, Int32)
        @qts = TL::Utils.parse_int!(qts, Int32)
        @date = TL::Utils.parse_int!(date, Int32)
        @seq = TL::Utils.parse_int!(seq, Int32)
        @unread_count = TL::Utils.parse_int!(unread_count, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @pts.tl_serialize(io)
        @qts.tl_serialize(io)
        @date.tl_serialize(io)
        @seq.tl_serialize(io)
        @unread_count.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          pts: Int32.tl_deserialize(io),
          qts: Int32.tl_deserialize(io),
          date: Int32.tl_deserialize(io),
          seq: Int32.tl_deserialize(io),
          unread_count: Int32.tl_deserialize(io),
        )
      end
    end

    class DifferenceEmpty < TypeDifference
      getter constructor_id : UInt32 = 0x5D75A138_u32
      class_getter constructor_id : UInt32 = 0x5D75A138_u32

      getter date : Int32
      getter seq : Int32

      def initialize(
        date : Int32,
        seq : Int32
      )
        @date = TL::Utils.parse_int!(date, Int32)
        @seq = TL::Utils.parse_int!(seq, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @date.tl_serialize(io)
        @seq.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          date: Int32.tl_deserialize(io),
          seq: Int32.tl_deserialize(io),
        )
      end
    end

    class Difference < TypeDifference
      getter constructor_id : UInt32 = 0x00F49CA0_u32
      class_getter constructor_id : UInt32 = 0x00F49CA0_u32

      getter new_messages : Array(Root::TypeMessage)
      getter new_encrypted_messages : Array(Root::TypeEncryptedMessage)
      getter other_updates : Array(Root::TypeUpdate)
      getter chats : Array(Root::TypeChat)
      getter users : Array(Root::TypeUser)
      getter state : Updates::TypeState

      def initialize(
        new_messages : Array(Root::TypeMessage),
        new_encrypted_messages : Array(Root::TypeEncryptedMessage),
        other_updates : Array(Root::TypeUpdate),
        chats : Array(Root::TypeChat),
        users : Array(Root::TypeUser),
        state : Updates::TypeState
      )
        @new_messages = new_messages
        @new_encrypted_messages = new_encrypted_messages
        @other_updates = other_updates
        @chats = chats
        @users = users
        @state = state
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @new_messages.tl_serialize(io)
        @new_encrypted_messages.tl_serialize(io)
        @other_updates.tl_serialize(io)
        @chats.tl_serialize(io)
        @users.tl_serialize(io)
        @state.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          new_messages: Array(Root::TypeMessage).tl_deserialize(io),
          new_encrypted_messages: Array(Root::TypeEncryptedMessage).tl_deserialize(io),
          other_updates: Array(Root::TypeUpdate).tl_deserialize(io),
          chats: Array(Root::TypeChat).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
          state: Updates::TypeState.tl_deserialize(io),
        )
      end
    end

    class DifferenceSlice < TypeDifference
      getter constructor_id : UInt32 = 0xA8FB1981_u32
      class_getter constructor_id : UInt32 = 0xA8FB1981_u32

      getter new_messages : Array(Root::TypeMessage)
      getter new_encrypted_messages : Array(Root::TypeEncryptedMessage)
      getter other_updates : Array(Root::TypeUpdate)
      getter chats : Array(Root::TypeChat)
      getter users : Array(Root::TypeUser)
      getter intermediate_state : Updates::TypeState

      def initialize(
        new_messages : Array(Root::TypeMessage),
        new_encrypted_messages : Array(Root::TypeEncryptedMessage),
        other_updates : Array(Root::TypeUpdate),
        chats : Array(Root::TypeChat),
        users : Array(Root::TypeUser),
        intermediate_state : Updates::TypeState
      )
        @new_messages = new_messages
        @new_encrypted_messages = new_encrypted_messages
        @other_updates = other_updates
        @chats = chats
        @users = users
        @intermediate_state = intermediate_state
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @new_messages.tl_serialize(io)
        @new_encrypted_messages.tl_serialize(io)
        @other_updates.tl_serialize(io)
        @chats.tl_serialize(io)
        @users.tl_serialize(io)
        @intermediate_state.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          new_messages: Array(Root::TypeMessage).tl_deserialize(io),
          new_encrypted_messages: Array(Root::TypeEncryptedMessage).tl_deserialize(io),
          other_updates: Array(Root::TypeUpdate).tl_deserialize(io),
          chats: Array(Root::TypeChat).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
          intermediate_state: Updates::TypeState.tl_deserialize(io),
        )
      end
    end

    class DifferenceTooLong < TypeDifference
      getter constructor_id : UInt32 = 0x4AFE8F6D_u32
      class_getter constructor_id : UInt32 = 0x4AFE8F6D_u32

      getter pts : Int32

      def initialize(
        pts : Int32
      )
        @pts = TL::Utils.parse_int!(pts, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @pts.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          pts: Int32.tl_deserialize(io),
        )
      end
    end

    class ChannelDifferenceEmpty < TypeChannelDifference
      getter constructor_id : UInt32 = 0x3E11AFFB_u32
      class_getter constructor_id : UInt32 = 0x3E11AFFB_u32

      getter pts : Int32
      getter final : Bool | Nil
      getter timeout : Int32 | Nil

      def initialize(
        pts : Int32,
        final : Bool | Nil = nil,
        timeout : Int32 | Nil = nil
      )
        @pts = TL::Utils.parse_int!(pts, Int32)
        @final = final
        @timeout = TL::Utils.parse_int(timeout, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!final.nil? ? 1 : 0) |
            (!timeout.nil? ? 2 : 0)
        ).tl_serialize(io)
        @pts.tl_serialize(io)
        @timeout.tl_serialize(io) unless @timeout.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        flags = UInt32.tl_deserialize(io)
        new(
          final: flags & 1 > 0 || nil,
          pts: Int32.tl_deserialize(io),
          timeout: flags & 2 > 0 ? Int32.tl_deserialize(io) : nil,
        )
      end
    end

    class ChannelDifferenceTooLong < TypeChannelDifference
      getter constructor_id : UInt32 = 0xA4BCC6FE_u32
      class_getter constructor_id : UInt32 = 0xA4BCC6FE_u32

      getter dialog : Root::TypeDialog
      getter messages : Array(Root::TypeMessage)
      getter chats : Array(Root::TypeChat)
      getter users : Array(Root::TypeUser)
      getter final : Bool | Nil
      getter timeout : Int32 | Nil

      def initialize(
        dialog : Root::TypeDialog,
        messages : Array(Root::TypeMessage),
        chats : Array(Root::TypeChat),
        users : Array(Root::TypeUser),
        final : Bool | Nil = nil,
        timeout : Int32 | Nil = nil
      )
        @dialog = dialog
        @messages = messages
        @chats = chats
        @users = users
        @final = final
        @timeout = TL::Utils.parse_int(timeout, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!final.nil? ? 1 : 0) |
            (!timeout.nil? ? 2 : 0)
        ).tl_serialize(io)
        @timeout.tl_serialize(io) unless @timeout.nil?
        @dialog.tl_serialize(io)
        @messages.tl_serialize(io)
        @chats.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        flags = UInt32.tl_deserialize(io)
        new(
          final: flags & 1 > 0 || nil,
          timeout: flags & 2 > 0 ? Int32.tl_deserialize(io) : nil,
          dialog: Root::TypeDialog.tl_deserialize(io),
          messages: Array(Root::TypeMessage).tl_deserialize(io),
          chats: Array(Root::TypeChat).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
        )
      end
    end

    class ChannelDifference < TypeChannelDifference
      getter constructor_id : UInt32 = 0x2064674E_u32
      class_getter constructor_id : UInt32 = 0x2064674E_u32

      getter pts : Int32
      getter new_messages : Array(Root::TypeMessage)
      getter other_updates : Array(Root::TypeUpdate)
      getter chats : Array(Root::TypeChat)
      getter users : Array(Root::TypeUser)
      getter final : Bool | Nil
      getter timeout : Int32 | Nil

      def initialize(
        pts : Int32,
        new_messages : Array(Root::TypeMessage),
        other_updates : Array(Root::TypeUpdate),
        chats : Array(Root::TypeChat),
        users : Array(Root::TypeUser),
        final : Bool | Nil = nil,
        timeout : Int32 | Nil = nil
      )
        @pts = TL::Utils.parse_int!(pts, Int32)
        @new_messages = new_messages
        @other_updates = other_updates
        @chats = chats
        @users = users
        @final = final
        @timeout = TL::Utils.parse_int(timeout, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!final.nil? ? 1 : 0) |
            (!timeout.nil? ? 2 : 0)
        ).tl_serialize(io)
        @pts.tl_serialize(io)
        @timeout.tl_serialize(io) unless @timeout.nil?
        @new_messages.tl_serialize(io)
        @other_updates.tl_serialize(io)
        @chats.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        flags = UInt32.tl_deserialize(io)
        new(
          final: flags & 1 > 0 || nil,
          pts: Int32.tl_deserialize(io),
          timeout: flags & 2 > 0 ? Int32.tl_deserialize(io) : nil,
          new_messages: Array(Root::TypeMessage).tl_deserialize(io),
          other_updates: Array(Root::TypeUpdate).tl_deserialize(io),
          chats: Array(Root::TypeChat).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
        )
      end
    end

    class GetState < TLRequest
      getter constructor_id : UInt32 = 0xEDD4882A_u32
      class_getter constructor_id : UInt32 = 0xEDD4882A_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new()
      end

      def self.return_type : TL::Deserializable
        Updates::TypeState
      end
    end

    class GetDifference < TLRequest
      getter constructor_id : UInt32 = 0x25939651_u32
      class_getter constructor_id : UInt32 = 0x25939651_u32

      getter pts : Int32
      getter date : Int32
      getter qts : Int32
      getter pts_total_limit : Int32 | Nil

      def initialize(
        pts : Int32,
        date : Int32,
        qts : Int32,
        pts_total_limit : Int32 | Nil = nil
      )
        @pts = TL::Utils.parse_int!(pts, Int32)
        @date = TL::Utils.parse_int!(date, Int32)
        @qts = TL::Utils.parse_int!(qts, Int32)
        @pts_total_limit = TL::Utils.parse_int(pts_total_limit, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!pts_total_limit.nil? ? 1 : 0)
        ).tl_serialize(io)
        @pts.tl_serialize(io)
        @pts_total_limit.tl_serialize(io) unless @pts_total_limit.nil?
        @date.tl_serialize(io)
        @qts.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        flags = UInt32.tl_deserialize(io)
        new(
          pts: Int32.tl_deserialize(io),
          pts_total_limit: flags & 1 > 0 ? Int32.tl_deserialize(io) : nil,
          date: Int32.tl_deserialize(io),
          qts: Int32.tl_deserialize(io),
        )
      end

      def self.return_type : TL::Deserializable
        Updates::TypeDifference
      end
    end

    class GetChannelDifference < TLRequest
      getter constructor_id : UInt32 = 0x03173D78_u32
      class_getter constructor_id : UInt32 = 0x03173D78_u32

      getter channel : Root::TypeInputChannel
      getter filter : Root::TypeChannelMessagesFilter
      getter pts : Int32
      getter limit : Int32
      getter force : Bool | Nil

      def initialize(
        channel : Root::TypeInputChannel,
        filter : Root::TypeChannelMessagesFilter,
        pts : Int32,
        limit : Int32,
        force : Bool | Nil = nil
      )
        @channel = channel
        @filter = filter
        @pts = TL::Utils.parse_int!(pts, Int32)
        @limit = TL::Utils.parse_int!(limit, Int32)
        @force = force
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!force.nil? ? 1 : 0)
        ).tl_serialize(io)
        @channel.tl_serialize(io)
        @filter.tl_serialize(io)
        @pts.tl_serialize(io)
        @limit.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        flags = UInt32.tl_deserialize(io)
        new(
          force: flags & 1 > 0 || nil,
          channel: Root::TypeInputChannel.tl_deserialize(io),
          filter: Root::TypeChannelMessagesFilter.tl_deserialize(io),
          pts: Int32.tl_deserialize(io),
          limit: Int32.tl_deserialize(io),
        )
      end

      def self.return_type : TL::Deserializable
        Updates::TypeChannelDifference
      end
    end
  end
end
