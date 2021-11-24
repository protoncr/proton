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
    module Updates
      abstract class TypeState < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0xA56C2A3E
            State.tl_deserialize(io, bare)
          when 0xEDD4882A
            GetState.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeDifference < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
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
          when 0x25939651
            GetDifference.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeChannelDifference < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x3E11AFFB
            ChannelDifferenceEmpty.tl_deserialize(io, bare)
          when 0xA4BCC6FE
            ChannelDifferenceTooLong.tl_deserialize(io, bare)
          when 0x2064674E
            ChannelDifference.tl_deserialize(io, bare)
          when 0x03173D78
            GetChannelDifference.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      class State < TypeState
        CONSTRUCTOR_ID = 0xA56C2A3E

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
          @pts = pts
          @qts = qts
          @date = date
          @seq = seq
          @unread_count = unread_count
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @pts.tl_serialize(io, true)
          @qts.tl_serialize(io, true)
          @date.tl_serialize(io, true)
          @seq.tl_serialize(io, true)
          @unread_count.tl_serialize(io, true)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            pts = Int32.tl_deserialize(io, true),
            qts = Int32.tl_deserialize(io, true),
            date = Int32.tl_deserialize(io, true),
            seq = Int32.tl_deserialize(io, true),
            unread_count = Int32.tl_deserialize(io, true),
          )
        end
      end

      class DifferenceEmpty < TypeDifference
        CONSTRUCTOR_ID = 0x5D75A138

        getter date : Int32
        getter seq : Int32

        def initialize(
          date : Int32,
          seq : Int32
        )
          @date = date
          @seq = seq
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @date.tl_serialize(io, true)
          @seq.tl_serialize(io, true)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            date = Int32.tl_deserialize(io, true),
            seq = Int32.tl_deserialize(io, true),
          )
        end
      end

      class Difference < TypeDifference
        CONSTRUCTOR_ID = 0x00F49CA0

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @new_messages.tl_serialize(io, false)
          @new_encrypted_messages.tl_serialize(io, false)
          @other_updates.tl_serialize(io, false)
          @chats.tl_serialize(io, false)
          @users.tl_serialize(io, false)
          @state.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            new_messages = Array(Root::TypeMessage).tl_deserialize(io, false),
            new_encrypted_messages = Array(Root::TypeEncryptedMessage).tl_deserialize(io, false),
            other_updates = Array(Root::TypeUpdate).tl_deserialize(io, false),
            chats = Array(Root::TypeChat).tl_deserialize(io, false),
            users = Array(Root::TypeUser).tl_deserialize(io, false),
            state = Updates::TypeState.tl_deserialize(io, false),
          )
        end
      end

      class DifferenceSlice < TypeDifference
        CONSTRUCTOR_ID = 0xA8FB1981

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @new_messages.tl_serialize(io, false)
          @new_encrypted_messages.tl_serialize(io, false)
          @other_updates.tl_serialize(io, false)
          @chats.tl_serialize(io, false)
          @users.tl_serialize(io, false)
          @intermediate_state.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            new_messages = Array(Root::TypeMessage).tl_deserialize(io, false),
            new_encrypted_messages = Array(Root::TypeEncryptedMessage).tl_deserialize(io, false),
            other_updates = Array(Root::TypeUpdate).tl_deserialize(io, false),
            chats = Array(Root::TypeChat).tl_deserialize(io, false),
            users = Array(Root::TypeUser).tl_deserialize(io, false),
            intermediate_state = Updates::TypeState.tl_deserialize(io, false),
          )
        end
      end

      class DifferenceTooLong < TypeDifference
        CONSTRUCTOR_ID = 0x4AFE8F6D

        getter pts : Int32

        def initialize(
          pts : Int32
        )
          @pts = pts
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @pts.tl_serialize(io, true)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            pts = Int32.tl_deserialize(io, true),
          )
        end
      end

      class ChannelDifferenceEmpty < TypeChannelDifference
        CONSTRUCTOR_ID = 0x3E11AFFB

        getter pts : Int32
        getter final : Bool | Nil
        getter timeout : Int32 | Nil

        def initialize(
          pts : Int32,
          final : Bool | Nil = nil,
          timeout : Int32 | Nil = nil
        )
          @pts = pts
          @final = final
          @timeout = timeout
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!final.nil? ? 1 : 0) |
              (!timeout.nil? ? 2 : 0)
          ).tl_serialize(io)
          @pts.tl_serialize(io, true)
          @timeout.tl_serialize(io, true) unless @timeout.nil?
        end

        def self.tl_deserialize(io : IO, bare = false)
          flags = Int32.tl_deserialize(io)
          new(
            pts = Int32.tl_deserialize(io, true),
            final = flags & 1 == 1,
            timeout = flags & 2 == 1 ? Int32.tl_deserialize(io, true) : nil,
          )
        end
      end

      class ChannelDifferenceTooLong < TypeChannelDifference
        CONSTRUCTOR_ID = 0xA4BCC6FE

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
          @timeout = timeout
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!final.nil? ? 1 : 0) |
              (!timeout.nil? ? 2 : 0)
          ).tl_serialize(io)
          @timeout.tl_serialize(io, true) unless @timeout.nil?
          @dialog.tl_serialize(io, false)
          @messages.tl_serialize(io, false)
          @chats.tl_serialize(io, false)
          @users.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          flags = Int32.tl_deserialize(io)
          new(
            dialog = Root::TypeDialog.tl_deserialize(io, false),
            messages = Array(Root::TypeMessage).tl_deserialize(io, false),
            chats = Array(Root::TypeChat).tl_deserialize(io, false),
            users = Array(Root::TypeUser).tl_deserialize(io, false),
            final = flags & 1 == 1,
            timeout = flags & 2 == 1 ? Int32.tl_deserialize(io, true) : nil,
          )
        end
      end

      class ChannelDifference < TypeChannelDifference
        CONSTRUCTOR_ID = 0x2064674E

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
          @pts = pts
          @new_messages = new_messages
          @other_updates = other_updates
          @chats = chats
          @users = users
          @final = final
          @timeout = timeout
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!final.nil? ? 1 : 0) |
              (!timeout.nil? ? 2 : 0)
          ).tl_serialize(io)
          @pts.tl_serialize(io, true)
          @timeout.tl_serialize(io, true) unless @timeout.nil?
          @new_messages.tl_serialize(io, false)
          @other_updates.tl_serialize(io, false)
          @chats.tl_serialize(io, false)
          @users.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          flags = Int32.tl_deserialize(io)
          new(
            pts = Int32.tl_deserialize(io, true),
            new_messages = Array(Root::TypeMessage).tl_deserialize(io, false),
            other_updates = Array(Root::TypeUpdate).tl_deserialize(io, false),
            chats = Array(Root::TypeChat).tl_deserialize(io, false),
            users = Array(Root::TypeUser).tl_deserialize(io, false),
            final = flags & 1 == 1,
            timeout = flags & 2 == 1 ? Int32.tl_deserialize(io, true) : nil,
          )
        end
      end

      class GetState < TLRequest
        CONSTRUCTOR_ID = 0xEDD4882A

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
        end

        def return_type
          Updates::TypeState
        end
      end

      class GetDifference < TLRequest
        CONSTRUCTOR_ID = 0x25939651

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
          @pts = pts
          @date = date
          @qts = qts
          @pts_total_limit = pts_total_limit
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!pts_total_limit.nil? ? 1 : 0)
          ).tl_serialize(io)
          @pts.tl_serialize(io, true)
          @pts_total_limit.tl_serialize(io, true) unless @pts_total_limit.nil?
          @date.tl_serialize(io, true)
          @qts.tl_serialize(io, true)
        end

        def return_type
          Updates::TypeDifference
        end
      end

      class GetChannelDifference < TLRequest
        CONSTRUCTOR_ID = 0x03173D78

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
          @pts = pts
          @limit = limit
          @force = force
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!force.nil? ? 1 : 0)
          ).tl_serialize(io)
          @channel.tl_serialize(io, false)
          @filter.tl_serialize(io, false)
          @pts.tl_serialize(io, true)
          @limit.tl_serialize(io, true)
        end

        def return_type
          Updates::TypeChannelDifference
        end
      end
    end
  end
end
