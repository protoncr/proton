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
require "./updates"

module Proton::TL
  module Messages
    abstract class TypeDialogs < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x15BA6C40
          Dialogs.tl_deserialize(io, bare)
        when 0x71E094F3
          DialogsSlice.tl_deserialize(io, bare)
        when 0xF0E3E596
          DialogsNotModified.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeMessages < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x8C718E87
          Messages.tl_deserialize(io, bare)
        when 0x3A54685E
          MessagesSlice.tl_deserialize(io, bare)
        when 0x64479808
          ChannelMessages.tl_deserialize(io, bare)
        when 0x74535F21
          MessagesNotModified.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeChats < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x64FF9FD5
          Chats.tl_deserialize(io, bare)
        when 0x9CD81144
          ChatsSlice.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeChatFull < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xE5D7D19C
          ChatFull.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeAffectedHistory < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xB45C69D1
          AffectedHistory.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeDhConfig < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xC0E24635
          DhConfigNotModified.tl_deserialize(io, bare)
        when 0x2C221EDD
          DhConfig.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeSentEncryptedMessage < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x560F8935
          SentEncryptedMessage.tl_deserialize(io, bare)
        when 0x9493FF32
          SentEncryptedFile.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeStickers < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xF1749A22
          StickersNotModified.tl_deserialize(io, bare)
        when 0x30A6EC7E
          Stickers.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeAllStickers < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xE86602C3
          AllStickersNotModified.tl_deserialize(io, bare)
        when 0xCDBBCEBB
          AllStickers.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeAffectedMessages < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x84D19185
          AffectedMessages.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeStickerSet < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xB60A24A6
          StickerSet.tl_deserialize(io, bare)
        when 0xD3F924EB
          StickerSetNotModified.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeSavedGifs < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xE8025CA2
          SavedGifsNotModified.tl_deserialize(io, bare)
        when 0x84A02A0D
          SavedGifs.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeBotResults < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x947CA848
          BotResults.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeBotCallbackAnswer < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x36585EA4
          BotCallbackAnswer.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeMessageEditData < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x26B5DDE6
          MessageEditData.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePeerDialogs < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x3371C354
          PeerDialogs.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeFeaturedStickers < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xC6DC0C66
          FeaturedStickersNotModified.tl_deserialize(io, bare)
        when 0x84C02310
          FeaturedStickers.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeRecentStickers < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x0B17F890
          RecentStickersNotModified.tl_deserialize(io, bare)
        when 0x88D37C56
          RecentStickers.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeArchivedStickers < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x4FCBA9C8
          ArchivedStickers.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeStickerSetInstallResult < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x38641628
          StickerSetInstallResultSuccess.tl_deserialize(io, bare)
        when 0x35E410A8
          StickerSetInstallResultArchive.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeHighScores < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x9A3BFD99
          HighScores.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeFavedStickers < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x9E8FA6D3
          FavedStickersNotModified.tl_deserialize(io, bare)
        when 0x2CB51097
          FavedStickers.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeFoundStickerSets < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x0D54B65D
          FoundStickerSetsNotModified.tl_deserialize(io, bare)
        when 0x8AF09DD2
          FoundStickerSets.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeSearchCounter < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xE844EBFF
          SearchCounter.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInactiveChats < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xA927FEC5
          InactiveChats.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeVotesList < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x0823F649
          VotesList.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeMessageViews < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xB6C4F543
          MessageViews.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeDiscussionMessage < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xA6341782
          DiscussionMessage.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeHistoryImport < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x1662AF0B
          HistoryImport.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeHistoryImportParsed < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x5E0FB7B9
          HistoryImportParsed.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeAffectedFoundMessages < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xEF8D3E6C
          AffectedFoundMessages.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeExportedChatInvites < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xBDC62DCC
          ExportedChatInvites.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeExportedChatInvite < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x1871BE50
          ExportedChatInvite.tl_deserialize(io, bare)
        when 0x222600EF
          ExportedChatInviteReplaced.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeChatInviteImporters < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x81B6B00A
          ChatInviteImporters.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeChatAdminsWithInvites < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xB69B72D7
          ChatAdminsWithInvites.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeCheckedHistoryImportPeer < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xA24DE717
          CheckedHistoryImportPeer.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeSponsoredMessages < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x65A4C7D5
          SponsoredMessages.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeSearchResultsCalendar < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x147EE23C
          SearchResultsCalendar.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeSearchResultsPositions < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x53B22BAF
          SearchResultsPositions.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePeerSettings < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x6880B94D
          PeerSettings.tl_deserialize(io, bare)
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

    abstract class TypeEncryptedChat < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeMessageMedia < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeChatInvite < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeDocument < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeWebPage < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeEncryptedFile < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeChatOnlines < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeEmojiKeywordsDifference < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeEmojiURL < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeUrlAuthResult < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    class Dialogs < TypeDialogs
      getter constructor_id : UInt32 = 0x15BA6C40_u32
      class_getter constructor_id : UInt32 = 0x15BA6C40_u32

      getter dialogs : Array(Root::TypeDialog)
      getter messages : Array(Root::TypeMessage)
      getter chats : Array(Root::TypeChat)
      getter users : Array(Root::TypeUser)

      def initialize(
        dialogs : Array(Root::TypeDialog),
        messages : Array(Root::TypeMessage),
        chats : Array(Root::TypeChat),
        users : Array(Root::TypeUser)
      )
        @dialogs = dialogs
        @messages = messages
        @chats = chats
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @dialogs.tl_serialize(io)
        @messages.tl_serialize(io)
        @chats.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          dialogs: Array(Root::TypeDialog).tl_deserialize(io),
          messages: Array(Root::TypeMessage).tl_deserialize(io),
          chats: Array(Root::TypeChat).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
        )
      end
    end

    class DialogsSlice < TypeDialogs
      getter constructor_id : UInt32 = 0x71E094F3_u32
      class_getter constructor_id : UInt32 = 0x71E094F3_u32

      getter count : Int32
      getter dialogs : Array(Root::TypeDialog)
      getter messages : Array(Root::TypeMessage)
      getter chats : Array(Root::TypeChat)
      getter users : Array(Root::TypeUser)

      def initialize(
        count : Int32,
        dialogs : Array(Root::TypeDialog),
        messages : Array(Root::TypeMessage),
        chats : Array(Root::TypeChat),
        users : Array(Root::TypeUser)
      )
        @count = TL::Utils.parse_int!(count, Int32)
        @dialogs = dialogs
        @messages = messages
        @chats = chats
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @count.tl_serialize(io)
        @dialogs.tl_serialize(io)
        @messages.tl_serialize(io)
        @chats.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          count: Int32.tl_deserialize(io),
          dialogs: Array(Root::TypeDialog).tl_deserialize(io),
          messages: Array(Root::TypeMessage).tl_deserialize(io),
          chats: Array(Root::TypeChat).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
        )
      end
    end

    class DialogsNotModified < TypeDialogs
      getter constructor_id : UInt32 = 0xF0E3E596_u32
      class_getter constructor_id : UInt32 = 0xF0E3E596_u32

      getter count : Int32

      def initialize(
        count : Int32
      )
        @count = TL::Utils.parse_int!(count, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @count.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          count: Int32.tl_deserialize(io),
        )
      end
    end

    class Messages < TypeMessages
      getter constructor_id : UInt32 = 0x8C718E87_u32
      class_getter constructor_id : UInt32 = 0x8C718E87_u32

      getter messages : Array(Root::TypeMessage)
      getter chats : Array(Root::TypeChat)
      getter users : Array(Root::TypeUser)

      def initialize(
        messages : Array(Root::TypeMessage),
        chats : Array(Root::TypeChat),
        users : Array(Root::TypeUser)
      )
        @messages = messages
        @chats = chats
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @messages.tl_serialize(io)
        @chats.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          messages: Array(Root::TypeMessage).tl_deserialize(io),
          chats: Array(Root::TypeChat).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
        )
      end
    end

    class MessagesSlice < TypeMessages
      getter constructor_id : UInt32 = 0x3A54685E_u32
      class_getter constructor_id : UInt32 = 0x3A54685E_u32

      getter count : Int32
      getter messages : Array(Root::TypeMessage)
      getter chats : Array(Root::TypeChat)
      getter users : Array(Root::TypeUser)
      getter inexact : Bool | Nil
      getter next_rate : Int32 | Nil
      getter offset_id_offset : Int32 | Nil

      def initialize(
        count : Int32,
        messages : Array(Root::TypeMessage),
        chats : Array(Root::TypeChat),
        users : Array(Root::TypeUser),
        inexact : Bool | Nil = nil,
        next_rate : Int32 | Nil = nil,
        offset_id_offset : Int32 | Nil = nil
      )
        @count = TL::Utils.parse_int!(count, Int32)
        @messages = messages
        @chats = chats
        @users = users
        @inexact = inexact
        @next_rate = TL::Utils.parse_int(next_rate, Int32)
        @offset_id_offset = TL::Utils.parse_int(offset_id_offset, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!inexact.nil? ? 0x02 : 0) |
            (!next_rate.nil? ? 0x01 : 0) |
            (!offset_id_offset.nil? ? 0x04 : 0)
        ).tl_serialize(io)
        @count.tl_serialize(io)
        @next_rate.tl_serialize(io) unless @next_rate.nil?
        @offset_id_offset.tl_serialize(io) unless @offset_id_offset.nil?
        @messages.tl_serialize(io)
        @chats.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        flags = UInt32.tl_deserialize(io)
        new(
          count: Int32.tl_deserialize(io),
          messages: Array(Root::TypeMessage).tl_deserialize(io),
          chats: Array(Root::TypeChat).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
          inexact: flags & 0x02 > 0 || nil,
          next_rate: flags & 0x01 > 0 ? Int32.tl_deserialize(io) : nil,
          offset_id_offset: flags & 0x04 > 0 ? Int32.tl_deserialize(io) : nil,
        )
      end
    end

    class ChannelMessages < TypeMessages
      getter constructor_id : UInt32 = 0x64479808_u32
      class_getter constructor_id : UInt32 = 0x64479808_u32

      getter pts : Int32
      getter count : Int32
      getter messages : Array(Root::TypeMessage)
      getter chats : Array(Root::TypeChat)
      getter users : Array(Root::TypeUser)
      getter inexact : Bool | Nil
      getter offset_id_offset : Int32 | Nil

      def initialize(
        pts : Int32,
        count : Int32,
        messages : Array(Root::TypeMessage),
        chats : Array(Root::TypeChat),
        users : Array(Root::TypeUser),
        inexact : Bool | Nil = nil,
        offset_id_offset : Int32 | Nil = nil
      )
        @pts = TL::Utils.parse_int!(pts, Int32)
        @count = TL::Utils.parse_int!(count, Int32)
        @messages = messages
        @chats = chats
        @users = users
        @inexact = inexact
        @offset_id_offset = TL::Utils.parse_int(offset_id_offset, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!inexact.nil? ? 0x02 : 0) |
            (!offset_id_offset.nil? ? 0x04 : 0)
        ).tl_serialize(io)
        @pts.tl_serialize(io)
        @count.tl_serialize(io)
        @offset_id_offset.tl_serialize(io) unless @offset_id_offset.nil?
        @messages.tl_serialize(io)
        @chats.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        flags = UInt32.tl_deserialize(io)
        new(
          pts: Int32.tl_deserialize(io),
          count: Int32.tl_deserialize(io),
          messages: Array(Root::TypeMessage).tl_deserialize(io),
          chats: Array(Root::TypeChat).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
          inexact: flags & 0x02 > 0 || nil,
          offset_id_offset: flags & 0x04 > 0 ? Int32.tl_deserialize(io) : nil,
        )
      end
    end

    class MessagesNotModified < TypeMessages
      getter constructor_id : UInt32 = 0x74535F21_u32
      class_getter constructor_id : UInt32 = 0x74535F21_u32

      getter count : Int32

      def initialize(
        count : Int32
      )
        @count = TL::Utils.parse_int!(count, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @count.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          count: Int32.tl_deserialize(io),
        )
      end
    end

    class Chats < TypeChats
      getter constructor_id : UInt32 = 0x64FF9FD5_u32
      class_getter constructor_id : UInt32 = 0x64FF9FD5_u32

      getter chats : Array(Root::TypeChat)

      def initialize(
        chats : Array(Root::TypeChat)
      )
        @chats = chats
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @chats.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          chats: Array(Root::TypeChat).tl_deserialize(io),
        )
      end
    end

    class ChatsSlice < TypeChats
      getter constructor_id : UInt32 = 0x9CD81144_u32
      class_getter constructor_id : UInt32 = 0x9CD81144_u32

      getter count : Int32
      getter chats : Array(Root::TypeChat)

      def initialize(
        count : Int32,
        chats : Array(Root::TypeChat)
      )
        @count = TL::Utils.parse_int!(count, Int32)
        @chats = chats
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @count.tl_serialize(io)
        @chats.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          count: Int32.tl_deserialize(io),
          chats: Array(Root::TypeChat).tl_deserialize(io),
        )
      end
    end

    class ChatFull < TypeChatFull
      getter constructor_id : UInt32 = 0xE5D7D19C_u32
      class_getter constructor_id : UInt32 = 0xE5D7D19C_u32

      getter full_chat : Root::TypeChatFull
      getter chats : Array(Root::TypeChat)
      getter users : Array(Root::TypeUser)

      def initialize(
        full_chat : Root::TypeChatFull,
        chats : Array(Root::TypeChat),
        users : Array(Root::TypeUser)
      )
        @full_chat = full_chat
        @chats = chats
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @full_chat.tl_serialize(io)
        @chats.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          full_chat: Root::TypeChatFull.tl_deserialize(io),
          chats: Array(Root::TypeChat).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
        )
      end
    end

    class AffectedHistory < TypeAffectedHistory
      getter constructor_id : UInt32 = 0xB45C69D1_u32
      class_getter constructor_id : UInt32 = 0xB45C69D1_u32

      getter pts : Int32
      getter pts_count : Int32
      getter offset : Int32

      def initialize(
        pts : Int32,
        pts_count : Int32,
        offset : Int32
      )
        @pts = TL::Utils.parse_int!(pts, Int32)
        @pts_count = TL::Utils.parse_int!(pts_count, Int32)
        @offset = TL::Utils.parse_int!(offset, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @pts.tl_serialize(io)
        @pts_count.tl_serialize(io)
        @offset.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          pts: Int32.tl_deserialize(io),
          pts_count: Int32.tl_deserialize(io),
          offset: Int32.tl_deserialize(io),
        )
      end
    end

    class DhConfigNotModified < TypeDhConfig
      getter constructor_id : UInt32 = 0xC0E24635_u32
      class_getter constructor_id : UInt32 = 0xC0E24635_u32

      getter random : Bytes

      def initialize(
        random : Bytes | String | IO
      )
        @random = TL::Utils.parse_bytes!(random)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @random.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          random: Bytes.tl_deserialize(io),
        )
      end
    end

    class DhConfig < TypeDhConfig
      getter constructor_id : UInt32 = 0x2C221EDD_u32
      class_getter constructor_id : UInt32 = 0x2C221EDD_u32

      getter g : Int32
      getter p : Bytes
      getter version : Int32
      getter random : Bytes

      def initialize(
        g : Int32,
        p : Bytes | String | IO,
        version : Int32,
        random : Bytes | String | IO
      )
        @g = TL::Utils.parse_int!(g, Int32)
        @p = TL::Utils.parse_bytes!(p)
        @version = TL::Utils.parse_int!(version, Int32)
        @random = TL::Utils.parse_bytes!(random)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @g.tl_serialize(io)
        @p.tl_serialize(io)
        @version.tl_serialize(io)
        @random.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          g: Int32.tl_deserialize(io),
          p: Bytes.tl_deserialize(io),
          version: Int32.tl_deserialize(io),
          random: Bytes.tl_deserialize(io),
        )
      end
    end

    class SentEncryptedMessage < TypeSentEncryptedMessage
      getter constructor_id : UInt32 = 0x560F8935_u32
      class_getter constructor_id : UInt32 = 0x560F8935_u32

      getter date : Int32

      def initialize(
        date : Int32
      )
        @date = TL::Utils.parse_int!(date, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @date.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          date: Int32.tl_deserialize(io),
        )
      end
    end

    class SentEncryptedFile < TypeSentEncryptedMessage
      getter constructor_id : UInt32 = 0x9493FF32_u32
      class_getter constructor_id : UInt32 = 0x9493FF32_u32

      getter date : Int32
      getter file : Root::TypeEncryptedFile

      def initialize(
        date : Int32,
        file : Root::TypeEncryptedFile
      )
        @date = TL::Utils.parse_int!(date, Int32)
        @file = file
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @date.tl_serialize(io)
        @file.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          date: Int32.tl_deserialize(io),
          file: Root::TypeEncryptedFile.tl_deserialize(io),
        )
      end
    end

    class StickersNotModified < TypeStickers
      getter constructor_id : UInt32 = 0xF1749A22_u32
      class_getter constructor_id : UInt32 = 0xF1749A22_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new()
      end
    end

    class Stickers < TypeStickers
      getter constructor_id : UInt32 = 0x30A6EC7E_u32
      class_getter constructor_id : UInt32 = 0x30A6EC7E_u32

      getter hash : Int64
      getter stickers : Array(Root::TypeDocument)

      def initialize(
        hash : Int64,
        stickers : Array(Root::TypeDocument)
      )
        @hash = hash
        @stickers = stickers
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @hash.tl_serialize(io)
        @stickers.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          hash: Int64.tl_deserialize(io),
          stickers: Array(Root::TypeDocument).tl_deserialize(io),
        )
      end
    end

    class AllStickersNotModified < TypeAllStickers
      getter constructor_id : UInt32 = 0xE86602C3_u32
      class_getter constructor_id : UInt32 = 0xE86602C3_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new()
      end
    end

    class AllStickers < TypeAllStickers
      getter constructor_id : UInt32 = 0xCDBBCEBB_u32
      class_getter constructor_id : UInt32 = 0xCDBBCEBB_u32

      getter hash : Int64
      getter sets : Array(Root::TypeStickerSet)

      def initialize(
        hash : Int64,
        sets : Array(Root::TypeStickerSet)
      )
        @hash = hash
        @sets = sets
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @hash.tl_serialize(io)
        @sets.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          hash: Int64.tl_deserialize(io),
          sets: Array(Root::TypeStickerSet).tl_deserialize(io),
        )
      end
    end

    class AffectedMessages < TypeAffectedMessages
      getter constructor_id : UInt32 = 0x84D19185_u32
      class_getter constructor_id : UInt32 = 0x84D19185_u32

      getter pts : Int32
      getter pts_count : Int32

      def initialize(
        pts : Int32,
        pts_count : Int32
      )
        @pts = TL::Utils.parse_int!(pts, Int32)
        @pts_count = TL::Utils.parse_int!(pts_count, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @pts.tl_serialize(io)
        @pts_count.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          pts: Int32.tl_deserialize(io),
          pts_count: Int32.tl_deserialize(io),
        )
      end
    end

    class StickerSet < TypeStickerSet
      getter constructor_id : UInt32 = 0xB60A24A6_u32
      class_getter constructor_id : UInt32 = 0xB60A24A6_u32

      getter set : Root::TypeStickerSet
      getter packs : Array(Root::TypeStickerPack)
      getter documents : Array(Root::TypeDocument)

      def initialize(
        set : Root::TypeStickerSet,
        packs : Array(Root::TypeStickerPack),
        documents : Array(Root::TypeDocument)
      )
        @set = set
        @packs = packs
        @documents = documents
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @set.tl_serialize(io)
        @packs.tl_serialize(io)
        @documents.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          set: Root::TypeStickerSet.tl_deserialize(io),
          packs: Array(Root::TypeStickerPack).tl_deserialize(io),
          documents: Array(Root::TypeDocument).tl_deserialize(io),
        )
      end
    end

    class StickerSetNotModified < TypeStickerSet
      getter constructor_id : UInt32 = 0xD3F924EB_u32
      class_getter constructor_id : UInt32 = 0xD3F924EB_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new()
      end
    end

    class SavedGifsNotModified < TypeSavedGifs
      getter constructor_id : UInt32 = 0xE8025CA2_u32
      class_getter constructor_id : UInt32 = 0xE8025CA2_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new()
      end
    end

    class SavedGifs < TypeSavedGifs
      getter constructor_id : UInt32 = 0x84A02A0D_u32
      class_getter constructor_id : UInt32 = 0x84A02A0D_u32

      getter hash : Int64
      getter gifs : Array(Root::TypeDocument)

      def initialize(
        hash : Int64,
        gifs : Array(Root::TypeDocument)
      )
        @hash = hash
        @gifs = gifs
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @hash.tl_serialize(io)
        @gifs.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          hash: Int64.tl_deserialize(io),
          gifs: Array(Root::TypeDocument).tl_deserialize(io),
        )
      end
    end

    class BotResults < TypeBotResults
      getter constructor_id : UInt32 = 0x947CA848_u32
      class_getter constructor_id : UInt32 = 0x947CA848_u32

      getter query_id : Int64
      getter results : Array(Root::TypeBotInlineResult)
      getter cache_time : Int32
      getter users : Array(Root::TypeUser)
      getter gallery : Bool | Nil
      getter next_offset : Bytes | Nil
      getter switch_pm : Root::TypeInlineBotSwitchPM | Nil

      def initialize(
        query_id : Int64,
        results : Array(Root::TypeBotInlineResult),
        cache_time : Int32,
        users : Array(Root::TypeUser),
        gallery : Bool | Nil = nil,
        next_offset : Bytes | Nil = nil,
        switch_pm : Root::TypeInlineBotSwitchPM | Nil = nil
      )
        @query_id = query_id
        @results = results
        @cache_time = TL::Utils.parse_int!(cache_time, Int32)
        @users = users
        @gallery = gallery
        @next_offset = TL::Utils.parse_bytes(next_offset)
        @switch_pm = switch_pm
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!gallery.nil? ? 0x01 : 0) |
            (!next_offset.nil? ? 0x02 : 0) |
            (!switch_pm.nil? ? 0x04 : 0)
        ).tl_serialize(io)
        @query_id.tl_serialize(io)
        @next_offset.tl_serialize(io) unless @next_offset.nil?
        @switch_pm.tl_serialize(io) unless @switch_pm.nil?
        @results.tl_serialize(io)
        @cache_time.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        flags = UInt32.tl_deserialize(io)
        new(
          query_id: Int64.tl_deserialize(io),
          results: Array(Root::TypeBotInlineResult).tl_deserialize(io),
          cache_time: Int32.tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
          gallery: flags & 0x01 > 0 || nil,
          next_offset: flags & 0x02 > 0 ? Bytes.tl_deserialize(io) : nil,
          switch_pm: flags & 0x04 > 0 ? Root::TypeInlineBotSwitchPM.tl_deserialize(io) : nil,
        )
      end
    end

    class BotCallbackAnswer < TypeBotCallbackAnswer
      getter constructor_id : UInt32 = 0x36585EA4_u32
      class_getter constructor_id : UInt32 = 0x36585EA4_u32

      getter cache_time : Int32
      getter alert : Bool | Nil
      getter has_url : Bool | Nil
      getter native_ui : Bool | Nil
      getter message : Bytes | Nil
      getter url : Bytes | Nil

      def initialize(
        cache_time : Int32,
        alert : Bool | Nil = nil,
        has_url : Bool | Nil = nil,
        native_ui : Bool | Nil = nil,
        message : Bytes | Nil = nil,
        url : Bytes | Nil = nil
      )
        @cache_time = TL::Utils.parse_int!(cache_time, Int32)
        @alert = alert
        @has_url = has_url
        @native_ui = native_ui
        @message = TL::Utils.parse_bytes(message)
        @url = TL::Utils.parse_bytes(url)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!alert.nil? ? 0x02 : 0) |
            (!has_url.nil? ? 0x08 : 0) |
            (!native_ui.nil? ? 0x10 : 0) |
            (!message.nil? ? 0x01 : 0) |
            (!url.nil? ? 0x04 : 0)
        ).tl_serialize(io)
        @message.tl_serialize(io) unless @message.nil?
        @url.tl_serialize(io) unless @url.nil?
        @cache_time.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        flags = UInt32.tl_deserialize(io)
        new(
          cache_time: Int32.tl_deserialize(io),
          alert: flags & 0x02 > 0 || nil,
          has_url: flags & 0x08 > 0 || nil,
          native_ui: flags & 0x10 > 0 || nil,
          message: flags & 0x01 > 0 ? Bytes.tl_deserialize(io) : nil,
          url: flags & 0x04 > 0 ? Bytes.tl_deserialize(io) : nil,
        )
      end
    end

    class MessageEditData < TypeMessageEditData
      getter constructor_id : UInt32 = 0x26B5DDE6_u32
      class_getter constructor_id : UInt32 = 0x26B5DDE6_u32

      getter caption : Bool | Nil

      def initialize(
        caption : Bool | Nil = nil
      )
        @caption = caption
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!caption.nil? ? 0x01 : 0)
        ).tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        flags = UInt32.tl_deserialize(io)
        new(
          caption: flags & 0x01 > 0 || nil,
        )
      end
    end

    class PeerDialogs < TypePeerDialogs
      getter constructor_id : UInt32 = 0x3371C354_u32
      class_getter constructor_id : UInt32 = 0x3371C354_u32

      getter dialogs : Array(Root::TypeDialog)
      getter messages : Array(Root::TypeMessage)
      getter chats : Array(Root::TypeChat)
      getter users : Array(Root::TypeUser)
      getter state : Updates::TypeState

      def initialize(
        dialogs : Array(Root::TypeDialog),
        messages : Array(Root::TypeMessage),
        chats : Array(Root::TypeChat),
        users : Array(Root::TypeUser),
        state : Updates::TypeState
      )
        @dialogs = dialogs
        @messages = messages
        @chats = chats
        @users = users
        @state = state
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @dialogs.tl_serialize(io)
        @messages.tl_serialize(io)
        @chats.tl_serialize(io)
        @users.tl_serialize(io)
        @state.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          dialogs: Array(Root::TypeDialog).tl_deserialize(io),
          messages: Array(Root::TypeMessage).tl_deserialize(io),
          chats: Array(Root::TypeChat).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
          state: Updates::TypeState.tl_deserialize(io),
        )
      end
    end

    class FeaturedStickersNotModified < TypeFeaturedStickers
      getter constructor_id : UInt32 = 0xC6DC0C66_u32
      class_getter constructor_id : UInt32 = 0xC6DC0C66_u32

      getter count : Int32

      def initialize(
        count : Int32
      )
        @count = TL::Utils.parse_int!(count, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @count.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          count: Int32.tl_deserialize(io),
        )
      end
    end

    class FeaturedStickers < TypeFeaturedStickers
      getter constructor_id : UInt32 = 0x84C02310_u32
      class_getter constructor_id : UInt32 = 0x84C02310_u32

      getter hash : Int64
      getter count : Int32
      getter sets : Array(Root::TypeStickerSetCovered)
      getter unread : Array(Int64)

      def initialize(
        hash : Int64,
        count : Int32,
        sets : Array(Root::TypeStickerSetCovered),
        unread : Array(Int64)
      )
        @hash = hash
        @count = TL::Utils.parse_int!(count, Int32)
        @sets = sets
        @unread = unread
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @hash.tl_serialize(io)
        @count.tl_serialize(io)
        @sets.tl_serialize(io)
        @unread.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          hash: Int64.tl_deserialize(io),
          count: Int32.tl_deserialize(io),
          sets: Array(Root::TypeStickerSetCovered).tl_deserialize(io),
          unread: Array(Int64).tl_deserialize(io),
        )
      end
    end

    class RecentStickersNotModified < TypeRecentStickers
      getter constructor_id : UInt32 = 0x0B17F890_u32
      class_getter constructor_id : UInt32 = 0x0B17F890_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new()
      end
    end

    class RecentStickers < TypeRecentStickers
      getter constructor_id : UInt32 = 0x88D37C56_u32
      class_getter constructor_id : UInt32 = 0x88D37C56_u32

      getter hash : Int64
      getter packs : Array(Root::TypeStickerPack)
      getter stickers : Array(Root::TypeDocument)
      getter dates : Array(Int32)

      def initialize(
        hash : Int64,
        packs : Array(Root::TypeStickerPack),
        stickers : Array(Root::TypeDocument),
        dates : Array(Int32)
      )
        @hash = hash
        @packs = packs
        @stickers = stickers
        @dates = dates
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @hash.tl_serialize(io)
        @packs.tl_serialize(io)
        @stickers.tl_serialize(io)
        @dates.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          hash: Int64.tl_deserialize(io),
          packs: Array(Root::TypeStickerPack).tl_deserialize(io),
          stickers: Array(Root::TypeDocument).tl_deserialize(io),
          dates: Array(Int32).tl_deserialize(io),
        )
      end
    end

    class ArchivedStickers < TypeArchivedStickers
      getter constructor_id : UInt32 = 0x4FCBA9C8_u32
      class_getter constructor_id : UInt32 = 0x4FCBA9C8_u32

      getter count : Int32
      getter sets : Array(Root::TypeStickerSetCovered)

      def initialize(
        count : Int32,
        sets : Array(Root::TypeStickerSetCovered)
      )
        @count = TL::Utils.parse_int!(count, Int32)
        @sets = sets
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @count.tl_serialize(io)
        @sets.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          count: Int32.tl_deserialize(io),
          sets: Array(Root::TypeStickerSetCovered).tl_deserialize(io),
        )
      end
    end

    class StickerSetInstallResultSuccess < TypeStickerSetInstallResult
      getter constructor_id : UInt32 = 0x38641628_u32
      class_getter constructor_id : UInt32 = 0x38641628_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new()
      end
    end

    class StickerSetInstallResultArchive < TypeStickerSetInstallResult
      getter constructor_id : UInt32 = 0x35E410A8_u32
      class_getter constructor_id : UInt32 = 0x35E410A8_u32

      getter sets : Array(Root::TypeStickerSetCovered)

      def initialize(
        sets : Array(Root::TypeStickerSetCovered)
      )
        @sets = sets
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @sets.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          sets: Array(Root::TypeStickerSetCovered).tl_deserialize(io),
        )
      end
    end

    class HighScores < TypeHighScores
      getter constructor_id : UInt32 = 0x9A3BFD99_u32
      class_getter constructor_id : UInt32 = 0x9A3BFD99_u32

      getter scores : Array(Root::TypeHighScore)
      getter users : Array(Root::TypeUser)

      def initialize(
        scores : Array(Root::TypeHighScore),
        users : Array(Root::TypeUser)
      )
        @scores = scores
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @scores.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          scores: Array(Root::TypeHighScore).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
        )
      end
    end

    class FavedStickersNotModified < TypeFavedStickers
      getter constructor_id : UInt32 = 0x9E8FA6D3_u32
      class_getter constructor_id : UInt32 = 0x9E8FA6D3_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new()
      end
    end

    class FavedStickers < TypeFavedStickers
      getter constructor_id : UInt32 = 0x2CB51097_u32
      class_getter constructor_id : UInt32 = 0x2CB51097_u32

      getter hash : Int64
      getter packs : Array(Root::TypeStickerPack)
      getter stickers : Array(Root::TypeDocument)

      def initialize(
        hash : Int64,
        packs : Array(Root::TypeStickerPack),
        stickers : Array(Root::TypeDocument)
      )
        @hash = hash
        @packs = packs
        @stickers = stickers
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @hash.tl_serialize(io)
        @packs.tl_serialize(io)
        @stickers.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          hash: Int64.tl_deserialize(io),
          packs: Array(Root::TypeStickerPack).tl_deserialize(io),
          stickers: Array(Root::TypeDocument).tl_deserialize(io),
        )
      end
    end

    class FoundStickerSetsNotModified < TypeFoundStickerSets
      getter constructor_id : UInt32 = 0x0D54B65D_u32
      class_getter constructor_id : UInt32 = 0x0D54B65D_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new()
      end
    end

    class FoundStickerSets < TypeFoundStickerSets
      getter constructor_id : UInt32 = 0x8AF09DD2_u32
      class_getter constructor_id : UInt32 = 0x8AF09DD2_u32

      getter hash : Int64
      getter sets : Array(Root::TypeStickerSetCovered)

      def initialize(
        hash : Int64,
        sets : Array(Root::TypeStickerSetCovered)
      )
        @hash = hash
        @sets = sets
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @hash.tl_serialize(io)
        @sets.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          hash: Int64.tl_deserialize(io),
          sets: Array(Root::TypeStickerSetCovered).tl_deserialize(io),
        )
      end
    end

    class SearchCounter < TypeSearchCounter
      getter constructor_id : UInt32 = 0xE844EBFF_u32
      class_getter constructor_id : UInt32 = 0xE844EBFF_u32

      getter filter : Root::TypeMessagesFilter
      getter count : Int32
      getter inexact : Bool | Nil

      def initialize(
        filter : Root::TypeMessagesFilter,
        count : Int32,
        inexact : Bool | Nil = nil
      )
        @filter = filter
        @count = TL::Utils.parse_int!(count, Int32)
        @inexact = inexact
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!inexact.nil? ? 0x02 : 0)
        ).tl_serialize(io)
        @filter.tl_serialize(io)
        @count.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        flags = UInt32.tl_deserialize(io)
        new(
          filter: Root::TypeMessagesFilter.tl_deserialize(io),
          count: Int32.tl_deserialize(io),
          inexact: flags & 0x02 > 0 || nil,
        )
      end
    end

    class InactiveChats < TypeInactiveChats
      getter constructor_id : UInt32 = 0xA927FEC5_u32
      class_getter constructor_id : UInt32 = 0xA927FEC5_u32

      getter dates : Array(Int32)
      getter chats : Array(Root::TypeChat)
      getter users : Array(Root::TypeUser)

      def initialize(
        dates : Array(Int32),
        chats : Array(Root::TypeChat),
        users : Array(Root::TypeUser)
      )
        @dates = dates
        @chats = chats
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @dates.tl_serialize(io)
        @chats.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          dates: Array(Int32).tl_deserialize(io),
          chats: Array(Root::TypeChat).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
        )
      end
    end

    class VotesList < TypeVotesList
      getter constructor_id : UInt32 = 0x0823F649_u32
      class_getter constructor_id : UInt32 = 0x0823F649_u32

      getter count : Int32
      getter votes : Array(Root::TypeMessageUserVote)
      getter users : Array(Root::TypeUser)
      getter next_offset : Bytes | Nil

      def initialize(
        count : Int32,
        votes : Array(Root::TypeMessageUserVote),
        users : Array(Root::TypeUser),
        next_offset : Bytes | Nil = nil
      )
        @count = TL::Utils.parse_int!(count, Int32)
        @votes = votes
        @users = users
        @next_offset = TL::Utils.parse_bytes(next_offset)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!next_offset.nil? ? 0x01 : 0)
        ).tl_serialize(io)
        @count.tl_serialize(io)
        @votes.tl_serialize(io)
        @users.tl_serialize(io)
        @next_offset.tl_serialize(io) unless @next_offset.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        flags = UInt32.tl_deserialize(io)
        new(
          count: Int32.tl_deserialize(io),
          votes: Array(Root::TypeMessageUserVote).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
          next_offset: flags & 0x01 > 0 ? Bytes.tl_deserialize(io) : nil,
        )
      end
    end

    class MessageViews < TypeMessageViews
      getter constructor_id : UInt32 = 0xB6C4F543_u32
      class_getter constructor_id : UInt32 = 0xB6C4F543_u32

      getter views : Array(Root::TypeMessageViews)
      getter chats : Array(Root::TypeChat)
      getter users : Array(Root::TypeUser)

      def initialize(
        views : Array(Root::TypeMessageViews),
        chats : Array(Root::TypeChat),
        users : Array(Root::TypeUser)
      )
        @views = views
        @chats = chats
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @views.tl_serialize(io)
        @chats.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          views: Array(Root::TypeMessageViews).tl_deserialize(io),
          chats: Array(Root::TypeChat).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
        )
      end
    end

    class DiscussionMessage < TypeDiscussionMessage
      getter constructor_id : UInt32 = 0xA6341782_u32
      class_getter constructor_id : UInt32 = 0xA6341782_u32

      getter messages : Array(Root::TypeMessage)
      getter unread_count : Int32
      getter chats : Array(Root::TypeChat)
      getter users : Array(Root::TypeUser)
      getter max_id : Int32 | Nil
      getter read_inbox_max_id : Int32 | Nil
      getter read_outbox_max_id : Int32 | Nil

      def initialize(
        messages : Array(Root::TypeMessage),
        unread_count : Int32,
        chats : Array(Root::TypeChat),
        users : Array(Root::TypeUser),
        max_id : Int32 | Nil = nil,
        read_inbox_max_id : Int32 | Nil = nil,
        read_outbox_max_id : Int32 | Nil = nil
      )
        @messages = messages
        @unread_count = TL::Utils.parse_int!(unread_count, Int32)
        @chats = chats
        @users = users
        @max_id = TL::Utils.parse_int(max_id, Int32)
        @read_inbox_max_id = TL::Utils.parse_int(read_inbox_max_id, Int32)
        @read_outbox_max_id = TL::Utils.parse_int(read_outbox_max_id, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!max_id.nil? ? 0x01 : 0) |
            (!read_inbox_max_id.nil? ? 0x02 : 0) |
            (!read_outbox_max_id.nil? ? 0x04 : 0)
        ).tl_serialize(io)
        @messages.tl_serialize(io)
        @max_id.tl_serialize(io) unless @max_id.nil?
        @read_inbox_max_id.tl_serialize(io) unless @read_inbox_max_id.nil?
        @read_outbox_max_id.tl_serialize(io) unless @read_outbox_max_id.nil?
        @unread_count.tl_serialize(io)
        @chats.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        flags = UInt32.tl_deserialize(io)
        new(
          messages: Array(Root::TypeMessage).tl_deserialize(io),
          unread_count: Int32.tl_deserialize(io),
          chats: Array(Root::TypeChat).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
          max_id: flags & 0x01 > 0 ? Int32.tl_deserialize(io) : nil,
          read_inbox_max_id: flags & 0x02 > 0 ? Int32.tl_deserialize(io) : nil,
          read_outbox_max_id: flags & 0x04 > 0 ? Int32.tl_deserialize(io) : nil,
        )
      end
    end

    class HistoryImport < TypeHistoryImport
      getter constructor_id : UInt32 = 0x1662AF0B_u32
      class_getter constructor_id : UInt32 = 0x1662AF0B_u32

      getter id : Int64

      def initialize(
        id : Int64
      )
        @id = id
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @id.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          id: Int64.tl_deserialize(io),
        )
      end
    end

    class HistoryImportParsed < TypeHistoryImportParsed
      getter constructor_id : UInt32 = 0x5E0FB7B9_u32
      class_getter constructor_id : UInt32 = 0x5E0FB7B9_u32

      getter pm : Bool | Nil
      getter group : Bool | Nil
      getter title : Bytes | Nil

      def initialize(
        pm : Bool | Nil = nil,
        group : Bool | Nil = nil,
        title : Bytes | Nil = nil
      )
        @pm = pm
        @group = group
        @title = TL::Utils.parse_bytes(title)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!pm.nil? ? 0x01 : 0) |
            (!group.nil? ? 0x02 : 0) |
            (!title.nil? ? 0x04 : 0)
        ).tl_serialize(io)
        @title.tl_serialize(io) unless @title.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        flags = UInt32.tl_deserialize(io)
        new(
          pm: flags & 0x01 > 0 || nil,
          group: flags & 0x02 > 0 || nil,
          title: flags & 0x04 > 0 ? Bytes.tl_deserialize(io) : nil,
        )
      end
    end

    class AffectedFoundMessages < TypeAffectedFoundMessages
      getter constructor_id : UInt32 = 0xEF8D3E6C_u32
      class_getter constructor_id : UInt32 = 0xEF8D3E6C_u32

      getter pts : Int32
      getter pts_count : Int32
      getter offset : Int32
      getter messages : Array(Int32)

      def initialize(
        pts : Int32,
        pts_count : Int32,
        offset : Int32,
        messages : Array(Int32)
      )
        @pts = TL::Utils.parse_int!(pts, Int32)
        @pts_count = TL::Utils.parse_int!(pts_count, Int32)
        @offset = TL::Utils.parse_int!(offset, Int32)
        @messages = messages
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @pts.tl_serialize(io)
        @pts_count.tl_serialize(io)
        @offset.tl_serialize(io)
        @messages.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          pts: Int32.tl_deserialize(io),
          pts_count: Int32.tl_deserialize(io),
          offset: Int32.tl_deserialize(io),
          messages: Array(Int32).tl_deserialize(io),
        )
      end
    end

    class ExportedChatInvites < TypeExportedChatInvites
      getter constructor_id : UInt32 = 0xBDC62DCC_u32
      class_getter constructor_id : UInt32 = 0xBDC62DCC_u32

      getter count : Int32
      getter invites : Array(Root::TypeExportedChatInvite)
      getter users : Array(Root::TypeUser)

      def initialize(
        count : Int32,
        invites : Array(Root::TypeExportedChatInvite),
        users : Array(Root::TypeUser)
      )
        @count = TL::Utils.parse_int!(count, Int32)
        @invites = invites
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @count.tl_serialize(io)
        @invites.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          count: Int32.tl_deserialize(io),
          invites: Array(Root::TypeExportedChatInvite).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
        )
      end
    end

    class ExportedChatInvite < TypeExportedChatInvite
      getter constructor_id : UInt32 = 0x1871BE50_u32
      class_getter constructor_id : UInt32 = 0x1871BE50_u32

      getter invite : Root::TypeExportedChatInvite
      getter users : Array(Root::TypeUser)

      def initialize(
        invite : Root::TypeExportedChatInvite,
        users : Array(Root::TypeUser)
      )
        @invite = invite
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @invite.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          invite: Root::TypeExportedChatInvite.tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
        )
      end
    end

    class ExportedChatInviteReplaced < TypeExportedChatInvite
      getter constructor_id : UInt32 = 0x222600EF_u32
      class_getter constructor_id : UInt32 = 0x222600EF_u32

      getter invite : Root::TypeExportedChatInvite
      getter new_invite : Root::TypeExportedChatInvite
      getter users : Array(Root::TypeUser)

      def initialize(
        invite : Root::TypeExportedChatInvite,
        new_invite : Root::TypeExportedChatInvite,
        users : Array(Root::TypeUser)
      )
        @invite = invite
        @new_invite = new_invite
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @invite.tl_serialize(io)
        @new_invite.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          invite: Root::TypeExportedChatInvite.tl_deserialize(io),
          new_invite: Root::TypeExportedChatInvite.tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
        )
      end
    end

    class ChatInviteImporters < TypeChatInviteImporters
      getter constructor_id : UInt32 = 0x81B6B00A_u32
      class_getter constructor_id : UInt32 = 0x81B6B00A_u32

      getter count : Int32
      getter importers : Array(Root::TypeChatInviteImporter)
      getter users : Array(Root::TypeUser)

      def initialize(
        count : Int32,
        importers : Array(Root::TypeChatInviteImporter),
        users : Array(Root::TypeUser)
      )
        @count = TL::Utils.parse_int!(count, Int32)
        @importers = importers
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @count.tl_serialize(io)
        @importers.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          count: Int32.tl_deserialize(io),
          importers: Array(Root::TypeChatInviteImporter).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
        )
      end
    end

    class ChatAdminsWithInvites < TypeChatAdminsWithInvites
      getter constructor_id : UInt32 = 0xB69B72D7_u32
      class_getter constructor_id : UInt32 = 0xB69B72D7_u32

      getter admins : Array(Root::TypeChatAdminWithInvites)
      getter users : Array(Root::TypeUser)

      def initialize(
        admins : Array(Root::TypeChatAdminWithInvites),
        users : Array(Root::TypeUser)
      )
        @admins = admins
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @admins.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          admins: Array(Root::TypeChatAdminWithInvites).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
        )
      end
    end

    class CheckedHistoryImportPeer < TypeCheckedHistoryImportPeer
      getter constructor_id : UInt32 = 0xA24DE717_u32
      class_getter constructor_id : UInt32 = 0xA24DE717_u32

      getter confirm_text : Bytes

      def initialize(
        confirm_text : Bytes | String | IO
      )
        @confirm_text = TL::Utils.parse_bytes!(confirm_text)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @confirm_text.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          confirm_text: Bytes.tl_deserialize(io),
        )
      end
    end

    class SponsoredMessages < TypeSponsoredMessages
      getter constructor_id : UInt32 = 0x65A4C7D5_u32
      class_getter constructor_id : UInt32 = 0x65A4C7D5_u32

      getter messages : Array(Root::TypeSponsoredMessage)
      getter chats : Array(Root::TypeChat)
      getter users : Array(Root::TypeUser)

      def initialize(
        messages : Array(Root::TypeSponsoredMessage),
        chats : Array(Root::TypeChat),
        users : Array(Root::TypeUser)
      )
        @messages = messages
        @chats = chats
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @messages.tl_serialize(io)
        @chats.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          messages: Array(Root::TypeSponsoredMessage).tl_deserialize(io),
          chats: Array(Root::TypeChat).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
        )
      end
    end

    class SearchResultsCalendar < TypeSearchResultsCalendar
      getter constructor_id : UInt32 = 0x147EE23C_u32
      class_getter constructor_id : UInt32 = 0x147EE23C_u32

      getter count : Int32
      getter min_date : Int32
      getter min_msg_id : Int32
      getter periods : Array(Root::TypeSearchResultsCalendarPeriod)
      getter messages : Array(Root::TypeMessage)
      getter chats : Array(Root::TypeChat)
      getter users : Array(Root::TypeUser)
      getter inexact : Bool | Nil
      getter offset_id_offset : Int32 | Nil

      def initialize(
        count : Int32,
        min_date : Int32,
        min_msg_id : Int32,
        periods : Array(Root::TypeSearchResultsCalendarPeriod),
        messages : Array(Root::TypeMessage),
        chats : Array(Root::TypeChat),
        users : Array(Root::TypeUser),
        inexact : Bool | Nil = nil,
        offset_id_offset : Int32 | Nil = nil
      )
        @count = TL::Utils.parse_int!(count, Int32)
        @min_date = TL::Utils.parse_int!(min_date, Int32)
        @min_msg_id = TL::Utils.parse_int!(min_msg_id, Int32)
        @periods = periods
        @messages = messages
        @chats = chats
        @users = users
        @inexact = inexact
        @offset_id_offset = TL::Utils.parse_int(offset_id_offset, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!inexact.nil? ? 0x01 : 0) |
            (!offset_id_offset.nil? ? 0x02 : 0)
        ).tl_serialize(io)
        @count.tl_serialize(io)
        @min_date.tl_serialize(io)
        @min_msg_id.tl_serialize(io)
        @offset_id_offset.tl_serialize(io) unless @offset_id_offset.nil?
        @periods.tl_serialize(io)
        @messages.tl_serialize(io)
        @chats.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        flags = UInt32.tl_deserialize(io)
        new(
          count: Int32.tl_deserialize(io),
          min_date: Int32.tl_deserialize(io),
          min_msg_id: Int32.tl_deserialize(io),
          periods: Array(Root::TypeSearchResultsCalendarPeriod).tl_deserialize(io),
          messages: Array(Root::TypeMessage).tl_deserialize(io),
          chats: Array(Root::TypeChat).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
          inexact: flags & 0x01 > 0 || nil,
          offset_id_offset: flags & 0x02 > 0 ? Int32.tl_deserialize(io) : nil,
        )
      end
    end

    class SearchResultsPositions < TypeSearchResultsPositions
      getter constructor_id : UInt32 = 0x53B22BAF_u32
      class_getter constructor_id : UInt32 = 0x53B22BAF_u32

      getter count : Int32
      getter positions : Array(Root::TypeSearchResultsPosition)

      def initialize(
        count : Int32,
        positions : Array(Root::TypeSearchResultsPosition)
      )
        @count = TL::Utils.parse_int!(count, Int32)
        @positions = positions
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @count.tl_serialize(io)
        @positions.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          count: Int32.tl_deserialize(io),
          positions: Array(Root::TypeSearchResultsPosition).tl_deserialize(io),
        )
      end
    end

    class PeerSettings < TypePeerSettings
      getter constructor_id : UInt32 = 0x6880B94D_u32
      class_getter constructor_id : UInt32 = 0x6880B94D_u32

      getter settings : Root::TypePeerSettings
      getter chats : Array(Root::TypeChat)
      getter users : Array(Root::TypeUser)

      def initialize(
        settings : Root::TypePeerSettings,
        chats : Array(Root::TypeChat),
        users : Array(Root::TypeUser)
      )
        @settings = settings
        @chats = chats
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @settings.tl_serialize(io)
        @chats.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          settings: Root::TypePeerSettings.tl_deserialize(io),
          chats: Array(Root::TypeChat).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
        )
      end
    end

    class GetMessages < TLRequest
      getter constructor_id : UInt32 = 0x63C66506_u32
      class_getter constructor_id : UInt32 = 0x63C66506_u32

      getter id : Array(Root::TypeInputMessage)

      def initialize(
        id : Array(Root::TypeInputMessage)
      )
        @id = id
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeMessages
      end
    end

    class GetDialogs < TLRequest
      getter constructor_id : UInt32 = 0xA0F4CB4F_u32
      class_getter constructor_id : UInt32 = 0xA0F4CB4F_u32

      getter offset_date : Int32
      getter offset_id : Int32
      getter offset_peer : Root::TypeInputPeer
      getter limit : Int32
      getter hash : Int64
      getter exclude_pinned : Bool | Nil
      getter folder_id : Int32 | Nil

      def initialize(
        offset_date : Int32,
        offset_id : Int32,
        offset_peer : Root::TypeInputPeer,
        limit : Int32,
        hash : Int64,
        exclude_pinned : Bool | Nil = nil,
        folder_id : Int32 | Nil = nil
      )
        @offset_date = TL::Utils.parse_int!(offset_date, Int32)
        @offset_id = TL::Utils.parse_int!(offset_id, Int32)
        @offset_peer = offset_peer
        @limit = TL::Utils.parse_int!(limit, Int32)
        @hash = hash
        @exclude_pinned = exclude_pinned
        @folder_id = TL::Utils.parse_int(folder_id, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!exclude_pinned.nil? ? 0x01 : 0) |
            (!folder_id.nil? ? 0x02 : 0)
        ).tl_serialize(io)
        @folder_id.tl_serialize(io) unless @folder_id.nil?
        @offset_date.tl_serialize(io)
        @offset_id.tl_serialize(io)
        @offset_peer.tl_serialize(io)
        @limit.tl_serialize(io)
        @hash.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeDialogs
      end
    end

    class GetHistory < TLRequest
      getter constructor_id : UInt32 = 0x4423E6C5_u32
      class_getter constructor_id : UInt32 = 0x4423E6C5_u32

      getter peer : Root::TypeInputPeer
      getter offset_id : Int32
      getter offset_date : Int32
      getter add_offset : Int32
      getter limit : Int32
      getter max_id : Int32
      getter min_id : Int32
      getter hash : Int64

      def initialize(
        peer : Root::TypeInputPeer,
        offset_id : Int32,
        offset_date : Int32,
        add_offset : Int32,
        limit : Int32,
        max_id : Int32,
        min_id : Int32,
        hash : Int64
      )
        @peer = peer
        @offset_id = TL::Utils.parse_int!(offset_id, Int32)
        @offset_date = TL::Utils.parse_int!(offset_date, Int32)
        @add_offset = TL::Utils.parse_int!(add_offset, Int32)
        @limit = TL::Utils.parse_int!(limit, Int32)
        @max_id = TL::Utils.parse_int!(max_id, Int32)
        @min_id = TL::Utils.parse_int!(min_id, Int32)
        @hash = hash
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @offset_id.tl_serialize(io)
        @offset_date.tl_serialize(io)
        @add_offset.tl_serialize(io)
        @limit.tl_serialize(io)
        @max_id.tl_serialize(io)
        @min_id.tl_serialize(io)
        @hash.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeMessages
      end
    end

    class Search < TLRequest
      getter constructor_id : UInt32 = 0xA0FDA762_u32
      class_getter constructor_id : UInt32 = 0xA0FDA762_u32

      getter peer : Root::TypeInputPeer
      getter q : Bytes
      getter filter : Root::TypeMessagesFilter
      getter min_date : Int32
      getter max_date : Int32
      getter offset_id : Int32
      getter add_offset : Int32
      getter limit : Int32
      getter max_id : Int32
      getter min_id : Int32
      getter hash : Int64
      getter from_id : Root::TypeInputPeer | Nil
      getter top_msg_id : Int32 | Nil

      def initialize(
        peer : Root::TypeInputPeer,
        q : Bytes | String | IO,
        filter : Root::TypeMessagesFilter,
        min_date : Int32,
        max_date : Int32,
        offset_id : Int32,
        add_offset : Int32,
        limit : Int32,
        max_id : Int32,
        min_id : Int32,
        hash : Int64,
        from_id : Root::TypeInputPeer | Nil = nil,
        top_msg_id : Int32 | Nil = nil
      )
        @peer = peer
        @q = TL::Utils.parse_bytes!(q)
        @filter = filter
        @min_date = TL::Utils.parse_int!(min_date, Int32)
        @max_date = TL::Utils.parse_int!(max_date, Int32)
        @offset_id = TL::Utils.parse_int!(offset_id, Int32)
        @add_offset = TL::Utils.parse_int!(add_offset, Int32)
        @limit = TL::Utils.parse_int!(limit, Int32)
        @max_id = TL::Utils.parse_int!(max_id, Int32)
        @min_id = TL::Utils.parse_int!(min_id, Int32)
        @hash = hash
        @from_id = from_id
        @top_msg_id = TL::Utils.parse_int(top_msg_id, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!from_id.nil? ? 0x01 : 0) |
            (!top_msg_id.nil? ? 0x02 : 0)
        ).tl_serialize(io)
        @peer.tl_serialize(io)
        @q.tl_serialize(io)
        @from_id.tl_serialize(io) unless @from_id.nil?
        @top_msg_id.tl_serialize(io) unless @top_msg_id.nil?
        @filter.tl_serialize(io)
        @min_date.tl_serialize(io)
        @max_date.tl_serialize(io)
        @offset_id.tl_serialize(io)
        @add_offset.tl_serialize(io)
        @limit.tl_serialize(io)
        @max_id.tl_serialize(io)
        @min_id.tl_serialize(io)
        @hash.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeMessages
      end
    end

    class ReadHistory < TLRequest
      getter constructor_id : UInt32 = 0x0E306D3A_u32
      class_getter constructor_id : UInt32 = 0x0E306D3A_u32

      getter peer : Root::TypeInputPeer
      getter max_id : Int32

      def initialize(
        peer : Root::TypeInputPeer,
        max_id : Int32
      )
        @peer = peer
        @max_id = TL::Utils.parse_int!(max_id, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @max_id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeAffectedMessages
      end
    end

    class DeleteHistory < TLRequest
      getter constructor_id : UInt32 = 0xB08F922A_u32
      class_getter constructor_id : UInt32 = 0xB08F922A_u32

      getter peer : Root::TypeInputPeer
      getter max_id : Int32
      getter just_clear : Bool | Nil
      getter revoke : Bool | Nil
      getter min_date : Int32 | Nil
      getter max_date : Int32 | Nil

      def initialize(
        peer : Root::TypeInputPeer,
        max_id : Int32,
        just_clear : Bool | Nil = nil,
        revoke : Bool | Nil = nil,
        min_date : Int32 | Nil = nil,
        max_date : Int32 | Nil = nil
      )
        @peer = peer
        @max_id = TL::Utils.parse_int!(max_id, Int32)
        @just_clear = just_clear
        @revoke = revoke
        @min_date = TL::Utils.parse_int(min_date, Int32)
        @max_date = TL::Utils.parse_int(max_date, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!just_clear.nil? ? 0x01 : 0) |
            (!revoke.nil? ? 0x02 : 0) |
            (!min_date.nil? ? 0x04 : 0) |
            (!max_date.nil? ? 0x08 : 0)
        ).tl_serialize(io)
        @peer.tl_serialize(io)
        @max_id.tl_serialize(io)
        @min_date.tl_serialize(io) unless @min_date.nil?
        @max_date.tl_serialize(io) unless @max_date.nil?
      end

      def self.return_type : Deserializable
        Messages::TypeAffectedHistory
      end
    end

    class DeleteMessages < TLRequest
      getter constructor_id : UInt32 = 0xE58E95D2_u32
      class_getter constructor_id : UInt32 = 0xE58E95D2_u32

      getter id : Array(Int32)
      getter revoke : Bool | Nil

      def initialize(
        id : Array(Int32),
        revoke : Bool | Nil = nil
      )
        @id = id
        @revoke = revoke
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!revoke.nil? ? 0x01 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeAffectedMessages
      end
    end

    class ReceivedMessages < TLRequest
      getter constructor_id : UInt32 = 0x05A954C0_u32
      class_getter constructor_id : UInt32 = 0x05A954C0_u32

      getter max_id : Int32

      def initialize(
        max_id : Int32
      )
        @max_id = TL::Utils.parse_int!(max_id, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @max_id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Array(Root::TypeReceivedNotifyMessage)
      end
    end

    class SetTyping < TLRequest
      getter constructor_id : UInt32 = 0x58943EE2_u32
      class_getter constructor_id : UInt32 = 0x58943EE2_u32

      getter peer : Root::TypeInputPeer
      getter action : Root::TypeSendMessageAction
      getter top_msg_id : Int32 | Nil

      def initialize(
        peer : Root::TypeInputPeer,
        action : Root::TypeSendMessageAction,
        top_msg_id : Int32 | Nil = nil
      )
        @peer = peer
        @action = action
        @top_msg_id = TL::Utils.parse_int(top_msg_id, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!top_msg_id.nil? ? 0x01 : 0)
        ).tl_serialize(io)
        @peer.tl_serialize(io)
        @top_msg_id.tl_serialize(io) unless @top_msg_id.nil?
        @action.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class SendMessage < TLRequest
      getter constructor_id : UInt32 = 0x0D9D75A4_u32
      class_getter constructor_id : UInt32 = 0x0D9D75A4_u32

      getter peer : Root::TypeInputPeer
      getter message : Bytes
      getter random_id : Int64
      getter no_webpage : Bool | Nil
      getter silent : Bool | Nil
      getter background : Bool | Nil
      getter clear_draft : Bool | Nil
      getter reply_to_msg_id : Int32 | Nil
      getter reply_markup : Root::TypeReplyMarkup | Nil
      getter entities : Array(Root::TypeMessageEntity) | Nil
      getter schedule_date : Int32 | Nil
      getter send_as : Root::TypeInputPeer | Nil

      def initialize(
        peer : Root::TypeInputPeer,
        message : Bytes | String | IO,
        random_id : Int64,
        no_webpage : Bool | Nil = nil,
        silent : Bool | Nil = nil,
        background : Bool | Nil = nil,
        clear_draft : Bool | Nil = nil,
        reply_to_msg_id : Int32 | Nil = nil,
        reply_markup : Root::TypeReplyMarkup | Nil = nil,
        entities : Array(Root::TypeMessageEntity) | Nil = nil,
        schedule_date : Int32 | Nil = nil,
        send_as : Root::TypeInputPeer | Nil = nil
      )
        @peer = peer
        @message = TL::Utils.parse_bytes!(message)
        @random_id = random_id
        @no_webpage = no_webpage
        @silent = silent
        @background = background
        @clear_draft = clear_draft
        @reply_to_msg_id = TL::Utils.parse_int(reply_to_msg_id, Int32)
        @reply_markup = reply_markup
        @entities = entities
        @schedule_date = TL::Utils.parse_int(schedule_date, Int32)
        @send_as = send_as
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!no_webpage.nil? ? 0x02 : 0) |
            (!silent.nil? ? 0x20 : 0) |
            (!background.nil? ? 0x40 : 0) |
            (!clear_draft.nil? ? 0x80 : 0) |
            (!reply_to_msg_id.nil? ? 0x01 : 0) |
            (!reply_markup.nil? ? 0x04 : 0) |
            (!entities.nil? ? 0x08 : 0) |
            (!schedule_date.nil? ? 0x400 : 0) |
            (!send_as.nil? ? 0x2000 : 0)
        ).tl_serialize(io)
        @peer.tl_serialize(io)
        @reply_to_msg_id.tl_serialize(io) unless @reply_to_msg_id.nil?
        @message.tl_serialize(io)
        @random_id.tl_serialize(io)
        @reply_markup.tl_serialize(io) unless @reply_markup.nil?
        @entities.tl_serialize(io) unless @entities.nil?
        @schedule_date.tl_serialize(io) unless @schedule_date.nil?
        @send_as.tl_serialize(io) unless @send_as.nil?
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class SendMedia < TLRequest
      getter constructor_id : UInt32 = 0xE25FF8E0_u32
      class_getter constructor_id : UInt32 = 0xE25FF8E0_u32

      getter peer : Root::TypeInputPeer
      getter media : Root::TypeInputMedia
      getter message : Bytes
      getter random_id : Int64
      getter silent : Bool | Nil
      getter background : Bool | Nil
      getter clear_draft : Bool | Nil
      getter reply_to_msg_id : Int32 | Nil
      getter reply_markup : Root::TypeReplyMarkup | Nil
      getter entities : Array(Root::TypeMessageEntity) | Nil
      getter schedule_date : Int32 | Nil
      getter send_as : Root::TypeInputPeer | Nil

      def initialize(
        peer : Root::TypeInputPeer,
        media : Root::TypeInputMedia,
        message : Bytes | String | IO,
        random_id : Int64,
        silent : Bool | Nil = nil,
        background : Bool | Nil = nil,
        clear_draft : Bool | Nil = nil,
        reply_to_msg_id : Int32 | Nil = nil,
        reply_markup : Root::TypeReplyMarkup | Nil = nil,
        entities : Array(Root::TypeMessageEntity) | Nil = nil,
        schedule_date : Int32 | Nil = nil,
        send_as : Root::TypeInputPeer | Nil = nil
      )
        @peer = peer
        @media = media
        @message = TL::Utils.parse_bytes!(message)
        @random_id = random_id
        @silent = silent
        @background = background
        @clear_draft = clear_draft
        @reply_to_msg_id = TL::Utils.parse_int(reply_to_msg_id, Int32)
        @reply_markup = reply_markup
        @entities = entities
        @schedule_date = TL::Utils.parse_int(schedule_date, Int32)
        @send_as = send_as
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!silent.nil? ? 0x20 : 0) |
            (!background.nil? ? 0x40 : 0) |
            (!clear_draft.nil? ? 0x80 : 0) |
            (!reply_to_msg_id.nil? ? 0x01 : 0) |
            (!reply_markup.nil? ? 0x04 : 0) |
            (!entities.nil? ? 0x08 : 0) |
            (!schedule_date.nil? ? 0x400 : 0) |
            (!send_as.nil? ? 0x2000 : 0)
        ).tl_serialize(io)
        @peer.tl_serialize(io)
        @reply_to_msg_id.tl_serialize(io) unless @reply_to_msg_id.nil?
        @media.tl_serialize(io)
        @message.tl_serialize(io)
        @random_id.tl_serialize(io)
        @reply_markup.tl_serialize(io) unless @reply_markup.nil?
        @entities.tl_serialize(io) unless @entities.nil?
        @schedule_date.tl_serialize(io) unless @schedule_date.nil?
        @send_as.tl_serialize(io) unless @send_as.nil?
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class ForwardMessages < TLRequest
      getter constructor_id : UInt32 = 0xCC30290B_u32
      class_getter constructor_id : UInt32 = 0xCC30290B_u32

      getter from_peer : Root::TypeInputPeer
      getter id : Array(Int32)
      getter random_id : Array(Int64)
      getter to_peer : Root::TypeInputPeer
      getter silent : Bool | Nil
      getter background : Bool | Nil
      getter with_my_score : Bool | Nil
      getter drop_author : Bool | Nil
      getter drop_media_captions : Bool | Nil
      getter schedule_date : Int32 | Nil
      getter send_as : Root::TypeInputPeer | Nil

      def initialize(
        from_peer : Root::TypeInputPeer,
        id : Array(Int32),
        random_id : Array(Int64),
        to_peer : Root::TypeInputPeer,
        silent : Bool | Nil = nil,
        background : Bool | Nil = nil,
        with_my_score : Bool | Nil = nil,
        drop_author : Bool | Nil = nil,
        drop_media_captions : Bool | Nil = nil,
        schedule_date : Int32 | Nil = nil,
        send_as : Root::TypeInputPeer | Nil = nil
      )
        @from_peer = from_peer
        @id = id
        @random_id = random_id
        @to_peer = to_peer
        @silent = silent
        @background = background
        @with_my_score = with_my_score
        @drop_author = drop_author
        @drop_media_captions = drop_media_captions
        @schedule_date = TL::Utils.parse_int(schedule_date, Int32)
        @send_as = send_as
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!silent.nil? ? 0x20 : 0) |
            (!background.nil? ? 0x40 : 0) |
            (!with_my_score.nil? ? 0x100 : 0) |
            (!drop_author.nil? ? 0x800 : 0) |
            (!drop_media_captions.nil? ? 0x1000 : 0) |
            (!schedule_date.nil? ? 0x400 : 0) |
            (!send_as.nil? ? 0x2000 : 0)
        ).tl_serialize(io)
        @from_peer.tl_serialize(io)
        @id.tl_serialize(io)
        @random_id.tl_serialize(io)
        @to_peer.tl_serialize(io)
        @schedule_date.tl_serialize(io) unless @schedule_date.nil?
        @send_as.tl_serialize(io) unless @send_as.nil?
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class ReportSpam < TLRequest
      getter constructor_id : UInt32 = 0xCF1592DB_u32
      class_getter constructor_id : UInt32 = 0xCF1592DB_u32

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
        Bool
      end
    end

    class GetPeerSettings < TLRequest
      getter constructor_id : UInt32 = 0xEFD9A6A2_u32
      class_getter constructor_id : UInt32 = 0xEFD9A6A2_u32

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
        Messages::TypePeerSettings
      end
    end

    class Report < TLRequest
      getter constructor_id : UInt32 = 0x8953AB4E_u32
      class_getter constructor_id : UInt32 = 0x8953AB4E_u32

      getter peer : Root::TypeInputPeer
      getter id : Array(Int32)
      getter reason : Root::TypeReportReason
      getter message : Bytes

      def initialize(
        peer : Root::TypeInputPeer,
        id : Array(Int32),
        reason : Root::TypeReportReason,
        message : Bytes | String | IO
      )
        @peer = peer
        @id = id
        @reason = reason
        @message = TL::Utils.parse_bytes!(message)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @id.tl_serialize(io)
        @reason.tl_serialize(io)
        @message.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class GetChats < TLRequest
      getter constructor_id : UInt32 = 0x49E9528F_u32
      class_getter constructor_id : UInt32 = 0x49E9528F_u32

      getter id : Array(Int64)

      def initialize(
        id : Array(Int64)
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

    class GetFullChat < TLRequest
      getter constructor_id : UInt32 = 0xAEB00B34_u32
      class_getter constructor_id : UInt32 = 0xAEB00B34_u32

      getter chat_id : Int64

      def initialize(
        chat_id : Int64
      )
        @chat_id = chat_id
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @chat_id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeChatFull
      end
    end

    class EditChatTitle < TLRequest
      getter constructor_id : UInt32 = 0x73783FFD_u32
      class_getter constructor_id : UInt32 = 0x73783FFD_u32

      getter chat_id : Int64
      getter title : Bytes

      def initialize(
        chat_id : Int64,
        title : Bytes | String | IO
      )
        @chat_id = chat_id
        @title = TL::Utils.parse_bytes!(title)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @chat_id.tl_serialize(io)
        @title.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class EditChatPhoto < TLRequest
      getter constructor_id : UInt32 = 0x35DDD674_u32
      class_getter constructor_id : UInt32 = 0x35DDD674_u32

      getter chat_id : Int64
      getter photo : Root::TypeInputChatPhoto

      def initialize(
        chat_id : Int64,
        photo : Root::TypeInputChatPhoto
      )
        @chat_id = chat_id
        @photo = photo
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @chat_id.tl_serialize(io)
        @photo.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class AddChatUser < TLRequest
      getter constructor_id : UInt32 = 0xF24753E3_u32
      class_getter constructor_id : UInt32 = 0xF24753E3_u32

      getter chat_id : Int64
      getter user_id : Root::TypeInputUser
      getter fwd_limit : Int32

      def initialize(
        chat_id : Int64,
        user_id : Root::TypeInputUser,
        fwd_limit : Int32
      )
        @chat_id = chat_id
        @user_id = user_id
        @fwd_limit = TL::Utils.parse_int!(fwd_limit, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @chat_id.tl_serialize(io)
        @user_id.tl_serialize(io)
        @fwd_limit.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class DeleteChatUser < TLRequest
      getter constructor_id : UInt32 = 0xA2185CAB_u32
      class_getter constructor_id : UInt32 = 0xA2185CAB_u32

      getter chat_id : Int64
      getter user_id : Root::TypeInputUser
      getter revoke_history : Bool | Nil

      def initialize(
        chat_id : Int64,
        user_id : Root::TypeInputUser,
        revoke_history : Bool | Nil = nil
      )
        @chat_id = chat_id
        @user_id = user_id
        @revoke_history = revoke_history
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!revoke_history.nil? ? 0x01 : 0)
        ).tl_serialize(io)
        @chat_id.tl_serialize(io)
        @user_id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class CreateChat < TLRequest
      getter constructor_id : UInt32 = 0x09CB126E_u32
      class_getter constructor_id : UInt32 = 0x09CB126E_u32

      getter users : Array(Root::TypeInputUser)
      getter title : Bytes

      def initialize(
        users : Array(Root::TypeInputUser),
        title : Bytes | String | IO
      )
        @users = users
        @title = TL::Utils.parse_bytes!(title)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @users.tl_serialize(io)
        @title.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class GetDhConfig < TLRequest
      getter constructor_id : UInt32 = 0x26CF8950_u32
      class_getter constructor_id : UInt32 = 0x26CF8950_u32

      getter version : Int32
      getter random_length : Int32

      def initialize(
        version : Int32,
        random_length : Int32
      )
        @version = TL::Utils.parse_int!(version, Int32)
        @random_length = TL::Utils.parse_int!(random_length, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @version.tl_serialize(io)
        @random_length.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeDhConfig
      end
    end

    class RequestEncryption < TLRequest
      getter constructor_id : UInt32 = 0xF64DAF43_u32
      class_getter constructor_id : UInt32 = 0xF64DAF43_u32

      getter user_id : Root::TypeInputUser
      getter random_id : Int32
      getter g_a : Bytes

      def initialize(
        user_id : Root::TypeInputUser,
        random_id : Int32,
        g_a : Bytes | String | IO
      )
        @user_id = user_id
        @random_id = TL::Utils.parse_int!(random_id, Int32)
        @g_a = TL::Utils.parse_bytes!(g_a)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @user_id.tl_serialize(io)
        @random_id.tl_serialize(io)
        @g_a.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeEncryptedChat
      end
    end

    class AcceptEncryption < TLRequest
      getter constructor_id : UInt32 = 0x3DBC0415_u32
      class_getter constructor_id : UInt32 = 0x3DBC0415_u32

      getter peer : Root::TypeInputEncryptedChat
      getter g_b : Bytes
      getter key_fingerprint : Int64

      def initialize(
        peer : Root::TypeInputEncryptedChat,
        g_b : Bytes | String | IO,
        key_fingerprint : Int64
      )
        @peer = peer
        @g_b = TL::Utils.parse_bytes!(g_b)
        @key_fingerprint = key_fingerprint
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @g_b.tl_serialize(io)
        @key_fingerprint.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeEncryptedChat
      end
    end

    class DiscardEncryption < TLRequest
      getter constructor_id : UInt32 = 0xF393AEA0_u32
      class_getter constructor_id : UInt32 = 0xF393AEA0_u32

      getter chat_id : Int32
      getter delete_history : Bool | Nil

      def initialize(
        chat_id : Int32,
        delete_history : Bool | Nil = nil
      )
        @chat_id = TL::Utils.parse_int!(chat_id, Int32)
        @delete_history = delete_history
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!delete_history.nil? ? 0x01 : 0)
        ).tl_serialize(io)
        @chat_id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class SetEncryptedTyping < TLRequest
      getter constructor_id : UInt32 = 0x791451ED_u32
      class_getter constructor_id : UInt32 = 0x791451ED_u32

      getter peer : Root::TypeInputEncryptedChat
      getter typing : Bool

      def initialize(
        peer : Root::TypeInputEncryptedChat,
        typing : Bool
      )
        @peer = peer
        @typing = typing
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @typing.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class ReadEncryptedHistory < TLRequest
      getter constructor_id : UInt32 = 0x7F4B690A_u32
      class_getter constructor_id : UInt32 = 0x7F4B690A_u32

      getter peer : Root::TypeInputEncryptedChat
      getter max_date : Int32

      def initialize(
        peer : Root::TypeInputEncryptedChat,
        max_date : Int32
      )
        @peer = peer
        @max_date = TL::Utils.parse_int!(max_date, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @max_date.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class SendEncrypted < TLRequest
      getter constructor_id : UInt32 = 0x44FA7A15_u32
      class_getter constructor_id : UInt32 = 0x44FA7A15_u32

      getter peer : Root::TypeInputEncryptedChat
      getter random_id : Int64
      getter data : Bytes
      getter silent : Bool | Nil

      def initialize(
        peer : Root::TypeInputEncryptedChat,
        random_id : Int64,
        data : Bytes | String | IO,
        silent : Bool | Nil = nil
      )
        @peer = peer
        @random_id = random_id
        @data = TL::Utils.parse_bytes!(data)
        @silent = silent
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!silent.nil? ? 0x01 : 0)
        ).tl_serialize(io)
        @peer.tl_serialize(io)
        @random_id.tl_serialize(io)
        @data.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeSentEncryptedMessage
      end
    end

    class SendEncryptedFile < TLRequest
      getter constructor_id : UInt32 = 0x5559481D_u32
      class_getter constructor_id : UInt32 = 0x5559481D_u32

      getter peer : Root::TypeInputEncryptedChat
      getter random_id : Int64
      getter data : Bytes
      getter file : Root::TypeInputEncryptedFile
      getter silent : Bool | Nil

      def initialize(
        peer : Root::TypeInputEncryptedChat,
        random_id : Int64,
        data : Bytes | String | IO,
        file : Root::TypeInputEncryptedFile,
        silent : Bool | Nil = nil
      )
        @peer = peer
        @random_id = random_id
        @data = TL::Utils.parse_bytes!(data)
        @file = file
        @silent = silent
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!silent.nil? ? 0x01 : 0)
        ).tl_serialize(io)
        @peer.tl_serialize(io)
        @random_id.tl_serialize(io)
        @data.tl_serialize(io)
        @file.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeSentEncryptedMessage
      end
    end

    class SendEncryptedService < TLRequest
      getter constructor_id : UInt32 = 0x32D439A4_u32
      class_getter constructor_id : UInt32 = 0x32D439A4_u32

      getter peer : Root::TypeInputEncryptedChat
      getter random_id : Int64
      getter data : Bytes

      def initialize(
        peer : Root::TypeInputEncryptedChat,
        random_id : Int64,
        data : Bytes | String | IO
      )
        @peer = peer
        @random_id = random_id
        @data = TL::Utils.parse_bytes!(data)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @random_id.tl_serialize(io)
        @data.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeSentEncryptedMessage
      end
    end

    class ReceivedQueue < TLRequest
      getter constructor_id : UInt32 = 0x55A5BB66_u32
      class_getter constructor_id : UInt32 = 0x55A5BB66_u32

      getter max_qts : Int32

      def initialize(
        max_qts : Int32
      )
        @max_qts = TL::Utils.parse_int!(max_qts, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @max_qts.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Array(Int64)
      end
    end

    class ReportEncryptedSpam < TLRequest
      getter constructor_id : UInt32 = 0x4B0C8C0F_u32
      class_getter constructor_id : UInt32 = 0x4B0C8C0F_u32

      getter peer : Root::TypeInputEncryptedChat

      def initialize(
        peer : Root::TypeInputEncryptedChat
      )
        @peer = peer
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class ReadMessageContents < TLRequest
      getter constructor_id : UInt32 = 0x36A73F77_u32
      class_getter constructor_id : UInt32 = 0x36A73F77_u32

      getter id : Array(Int32)

      def initialize(
        id : Array(Int32)
      )
        @id = id
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeAffectedMessages
      end
    end

    class GetStickers < TLRequest
      getter constructor_id : UInt32 = 0xD5A5D3A1_u32
      class_getter constructor_id : UInt32 = 0xD5A5D3A1_u32

      getter emoticon : Bytes
      getter hash : Int64

      def initialize(
        emoticon : Bytes | String | IO,
        hash : Int64
      )
        @emoticon = TL::Utils.parse_bytes!(emoticon)
        @hash = hash
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @emoticon.tl_serialize(io)
        @hash.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeStickers
      end
    end

    class GetAllStickers < TLRequest
      getter constructor_id : UInt32 = 0xB8A0A1A8_u32
      class_getter constructor_id : UInt32 = 0xB8A0A1A8_u32

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
        Messages::TypeAllStickers
      end
    end

    class GetWebPagePreview < TLRequest
      getter constructor_id : UInt32 = 0x8B68B0CC_u32
      class_getter constructor_id : UInt32 = 0x8B68B0CC_u32

      getter message : Bytes
      getter entities : Array(Root::TypeMessageEntity) | Nil

      def initialize(
        message : Bytes | String | IO,
        entities : Array(Root::TypeMessageEntity) | Nil = nil
      )
        @message = TL::Utils.parse_bytes!(message)
        @entities = entities
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!entities.nil? ? 0x08 : 0)
        ).tl_serialize(io)
        @message.tl_serialize(io)
        @entities.tl_serialize(io) unless @entities.nil?
      end

      def self.return_type : Deserializable
        Root::TypeMessageMedia
      end
    end

    class ExportChatInvite < TLRequest
      getter constructor_id : UInt32 = 0xA02CE5D5_u32
      class_getter constructor_id : UInt32 = 0xA02CE5D5_u32

      getter peer : Root::TypeInputPeer
      getter legacy_revoke_permanent : Bool | Nil
      getter request_needed : Bool | Nil
      getter expire_date : Int32 | Nil
      getter usage_limit : Int32 | Nil
      getter title : Bytes | Nil

      def initialize(
        peer : Root::TypeInputPeer,
        legacy_revoke_permanent : Bool | Nil = nil,
        request_needed : Bool | Nil = nil,
        expire_date : Int32 | Nil = nil,
        usage_limit : Int32 | Nil = nil,
        title : Bytes | Nil = nil
      )
        @peer = peer
        @legacy_revoke_permanent = legacy_revoke_permanent
        @request_needed = request_needed
        @expire_date = TL::Utils.parse_int(expire_date, Int32)
        @usage_limit = TL::Utils.parse_int(usage_limit, Int32)
        @title = TL::Utils.parse_bytes(title)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!legacy_revoke_permanent.nil? ? 0x04 : 0) |
            (!request_needed.nil? ? 0x08 : 0) |
            (!expire_date.nil? ? 0x01 : 0) |
            (!usage_limit.nil? ? 0x02 : 0) |
            (!title.nil? ? 0x10 : 0)
        ).tl_serialize(io)
        @peer.tl_serialize(io)
        @expire_date.tl_serialize(io) unless @expire_date.nil?
        @usage_limit.tl_serialize(io) unless @usage_limit.nil?
        @title.tl_serialize(io) unless @title.nil?
      end

      def self.return_type : Deserializable
        Root::TypeExportedChatInvite
      end
    end

    class CheckChatInvite < TLRequest
      getter constructor_id : UInt32 = 0x3EADB1BB_u32
      class_getter constructor_id : UInt32 = 0x3EADB1BB_u32

      getter hash : Bytes

      def initialize(
        hash : Bytes | String | IO
      )
        @hash = TL::Utils.parse_bytes!(hash)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @hash.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeChatInvite
      end
    end

    class ImportChatInvite < TLRequest
      getter constructor_id : UInt32 = 0x6C50051C_u32
      class_getter constructor_id : UInt32 = 0x6C50051C_u32

      getter hash : Bytes

      def initialize(
        hash : Bytes | String | IO
      )
        @hash = TL::Utils.parse_bytes!(hash)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @hash.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class GetStickerSet < TLRequest
      getter constructor_id : UInt32 = 0xC8A0EC74_u32
      class_getter constructor_id : UInt32 = 0xC8A0EC74_u32

      getter stickerset : Root::TypeInputStickerSet
      getter hash : Int32

      def initialize(
        stickerset : Root::TypeInputStickerSet,
        hash : Int32
      )
        @stickerset = stickerset
        @hash = TL::Utils.parse_int!(hash, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @stickerset.tl_serialize(io)
        @hash.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeStickerSet
      end
    end

    class InstallStickerSet < TLRequest
      getter constructor_id : UInt32 = 0xC78FE460_u32
      class_getter constructor_id : UInt32 = 0xC78FE460_u32

      getter stickerset : Root::TypeInputStickerSet
      getter archived : Bool

      def initialize(
        stickerset : Root::TypeInputStickerSet,
        archived : Bool
      )
        @stickerset = stickerset
        @archived = archived
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @stickerset.tl_serialize(io)
        @archived.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeStickerSetInstallResult
      end
    end

    class UninstallStickerSet < TLRequest
      getter constructor_id : UInt32 = 0xF96E55DE_u32
      class_getter constructor_id : UInt32 = 0xF96E55DE_u32

      getter stickerset : Root::TypeInputStickerSet

      def initialize(
        stickerset : Root::TypeInputStickerSet
      )
        @stickerset = stickerset
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @stickerset.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class StartBot < TLRequest
      getter constructor_id : UInt32 = 0xE6DF7378_u32
      class_getter constructor_id : UInt32 = 0xE6DF7378_u32

      getter bot : Root::TypeInputUser
      getter peer : Root::TypeInputPeer
      getter random_id : Int64
      getter start_param : Bytes

      def initialize(
        bot : Root::TypeInputUser,
        peer : Root::TypeInputPeer,
        random_id : Int64,
        start_param : Bytes | String | IO
      )
        @bot = bot
        @peer = peer
        @random_id = random_id
        @start_param = TL::Utils.parse_bytes!(start_param)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @bot.tl_serialize(io)
        @peer.tl_serialize(io)
        @random_id.tl_serialize(io)
        @start_param.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class GetMessagesViews < TLRequest
      getter constructor_id : UInt32 = 0x5784D3E1_u32
      class_getter constructor_id : UInt32 = 0x5784D3E1_u32

      getter peer : Root::TypeInputPeer
      getter id : Array(Int32)
      getter increment : Bool

      def initialize(
        peer : Root::TypeInputPeer,
        id : Array(Int32),
        increment : Bool
      )
        @peer = peer
        @id = id
        @increment = increment
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @id.tl_serialize(io)
        @increment.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeMessageViews
      end
    end

    class EditChatAdmin < TLRequest
      getter constructor_id : UInt32 = 0xA85BD1C2_u32
      class_getter constructor_id : UInt32 = 0xA85BD1C2_u32

      getter chat_id : Int64
      getter user_id : Root::TypeInputUser
      getter is_admin : Bool

      def initialize(
        chat_id : Int64,
        user_id : Root::TypeInputUser,
        is_admin : Bool
      )
        @chat_id = chat_id
        @user_id = user_id
        @is_admin = is_admin
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @chat_id.tl_serialize(io)
        @user_id.tl_serialize(io)
        @is_admin.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class MigrateChat < TLRequest
      getter constructor_id : UInt32 = 0xA2875319_u32
      class_getter constructor_id : UInt32 = 0xA2875319_u32

      getter chat_id : Int64

      def initialize(
        chat_id : Int64
      )
        @chat_id = chat_id
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @chat_id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class SearchGlobal < TLRequest
      getter constructor_id : UInt32 = 0x4BC6589A_u32
      class_getter constructor_id : UInt32 = 0x4BC6589A_u32

      getter q : Bytes
      getter filter : Root::TypeMessagesFilter
      getter min_date : Int32
      getter max_date : Int32
      getter offset_rate : Int32
      getter offset_peer : Root::TypeInputPeer
      getter offset_id : Int32
      getter limit : Int32
      getter folder_id : Int32 | Nil

      def initialize(
        q : Bytes | String | IO,
        filter : Root::TypeMessagesFilter,
        min_date : Int32,
        max_date : Int32,
        offset_rate : Int32,
        offset_peer : Root::TypeInputPeer,
        offset_id : Int32,
        limit : Int32,
        folder_id : Int32 | Nil = nil
      )
        @q = TL::Utils.parse_bytes!(q)
        @filter = filter
        @min_date = TL::Utils.parse_int!(min_date, Int32)
        @max_date = TL::Utils.parse_int!(max_date, Int32)
        @offset_rate = TL::Utils.parse_int!(offset_rate, Int32)
        @offset_peer = offset_peer
        @offset_id = TL::Utils.parse_int!(offset_id, Int32)
        @limit = TL::Utils.parse_int!(limit, Int32)
        @folder_id = TL::Utils.parse_int(folder_id, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!folder_id.nil? ? 0x01 : 0)
        ).tl_serialize(io)
        @folder_id.tl_serialize(io) unless @folder_id.nil?
        @q.tl_serialize(io)
        @filter.tl_serialize(io)
        @min_date.tl_serialize(io)
        @max_date.tl_serialize(io)
        @offset_rate.tl_serialize(io)
        @offset_peer.tl_serialize(io)
        @offset_id.tl_serialize(io)
        @limit.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeMessages
      end
    end

    class ReorderStickerSets < TLRequest
      getter constructor_id : UInt32 = 0x78337739_u32
      class_getter constructor_id : UInt32 = 0x78337739_u32

      getter order : Array(Int64)
      getter masks : Bool | Nil

      def initialize(
        order : Array(Int64),
        masks : Bool | Nil = nil
      )
        @order = order
        @masks = masks
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!masks.nil? ? 0x01 : 0)
        ).tl_serialize(io)
        @order.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class GetDocumentByHash < TLRequest
      getter constructor_id : UInt32 = 0x338E2464_u32
      class_getter constructor_id : UInt32 = 0x338E2464_u32

      getter sha256 : Bytes
      getter size : Int32
      getter mime_type : Bytes

      def initialize(
        sha256 : Bytes | String | IO,
        size : Int32,
        mime_type : Bytes | String | IO
      )
        @sha256 = TL::Utils.parse_bytes!(sha256)
        @size = TL::Utils.parse_int!(size, Int32)
        @mime_type = TL::Utils.parse_bytes!(mime_type)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @sha256.tl_serialize(io)
        @size.tl_serialize(io)
        @mime_type.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeDocument
      end
    end

    class GetSavedGifs < TLRequest
      getter constructor_id : UInt32 = 0x5CF09635_u32
      class_getter constructor_id : UInt32 = 0x5CF09635_u32

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
        Messages::TypeSavedGifs
      end
    end

    class SaveGif < TLRequest
      getter constructor_id : UInt32 = 0x327A30CB_u32
      class_getter constructor_id : UInt32 = 0x327A30CB_u32

      getter id : Root::TypeInputDocument
      getter unsave : Bool

      def initialize(
        id : Root::TypeInputDocument,
        unsave : Bool
      )
        @id = id
        @unsave = unsave
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @id.tl_serialize(io)
        @unsave.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class GetInlineBotResults < TLRequest
      getter constructor_id : UInt32 = 0x514E999D_u32
      class_getter constructor_id : UInt32 = 0x514E999D_u32

      getter bot : Root::TypeInputUser
      getter peer : Root::TypeInputPeer
      getter query : Bytes
      getter offset : Bytes
      getter geo_point : Root::TypeInputGeoPoint | Nil

      def initialize(
        bot : Root::TypeInputUser,
        peer : Root::TypeInputPeer,
        query : Bytes | String | IO,
        offset : Bytes | String | IO,
        geo_point : Root::TypeInputGeoPoint | Nil = nil
      )
        @bot = bot
        @peer = peer
        @query = TL::Utils.parse_bytes!(query)
        @offset = TL::Utils.parse_bytes!(offset)
        @geo_point = geo_point
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!geo_point.nil? ? 0x01 : 0)
        ).tl_serialize(io)
        @bot.tl_serialize(io)
        @peer.tl_serialize(io)
        @geo_point.tl_serialize(io) unless @geo_point.nil?
        @query.tl_serialize(io)
        @offset.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeBotResults
      end
    end

    class SetInlineBotResults < TLRequest
      getter constructor_id : UInt32 = 0xEB5EA206_u32
      class_getter constructor_id : UInt32 = 0xEB5EA206_u32

      getter query_id : Int64
      getter results : Array(Root::TypeInputBotInlineResult)
      getter cache_time : Int32
      getter gallery : Bool | Nil
      getter is_private : Bool | Nil
      getter next_offset : Bytes | Nil
      getter switch_pm : Root::TypeInlineBotSwitchPM | Nil

      def initialize(
        query_id : Int64,
        results : Array(Root::TypeInputBotInlineResult),
        cache_time : Int32,
        gallery : Bool | Nil = nil,
        is_private : Bool | Nil = nil,
        next_offset : Bytes | Nil = nil,
        switch_pm : Root::TypeInlineBotSwitchPM | Nil = nil
      )
        @query_id = query_id
        @results = results
        @cache_time = TL::Utils.parse_int!(cache_time, Int32)
        @gallery = gallery
        @is_private = is_private
        @next_offset = TL::Utils.parse_bytes(next_offset)
        @switch_pm = switch_pm
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!gallery.nil? ? 0x01 : 0) |
            (!is_private.nil? ? 0x02 : 0) |
            (!next_offset.nil? ? 0x04 : 0) |
            (!switch_pm.nil? ? 0x08 : 0)
        ).tl_serialize(io)
        @query_id.tl_serialize(io)
        @results.tl_serialize(io)
        @cache_time.tl_serialize(io)
        @next_offset.tl_serialize(io) unless @next_offset.nil?
        @switch_pm.tl_serialize(io) unless @switch_pm.nil?
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class SendInlineBotResult < TLRequest
      getter constructor_id : UInt32 = 0x7AA11297_u32
      class_getter constructor_id : UInt32 = 0x7AA11297_u32

      getter peer : Root::TypeInputPeer
      getter random_id : Int64
      getter query_id : Int64
      getter id : Bytes
      getter silent : Bool | Nil
      getter background : Bool | Nil
      getter clear_draft : Bool | Nil
      getter hide_via : Bool | Nil
      getter reply_to_msg_id : Int32 | Nil
      getter schedule_date : Int32 | Nil
      getter send_as : Root::TypeInputPeer | Nil

      def initialize(
        peer : Root::TypeInputPeer,
        random_id : Int64,
        query_id : Int64,
        id : Bytes | String | IO,
        silent : Bool | Nil = nil,
        background : Bool | Nil = nil,
        clear_draft : Bool | Nil = nil,
        hide_via : Bool | Nil = nil,
        reply_to_msg_id : Int32 | Nil = nil,
        schedule_date : Int32 | Nil = nil,
        send_as : Root::TypeInputPeer | Nil = nil
      )
        @peer = peer
        @random_id = random_id
        @query_id = query_id
        @id = TL::Utils.parse_bytes!(id)
        @silent = silent
        @background = background
        @clear_draft = clear_draft
        @hide_via = hide_via
        @reply_to_msg_id = TL::Utils.parse_int(reply_to_msg_id, Int32)
        @schedule_date = TL::Utils.parse_int(schedule_date, Int32)
        @send_as = send_as
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!silent.nil? ? 0x20 : 0) |
            (!background.nil? ? 0x40 : 0) |
            (!clear_draft.nil? ? 0x80 : 0) |
            (!hide_via.nil? ? 0x800 : 0) |
            (!reply_to_msg_id.nil? ? 0x01 : 0) |
            (!schedule_date.nil? ? 0x400 : 0) |
            (!send_as.nil? ? 0x2000 : 0)
        ).tl_serialize(io)
        @peer.tl_serialize(io)
        @reply_to_msg_id.tl_serialize(io) unless @reply_to_msg_id.nil?
        @random_id.tl_serialize(io)
        @query_id.tl_serialize(io)
        @id.tl_serialize(io)
        @schedule_date.tl_serialize(io) unless @schedule_date.nil?
        @send_as.tl_serialize(io) unless @send_as.nil?
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class GetMessageEditData < TLRequest
      getter constructor_id : UInt32 = 0xFDA68D36_u32
      class_getter constructor_id : UInt32 = 0xFDA68D36_u32

      getter peer : Root::TypeInputPeer
      getter id : Int32

      def initialize(
        peer : Root::TypeInputPeer,
        id : Int32
      )
        @peer = peer
        @id = TL::Utils.parse_int!(id, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeMessageEditData
      end
    end

    class EditMessage < TLRequest
      getter constructor_id : UInt32 = 0x48F71778_u32
      class_getter constructor_id : UInt32 = 0x48F71778_u32

      getter peer : Root::TypeInputPeer
      getter id : Int32
      getter no_webpage : Bool | Nil
      getter message : Bytes | Nil
      getter media : Root::TypeInputMedia | Nil
      getter reply_markup : Root::TypeReplyMarkup | Nil
      getter entities : Array(Root::TypeMessageEntity) | Nil
      getter schedule_date : Int32 | Nil

      def initialize(
        peer : Root::TypeInputPeer,
        id : Int32,
        no_webpage : Bool | Nil = nil,
        message : Bytes | Nil = nil,
        media : Root::TypeInputMedia | Nil = nil,
        reply_markup : Root::TypeReplyMarkup | Nil = nil,
        entities : Array(Root::TypeMessageEntity) | Nil = nil,
        schedule_date : Int32 | Nil = nil
      )
        @peer = peer
        @id = TL::Utils.parse_int!(id, Int32)
        @no_webpage = no_webpage
        @message = TL::Utils.parse_bytes(message)
        @media = media
        @reply_markup = reply_markup
        @entities = entities
        @schedule_date = TL::Utils.parse_int(schedule_date, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!no_webpage.nil? ? 0x02 : 0) |
            (!message.nil? ? 0x800 : 0) |
            (!media.nil? ? 0x4000 : 0) |
            (!reply_markup.nil? ? 0x04 : 0) |
            (!entities.nil? ? 0x08 : 0) |
            (!schedule_date.nil? ? 0x8000 : 0)
        ).tl_serialize(io)
        @peer.tl_serialize(io)
        @id.tl_serialize(io)
        @message.tl_serialize(io) unless @message.nil?
        @media.tl_serialize(io) unless @media.nil?
        @reply_markup.tl_serialize(io) unless @reply_markup.nil?
        @entities.tl_serialize(io) unless @entities.nil?
        @schedule_date.tl_serialize(io) unless @schedule_date.nil?
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class EditInlineBotMessage < TLRequest
      getter constructor_id : UInt32 = 0x83557DBA_u32
      class_getter constructor_id : UInt32 = 0x83557DBA_u32

      getter id : Root::TypeInputBotInlineMessageID
      getter no_webpage : Bool | Nil
      getter message : Bytes | Nil
      getter media : Root::TypeInputMedia | Nil
      getter reply_markup : Root::TypeReplyMarkup | Nil
      getter entities : Array(Root::TypeMessageEntity) | Nil

      def initialize(
        id : Root::TypeInputBotInlineMessageID,
        no_webpage : Bool | Nil = nil,
        message : Bytes | Nil = nil,
        media : Root::TypeInputMedia | Nil = nil,
        reply_markup : Root::TypeReplyMarkup | Nil = nil,
        entities : Array(Root::TypeMessageEntity) | Nil = nil
      )
        @id = id
        @no_webpage = no_webpage
        @message = TL::Utils.parse_bytes(message)
        @media = media
        @reply_markup = reply_markup
        @entities = entities
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!no_webpage.nil? ? 0x02 : 0) |
            (!message.nil? ? 0x800 : 0) |
            (!media.nil? ? 0x4000 : 0) |
            (!reply_markup.nil? ? 0x04 : 0) |
            (!entities.nil? ? 0x08 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io)
        @message.tl_serialize(io) unless @message.nil?
        @media.tl_serialize(io) unless @media.nil?
        @reply_markup.tl_serialize(io) unless @reply_markup.nil?
        @entities.tl_serialize(io) unless @entities.nil?
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class GetBotCallbackAnswer < TLRequest
      getter constructor_id : UInt32 = 0x9342CA07_u32
      class_getter constructor_id : UInt32 = 0x9342CA07_u32

      getter peer : Root::TypeInputPeer
      getter msg_id : Int32
      getter game : Bool | Nil
      getter data : Bytes | Nil
      getter password : Root::TypeInputCheckPasswordSRP | Nil

      def initialize(
        peer : Root::TypeInputPeer,
        msg_id : Int32,
        game : Bool | Nil = nil,
        data : Bytes | Nil = nil,
        password : Root::TypeInputCheckPasswordSRP | Nil = nil
      )
        @peer = peer
        @msg_id = TL::Utils.parse_int!(msg_id, Int32)
        @game = game
        @data = TL::Utils.parse_bytes(data)
        @password = password
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!game.nil? ? 0x02 : 0) |
            (!data.nil? ? 0x01 : 0) |
            (!password.nil? ? 0x04 : 0)
        ).tl_serialize(io)
        @peer.tl_serialize(io)
        @msg_id.tl_serialize(io)
        @data.tl_serialize(io) unless @data.nil?
        @password.tl_serialize(io) unless @password.nil?
      end

      def self.return_type : Deserializable
        Messages::TypeBotCallbackAnswer
      end
    end

    class SetBotCallbackAnswer < TLRequest
      getter constructor_id : UInt32 = 0xD58F130A_u32
      class_getter constructor_id : UInt32 = 0xD58F130A_u32

      getter query_id : Int64
      getter cache_time : Int32
      getter alert : Bool | Nil
      getter message : Bytes | Nil
      getter url : Bytes | Nil

      def initialize(
        query_id : Int64,
        cache_time : Int32,
        alert : Bool | Nil = nil,
        message : Bytes | Nil = nil,
        url : Bytes | Nil = nil
      )
        @query_id = query_id
        @cache_time = TL::Utils.parse_int!(cache_time, Int32)
        @alert = alert
        @message = TL::Utils.parse_bytes(message)
        @url = TL::Utils.parse_bytes(url)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!alert.nil? ? 0x02 : 0) |
            (!message.nil? ? 0x01 : 0) |
            (!url.nil? ? 0x04 : 0)
        ).tl_serialize(io)
        @query_id.tl_serialize(io)
        @message.tl_serialize(io) unless @message.nil?
        @url.tl_serialize(io) unless @url.nil?
        @cache_time.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class GetPeerDialogs < TLRequest
      getter constructor_id : UInt32 = 0xE470BCFD_u32
      class_getter constructor_id : UInt32 = 0xE470BCFD_u32

      getter peers : Array(Root::TypeInputDialogPeer)

      def initialize(
        peers : Array(Root::TypeInputDialogPeer)
      )
        @peers = peers
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peers.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypePeerDialogs
      end
    end

    class SaveDraft < TLRequest
      getter constructor_id : UInt32 = 0xBC39E14B_u32
      class_getter constructor_id : UInt32 = 0xBC39E14B_u32

      getter peer : Root::TypeInputPeer
      getter message : Bytes
      getter no_webpage : Bool | Nil
      getter reply_to_msg_id : Int32 | Nil
      getter entities : Array(Root::TypeMessageEntity) | Nil

      def initialize(
        peer : Root::TypeInputPeer,
        message : Bytes | String | IO,
        no_webpage : Bool | Nil = nil,
        reply_to_msg_id : Int32 | Nil = nil,
        entities : Array(Root::TypeMessageEntity) | Nil = nil
      )
        @peer = peer
        @message = TL::Utils.parse_bytes!(message)
        @no_webpage = no_webpage
        @reply_to_msg_id = TL::Utils.parse_int(reply_to_msg_id, Int32)
        @entities = entities
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!no_webpage.nil? ? 0x02 : 0) |
            (!reply_to_msg_id.nil? ? 0x01 : 0) |
            (!entities.nil? ? 0x08 : 0)
        ).tl_serialize(io)
        @reply_to_msg_id.tl_serialize(io) unless @reply_to_msg_id.nil?
        @peer.tl_serialize(io)
        @message.tl_serialize(io)
        @entities.tl_serialize(io) unless @entities.nil?
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class GetAllDrafts < TLRequest
      getter constructor_id : UInt32 = 0x6A3F8D65_u32
      class_getter constructor_id : UInt32 = 0x6A3F8D65_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class GetFeaturedStickers < TLRequest
      getter constructor_id : UInt32 = 0x64780B14_u32
      class_getter constructor_id : UInt32 = 0x64780B14_u32

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
        Messages::TypeFeaturedStickers
      end
    end

    class ReadFeaturedStickers < TLRequest
      getter constructor_id : UInt32 = 0x5B118126_u32
      class_getter constructor_id : UInt32 = 0x5B118126_u32

      getter id : Array(Int64)

      def initialize(
        id : Array(Int64)
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

    class GetRecentStickers < TLRequest
      getter constructor_id : UInt32 = 0x9DA9403B_u32
      class_getter constructor_id : UInt32 = 0x9DA9403B_u32

      getter hash : Int64
      getter attached : Bool | Nil

      def initialize(
        hash : Int64,
        attached : Bool | Nil = nil
      )
        @hash = hash
        @attached = attached
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!attached.nil? ? 0x01 : 0)
        ).tl_serialize(io)
        @hash.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeRecentStickers
      end
    end

    class SaveRecentSticker < TLRequest
      getter constructor_id : UInt32 = 0x392718F8_u32
      class_getter constructor_id : UInt32 = 0x392718F8_u32

      getter id : Root::TypeInputDocument
      getter unsave : Bool
      getter attached : Bool | Nil

      def initialize(
        id : Root::TypeInputDocument,
        unsave : Bool,
        attached : Bool | Nil = nil
      )
        @id = id
        @unsave = unsave
        @attached = attached
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!attached.nil? ? 0x01 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io)
        @unsave.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class ClearRecentStickers < TLRequest
      getter constructor_id : UInt32 = 0x8999602D_u32
      class_getter constructor_id : UInt32 = 0x8999602D_u32

      getter attached : Bool | Nil

      def initialize(
        attached : Bool | Nil = nil
      )
        @attached = attached
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!attached.nil? ? 0x01 : 0)
        ).tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class GetArchivedStickers < TLRequest
      getter constructor_id : UInt32 = 0x57F17692_u32
      class_getter constructor_id : UInt32 = 0x57F17692_u32

      getter offset_id : Int64
      getter limit : Int32
      getter masks : Bool | Nil

      def initialize(
        offset_id : Int64,
        limit : Int32,
        masks : Bool | Nil = nil
      )
        @offset_id = offset_id
        @limit = TL::Utils.parse_int!(limit, Int32)
        @masks = masks
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!masks.nil? ? 0x01 : 0)
        ).tl_serialize(io)
        @offset_id.tl_serialize(io)
        @limit.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeArchivedStickers
      end
    end

    class GetMaskStickers < TLRequest
      getter constructor_id : UInt32 = 0x640F82B8_u32
      class_getter constructor_id : UInt32 = 0x640F82B8_u32

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
        Messages::TypeAllStickers
      end
    end

    class GetAttachedStickers < TLRequest
      getter constructor_id : UInt32 = 0xCC5B67CC_u32
      class_getter constructor_id : UInt32 = 0xCC5B67CC_u32

      getter media : Root::TypeInputStickeredMedia

      def initialize(
        media : Root::TypeInputStickeredMedia
      )
        @media = media
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @media.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Array(Root::TypeStickerSetCovered)
      end
    end

    class SetGameScore < TLRequest
      getter constructor_id : UInt32 = 0x8EF8ECC0_u32
      class_getter constructor_id : UInt32 = 0x8EF8ECC0_u32

      getter peer : Root::TypeInputPeer
      getter id : Int32
      getter user_id : Root::TypeInputUser
      getter score : Int32
      getter edit_message : Bool | Nil
      getter force : Bool | Nil

      def initialize(
        peer : Root::TypeInputPeer,
        id : Int32,
        user_id : Root::TypeInputUser,
        score : Int32,
        edit_message : Bool | Nil = nil,
        force : Bool | Nil = nil
      )
        @peer = peer
        @id = TL::Utils.parse_int!(id, Int32)
        @user_id = user_id
        @score = TL::Utils.parse_int!(score, Int32)
        @edit_message = edit_message
        @force = force
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!edit_message.nil? ? 0x01 : 0) |
            (!force.nil? ? 0x02 : 0)
        ).tl_serialize(io)
        @peer.tl_serialize(io)
        @id.tl_serialize(io)
        @user_id.tl_serialize(io)
        @score.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class SetInlineGameScore < TLRequest
      getter constructor_id : UInt32 = 0x15AD9F64_u32
      class_getter constructor_id : UInt32 = 0x15AD9F64_u32

      getter id : Root::TypeInputBotInlineMessageID
      getter user_id : Root::TypeInputUser
      getter score : Int32
      getter edit_message : Bool | Nil
      getter force : Bool | Nil

      def initialize(
        id : Root::TypeInputBotInlineMessageID,
        user_id : Root::TypeInputUser,
        score : Int32,
        edit_message : Bool | Nil = nil,
        force : Bool | Nil = nil
      )
        @id = id
        @user_id = user_id
        @score = TL::Utils.parse_int!(score, Int32)
        @edit_message = edit_message
        @force = force
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!edit_message.nil? ? 0x01 : 0) |
            (!force.nil? ? 0x02 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io)
        @user_id.tl_serialize(io)
        @score.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class GetGameHighScores < TLRequest
      getter constructor_id : UInt32 = 0xE822649D_u32
      class_getter constructor_id : UInt32 = 0xE822649D_u32

      getter peer : Root::TypeInputPeer
      getter id : Int32
      getter user_id : Root::TypeInputUser

      def initialize(
        peer : Root::TypeInputPeer,
        id : Int32,
        user_id : Root::TypeInputUser
      )
        @peer = peer
        @id = TL::Utils.parse_int!(id, Int32)
        @user_id = user_id
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @id.tl_serialize(io)
        @user_id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeHighScores
      end
    end

    class GetInlineGameHighScores < TLRequest
      getter constructor_id : UInt32 = 0x0F635E1B_u32
      class_getter constructor_id : UInt32 = 0x0F635E1B_u32

      getter id : Root::TypeInputBotInlineMessageID
      getter user_id : Root::TypeInputUser

      def initialize(
        id : Root::TypeInputBotInlineMessageID,
        user_id : Root::TypeInputUser
      )
        @id = id
        @user_id = user_id
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @id.tl_serialize(io)
        @user_id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeHighScores
      end
    end

    class GetCommonChats < TLRequest
      getter constructor_id : UInt32 = 0xE40CA104_u32
      class_getter constructor_id : UInt32 = 0xE40CA104_u32

      getter user_id : Root::TypeInputUser
      getter max_id : Int64
      getter limit : Int32

      def initialize(
        user_id : Root::TypeInputUser,
        max_id : Int64,
        limit : Int32
      )
        @user_id = user_id
        @max_id = max_id
        @limit = TL::Utils.parse_int!(limit, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @user_id.tl_serialize(io)
        @max_id.tl_serialize(io)
        @limit.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeChats
      end
    end

    class GetAllChats < TLRequest
      getter constructor_id : UInt32 = 0x875F74BE_u32
      class_getter constructor_id : UInt32 = 0x875F74BE_u32

      getter except_ids : Array(Int64)

      def initialize(
        except_ids : Array(Int64)
      )
        @except_ids = except_ids
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @except_ids.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeChats
      end
    end

    class GetWebPage < TLRequest
      getter constructor_id : UInt32 = 0x32CA8F91_u32
      class_getter constructor_id : UInt32 = 0x32CA8F91_u32

      getter url : Bytes
      getter hash : Int32

      def initialize(
        url : Bytes | String | IO,
        hash : Int32
      )
        @url = TL::Utils.parse_bytes!(url)
        @hash = TL::Utils.parse_int!(hash, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @url.tl_serialize(io)
        @hash.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeWebPage
      end
    end

    class ToggleDialogPin < TLRequest
      getter constructor_id : UInt32 = 0xA731E257_u32
      class_getter constructor_id : UInt32 = 0xA731E257_u32

      getter peer : Root::TypeInputDialogPeer
      getter pinned : Bool | Nil

      def initialize(
        peer : Root::TypeInputDialogPeer,
        pinned : Bool | Nil = nil
      )
        @peer = peer
        @pinned = pinned
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!pinned.nil? ? 0x01 : 0)
        ).tl_serialize(io)
        @peer.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class ReorderPinnedDialogs < TLRequest
      getter constructor_id : UInt32 = 0x3B1ADF37_u32
      class_getter constructor_id : UInt32 = 0x3B1ADF37_u32

      getter folder_id : Int32
      getter order : Array(Root::TypeInputDialogPeer)
      getter force : Bool | Nil

      def initialize(
        folder_id : Int32,
        order : Array(Root::TypeInputDialogPeer),
        force : Bool | Nil = nil
      )
        @folder_id = TL::Utils.parse_int!(folder_id, Int32)
        @order = order
        @force = force
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!force.nil? ? 0x01 : 0)
        ).tl_serialize(io)
        @folder_id.tl_serialize(io)
        @order.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class GetPinnedDialogs < TLRequest
      getter constructor_id : UInt32 = 0xD6B94DF2_u32
      class_getter constructor_id : UInt32 = 0xD6B94DF2_u32

      getter folder_id : Int32

      def initialize(
        folder_id : Int32
      )
        @folder_id = TL::Utils.parse_int!(folder_id, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @folder_id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypePeerDialogs
      end
    end

    class SetBotShippingResults < TLRequest
      getter constructor_id : UInt32 = 0xE5F672FA_u32
      class_getter constructor_id : UInt32 = 0xE5F672FA_u32

      getter query_id : Int64
      getter error : Bytes | Nil
      getter shipping_options : Array(Root::TypeShippingOption) | Nil

      def initialize(
        query_id : Int64,
        error : Bytes | Nil = nil,
        shipping_options : Array(Root::TypeShippingOption) | Nil = nil
      )
        @query_id = query_id
        @error = TL::Utils.parse_bytes(error)
        @shipping_options = shipping_options
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!error.nil? ? 0x01 : 0) |
            (!shipping_options.nil? ? 0x02 : 0)
        ).tl_serialize(io)
        @query_id.tl_serialize(io)
        @error.tl_serialize(io) unless @error.nil?
        @shipping_options.tl_serialize(io) unless @shipping_options.nil?
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class SetBotPrecheckoutResults < TLRequest
      getter constructor_id : UInt32 = 0x09C2DD95_u32
      class_getter constructor_id : UInt32 = 0x09C2DD95_u32

      getter query_id : Int64
      getter success : Bool | Nil
      getter error : Bytes | Nil

      def initialize(
        query_id : Int64,
        success : Bool | Nil = nil,
        error : Bytes | Nil = nil
      )
        @query_id = query_id
        @success = success
        @error = TL::Utils.parse_bytes(error)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!success.nil? ? 0x02 : 0) |
            (!error.nil? ? 0x01 : 0)
        ).tl_serialize(io)
        @query_id.tl_serialize(io)
        @error.tl_serialize(io) unless @error.nil?
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class UploadMedia < TLRequest
      getter constructor_id : UInt32 = 0x519BC2B1_u32
      class_getter constructor_id : UInt32 = 0x519BC2B1_u32

      getter peer : Root::TypeInputPeer
      getter media : Root::TypeInputMedia

      def initialize(
        peer : Root::TypeInputPeer,
        media : Root::TypeInputMedia
      )
        @peer = peer
        @media = media
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @media.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeMessageMedia
      end
    end

    class SendScreenshotNotification < TLRequest
      getter constructor_id : UInt32 = 0xC97DF020_u32
      class_getter constructor_id : UInt32 = 0xC97DF020_u32

      getter peer : Root::TypeInputPeer
      getter reply_to_msg_id : Int32
      getter random_id : Int64

      def initialize(
        peer : Root::TypeInputPeer,
        reply_to_msg_id : Int32,
        random_id : Int64
      )
        @peer = peer
        @reply_to_msg_id = TL::Utils.parse_int!(reply_to_msg_id, Int32)
        @random_id = random_id
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @reply_to_msg_id.tl_serialize(io)
        @random_id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class GetFavedStickers < TLRequest
      getter constructor_id : UInt32 = 0x04F1AAA9_u32
      class_getter constructor_id : UInt32 = 0x04F1AAA9_u32

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
        Messages::TypeFavedStickers
      end
    end

    class FaveSticker < TLRequest
      getter constructor_id : UInt32 = 0xB9FFC55B_u32
      class_getter constructor_id : UInt32 = 0xB9FFC55B_u32

      getter id : Root::TypeInputDocument
      getter unfave : Bool

      def initialize(
        id : Root::TypeInputDocument,
        unfave : Bool
      )
        @id = id
        @unfave = unfave
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @id.tl_serialize(io)
        @unfave.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class GetUnreadMentions < TLRequest
      getter constructor_id : UInt32 = 0x46578472_u32
      class_getter constructor_id : UInt32 = 0x46578472_u32

      getter peer : Root::TypeInputPeer
      getter offset_id : Int32
      getter add_offset : Int32
      getter limit : Int32
      getter max_id : Int32
      getter min_id : Int32

      def initialize(
        peer : Root::TypeInputPeer,
        offset_id : Int32,
        add_offset : Int32,
        limit : Int32,
        max_id : Int32,
        min_id : Int32
      )
        @peer = peer
        @offset_id = TL::Utils.parse_int!(offset_id, Int32)
        @add_offset = TL::Utils.parse_int!(add_offset, Int32)
        @limit = TL::Utils.parse_int!(limit, Int32)
        @max_id = TL::Utils.parse_int!(max_id, Int32)
        @min_id = TL::Utils.parse_int!(min_id, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @offset_id.tl_serialize(io)
        @add_offset.tl_serialize(io)
        @limit.tl_serialize(io)
        @max_id.tl_serialize(io)
        @min_id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeMessages
      end
    end

    class ReadMentions < TLRequest
      getter constructor_id : UInt32 = 0x0F0189D3_u32
      class_getter constructor_id : UInt32 = 0x0F0189D3_u32

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
        Messages::TypeAffectedHistory
      end
    end

    class GetRecentLocations < TLRequest
      getter constructor_id : UInt32 = 0x702A40E0_u32
      class_getter constructor_id : UInt32 = 0x702A40E0_u32

      getter peer : Root::TypeInputPeer
      getter limit : Int32
      getter hash : Int64

      def initialize(
        peer : Root::TypeInputPeer,
        limit : Int32,
        hash : Int64
      )
        @peer = peer
        @limit = TL::Utils.parse_int!(limit, Int32)
        @hash = hash
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @limit.tl_serialize(io)
        @hash.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeMessages
      end
    end

    class SendMultiMedia < TLRequest
      getter constructor_id : UInt32 = 0xF803138F_u32
      class_getter constructor_id : UInt32 = 0xF803138F_u32

      getter peer : Root::TypeInputPeer
      getter multi_media : Array(Root::TypeInputSingleMedia)
      getter silent : Bool | Nil
      getter background : Bool | Nil
      getter clear_draft : Bool | Nil
      getter reply_to_msg_id : Int32 | Nil
      getter schedule_date : Int32 | Nil
      getter send_as : Root::TypeInputPeer | Nil

      def initialize(
        peer : Root::TypeInputPeer,
        multi_media : Array(Root::TypeInputSingleMedia),
        silent : Bool | Nil = nil,
        background : Bool | Nil = nil,
        clear_draft : Bool | Nil = nil,
        reply_to_msg_id : Int32 | Nil = nil,
        schedule_date : Int32 | Nil = nil,
        send_as : Root::TypeInputPeer | Nil = nil
      )
        @peer = peer
        @multi_media = multi_media
        @silent = silent
        @background = background
        @clear_draft = clear_draft
        @reply_to_msg_id = TL::Utils.parse_int(reply_to_msg_id, Int32)
        @schedule_date = TL::Utils.parse_int(schedule_date, Int32)
        @send_as = send_as
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!silent.nil? ? 0x20 : 0) |
            (!background.nil? ? 0x40 : 0) |
            (!clear_draft.nil? ? 0x80 : 0) |
            (!reply_to_msg_id.nil? ? 0x01 : 0) |
            (!schedule_date.nil? ? 0x400 : 0) |
            (!send_as.nil? ? 0x2000 : 0)
        ).tl_serialize(io)
        @peer.tl_serialize(io)
        @reply_to_msg_id.tl_serialize(io) unless @reply_to_msg_id.nil?
        @multi_media.tl_serialize(io)
        @schedule_date.tl_serialize(io) unless @schedule_date.nil?
        @send_as.tl_serialize(io) unless @send_as.nil?
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class UploadEncryptedFile < TLRequest
      getter constructor_id : UInt32 = 0x5057C497_u32
      class_getter constructor_id : UInt32 = 0x5057C497_u32

      getter peer : Root::TypeInputEncryptedChat
      getter file : Root::TypeInputEncryptedFile

      def initialize(
        peer : Root::TypeInputEncryptedChat,
        file : Root::TypeInputEncryptedFile
      )
        @peer = peer
        @file = file
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @file.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeEncryptedFile
      end
    end

    class SearchStickerSets < TLRequest
      getter constructor_id : UInt32 = 0x35705B8A_u32
      class_getter constructor_id : UInt32 = 0x35705B8A_u32

      getter q : Bytes
      getter hash : Int64
      getter exclude_featured : Bool | Nil

      def initialize(
        q : Bytes | String | IO,
        hash : Int64,
        exclude_featured : Bool | Nil = nil
      )
        @q = TL::Utils.parse_bytes!(q)
        @hash = hash
        @exclude_featured = exclude_featured
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!exclude_featured.nil? ? 0x01 : 0)
        ).tl_serialize(io)
        @q.tl_serialize(io)
        @hash.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeFoundStickerSets
      end
    end

    class GetSplitRanges < TLRequest
      getter constructor_id : UInt32 = 0x1CFF7E08_u32
      class_getter constructor_id : UInt32 = 0x1CFF7E08_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.return_type : Deserializable
        Array(Root::TypeMessageRange)
      end
    end

    class MarkDialogUnread < TLRequest
      getter constructor_id : UInt32 = 0xC286D98F_u32
      class_getter constructor_id : UInt32 = 0xC286D98F_u32

      getter peer : Root::TypeInputDialogPeer
      getter unread : Bool | Nil

      def initialize(
        peer : Root::TypeInputDialogPeer,
        unread : Bool | Nil = nil
      )
        @peer = peer
        @unread = unread
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!unread.nil? ? 0x01 : 0)
        ).tl_serialize(io)
        @peer.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class GetDialogUnreadMarks < TLRequest
      getter constructor_id : UInt32 = 0x22E24E22_u32
      class_getter constructor_id : UInt32 = 0x22E24E22_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.return_type : Deserializable
        Array(Root::TypeDialogPeer)
      end
    end

    class ClearAllDrafts < TLRequest
      getter constructor_id : UInt32 = 0x7E58EE9C_u32
      class_getter constructor_id : UInt32 = 0x7E58EE9C_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class UpdatePinnedMessage < TLRequest
      getter constructor_id : UInt32 = 0xD2AAF7EC_u32
      class_getter constructor_id : UInt32 = 0xD2AAF7EC_u32

      getter peer : Root::TypeInputPeer
      getter id : Int32
      getter silent : Bool | Nil
      getter unpin : Bool | Nil
      getter pm_oneside : Bool | Nil

      def initialize(
        peer : Root::TypeInputPeer,
        id : Int32,
        silent : Bool | Nil = nil,
        unpin : Bool | Nil = nil,
        pm_oneside : Bool | Nil = nil
      )
        @peer = peer
        @id = TL::Utils.parse_int!(id, Int32)
        @silent = silent
        @unpin = unpin
        @pm_oneside = pm_oneside
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!silent.nil? ? 0x01 : 0) |
            (!unpin.nil? ? 0x02 : 0) |
            (!pm_oneside.nil? ? 0x04 : 0)
        ).tl_serialize(io)
        @peer.tl_serialize(io)
        @id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class SendVote < TLRequest
      getter constructor_id : UInt32 = 0x10EA6184_u32
      class_getter constructor_id : UInt32 = 0x10EA6184_u32

      getter peer : Root::TypeInputPeer
      getter msg_id : Int32
      getter options : Array(Bytes)

      def initialize(
        peer : Root::TypeInputPeer,
        msg_id : Int32,
        options : Array(Bytes)
      )
        @peer = peer
        @msg_id = TL::Utils.parse_int!(msg_id, Int32)
        @options = options
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @msg_id.tl_serialize(io)
        @options.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class GetPollResults < TLRequest
      getter constructor_id : UInt32 = 0x73BB643B_u32
      class_getter constructor_id : UInt32 = 0x73BB643B_u32

      getter peer : Root::TypeInputPeer
      getter msg_id : Int32

      def initialize(
        peer : Root::TypeInputPeer,
        msg_id : Int32
      )
        @peer = peer
        @msg_id = TL::Utils.parse_int!(msg_id, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @msg_id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class GetOnlines < TLRequest
      getter constructor_id : UInt32 = 0x6E2BE050_u32
      class_getter constructor_id : UInt32 = 0x6E2BE050_u32

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
        Root::TypeChatOnlines
      end
    end

    class EditChatAbout < TLRequest
      getter constructor_id : UInt32 = 0xDEF60797_u32
      class_getter constructor_id : UInt32 = 0xDEF60797_u32

      getter peer : Root::TypeInputPeer
      getter about : Bytes

      def initialize(
        peer : Root::TypeInputPeer,
        about : Bytes | String | IO
      )
        @peer = peer
        @about = TL::Utils.parse_bytes!(about)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @about.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class EditChatDefaultBannedRights < TLRequest
      getter constructor_id : UInt32 = 0xA5866B41_u32
      class_getter constructor_id : UInt32 = 0xA5866B41_u32

      getter peer : Root::TypeInputPeer
      getter banned_rights : Root::TypeChatBannedRights

      def initialize(
        peer : Root::TypeInputPeer,
        banned_rights : Root::TypeChatBannedRights
      )
        @peer = peer
        @banned_rights = banned_rights
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @banned_rights.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class GetEmojiKeywords < TLRequest
      getter constructor_id : UInt32 = 0x35A0E062_u32
      class_getter constructor_id : UInt32 = 0x35A0E062_u32

      getter lang_code : Bytes

      def initialize(
        lang_code : Bytes | String | IO
      )
        @lang_code = TL::Utils.parse_bytes!(lang_code)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @lang_code.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeEmojiKeywordsDifference
      end
    end

    class GetEmojiKeywordsDifference < TLRequest
      getter constructor_id : UInt32 = 0x1508B6AF_u32
      class_getter constructor_id : UInt32 = 0x1508B6AF_u32

      getter lang_code : Bytes
      getter from_version : Int32

      def initialize(
        lang_code : Bytes | String | IO,
        from_version : Int32
      )
        @lang_code = TL::Utils.parse_bytes!(lang_code)
        @from_version = TL::Utils.parse_int!(from_version, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @lang_code.tl_serialize(io)
        @from_version.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeEmojiKeywordsDifference
      end
    end

    class GetEmojiKeywordsLanguages < TLRequest
      getter constructor_id : UInt32 = 0x4E9963B2_u32
      class_getter constructor_id : UInt32 = 0x4E9963B2_u32

      getter lang_codes : Array(Bytes)

      def initialize(
        lang_codes : Array(Bytes)
      )
        @lang_codes = lang_codes
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @lang_codes.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Array(Root::TypeEmojiLanguage)
      end
    end

    class GetEmojiURL < TLRequest
      getter constructor_id : UInt32 = 0xD5B10C26_u32
      class_getter constructor_id : UInt32 = 0xD5B10C26_u32

      getter lang_code : Bytes

      def initialize(
        lang_code : Bytes | String | IO
      )
        @lang_code = TL::Utils.parse_bytes!(lang_code)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @lang_code.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeEmojiURL
      end
    end

    class GetSearchCounters < TLRequest
      getter constructor_id : UInt32 = 0x732EEF00_u32
      class_getter constructor_id : UInt32 = 0x732EEF00_u32

      getter peer : Root::TypeInputPeer
      getter filters : Array(Root::TypeMessagesFilter)

      def initialize(
        peer : Root::TypeInputPeer,
        filters : Array(Root::TypeMessagesFilter)
      )
        @peer = peer
        @filters = filters
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @filters.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Array(Messages::TypeSearchCounter)
      end
    end

    class RequestUrlAuth < TLRequest
      getter constructor_id : UInt32 = 0x198FB446_u32
      class_getter constructor_id : UInt32 = 0x198FB446_u32

      getter peer : Root::TypeInputPeer | Nil
      getter msg_id : Int32 | Nil
      getter button_id : Int32 | Nil
      getter url : Bytes | Nil

      def initialize(
        peer : Root::TypeInputPeer | Nil = nil,
        msg_id : Int32 | Nil = nil,
        button_id : Int32 | Nil = nil,
        url : Bytes | Nil = nil
      )
        @peer = peer
        @msg_id = TL::Utils.parse_int(msg_id, Int32)
        @button_id = TL::Utils.parse_int(button_id, Int32)
        @url = TL::Utils.parse_bytes(url)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!peer.nil? ? 0x02 : 0) |
            (!msg_id.nil? ? 0x02 : 0) |
            (!button_id.nil? ? 0x02 : 0) |
            (!url.nil? ? 0x04 : 0)
        ).tl_serialize(io)
        @peer.tl_serialize(io) unless @peer.nil?
        @msg_id.tl_serialize(io) unless @msg_id.nil?
        @button_id.tl_serialize(io) unless @button_id.nil?
        @url.tl_serialize(io) unless @url.nil?
      end

      def self.return_type : Deserializable
        Root::TypeUrlAuthResult
      end
    end

    class AcceptUrlAuth < TLRequest
      getter constructor_id : UInt32 = 0xB12C7125_u32
      class_getter constructor_id : UInt32 = 0xB12C7125_u32

      getter write_allowed : Bool | Nil
      getter peer : Root::TypeInputPeer | Nil
      getter msg_id : Int32 | Nil
      getter button_id : Int32 | Nil
      getter url : Bytes | Nil

      def initialize(
        write_allowed : Bool | Nil = nil,
        peer : Root::TypeInputPeer | Nil = nil,
        msg_id : Int32 | Nil = nil,
        button_id : Int32 | Nil = nil,
        url : Bytes | Nil = nil
      )
        @write_allowed = write_allowed
        @peer = peer
        @msg_id = TL::Utils.parse_int(msg_id, Int32)
        @button_id = TL::Utils.parse_int(button_id, Int32)
        @url = TL::Utils.parse_bytes(url)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!write_allowed.nil? ? 0x01 : 0) |
            (!peer.nil? ? 0x02 : 0) |
            (!msg_id.nil? ? 0x02 : 0) |
            (!button_id.nil? ? 0x02 : 0) |
            (!url.nil? ? 0x04 : 0)
        ).tl_serialize(io)
        @peer.tl_serialize(io) unless @peer.nil?
        @msg_id.tl_serialize(io) unless @msg_id.nil?
        @button_id.tl_serialize(io) unless @button_id.nil?
        @url.tl_serialize(io) unless @url.nil?
      end

      def self.return_type : Deserializable
        Root::TypeUrlAuthResult
      end
    end

    class HidePeerSettingsBar < TLRequest
      getter constructor_id : UInt32 = 0x4FACB138_u32
      class_getter constructor_id : UInt32 = 0x4FACB138_u32

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
        Bool
      end
    end

    class GetScheduledHistory < TLRequest
      getter constructor_id : UInt32 = 0xF516760B_u32
      class_getter constructor_id : UInt32 = 0xF516760B_u32

      getter peer : Root::TypeInputPeer
      getter hash : Int64

      def initialize(
        peer : Root::TypeInputPeer,
        hash : Int64
      )
        @peer = peer
        @hash = hash
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @hash.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeMessages
      end
    end

    class GetScheduledMessages < TLRequest
      getter constructor_id : UInt32 = 0xBDBB0464_u32
      class_getter constructor_id : UInt32 = 0xBDBB0464_u32

      getter peer : Root::TypeInputPeer
      getter id : Array(Int32)

      def initialize(
        peer : Root::TypeInputPeer,
        id : Array(Int32)
      )
        @peer = peer
        @id = id
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeMessages
      end
    end

    class SendScheduledMessages < TLRequest
      getter constructor_id : UInt32 = 0xBD38850A_u32
      class_getter constructor_id : UInt32 = 0xBD38850A_u32

      getter peer : Root::TypeInputPeer
      getter id : Array(Int32)

      def initialize(
        peer : Root::TypeInputPeer,
        id : Array(Int32)
      )
        @peer = peer
        @id = id
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class DeleteScheduledMessages < TLRequest
      getter constructor_id : UInt32 = 0x59AE2B16_u32
      class_getter constructor_id : UInt32 = 0x59AE2B16_u32

      getter peer : Root::TypeInputPeer
      getter id : Array(Int32)

      def initialize(
        peer : Root::TypeInputPeer,
        id : Array(Int32)
      )
        @peer = peer
        @id = id
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class GetPollVotes < TLRequest
      getter constructor_id : UInt32 = 0xB86E380E_u32
      class_getter constructor_id : UInt32 = 0xB86E380E_u32

      getter peer : Root::TypeInputPeer
      getter id : Int32
      getter limit : Int32
      getter option : Bytes | Nil
      getter offset : Bytes | Nil

      def initialize(
        peer : Root::TypeInputPeer,
        id : Int32,
        limit : Int32,
        option : Bytes | Nil = nil,
        offset : Bytes | Nil = nil
      )
        @peer = peer
        @id = TL::Utils.parse_int!(id, Int32)
        @limit = TL::Utils.parse_int!(limit, Int32)
        @option = TL::Utils.parse_bytes(option)
        @offset = TL::Utils.parse_bytes(offset)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!option.nil? ? 0x01 : 0) |
            (!offset.nil? ? 0x02 : 0)
        ).tl_serialize(io)
        @peer.tl_serialize(io)
        @id.tl_serialize(io)
        @option.tl_serialize(io) unless @option.nil?
        @offset.tl_serialize(io) unless @offset.nil?
        @limit.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeVotesList
      end
    end

    class ToggleStickerSets < TLRequest
      getter constructor_id : UInt32 = 0xB5052FEA_u32
      class_getter constructor_id : UInt32 = 0xB5052FEA_u32

      getter stickersets : Array(Root::TypeInputStickerSet)
      getter uninstall : Bool | Nil
      getter archive : Bool | Nil
      getter unarchive : Bool | Nil

      def initialize(
        stickersets : Array(Root::TypeInputStickerSet),
        uninstall : Bool | Nil = nil,
        archive : Bool | Nil = nil,
        unarchive : Bool | Nil = nil
      )
        @stickersets = stickersets
        @uninstall = uninstall
        @archive = archive
        @unarchive = unarchive
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!uninstall.nil? ? 0x01 : 0) |
            (!archive.nil? ? 0x02 : 0) |
            (!unarchive.nil? ? 0x04 : 0)
        ).tl_serialize(io)
        @stickersets.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class GetDialogFilters < TLRequest
      getter constructor_id : UInt32 = 0xF19ED96D_u32
      class_getter constructor_id : UInt32 = 0xF19ED96D_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.return_type : Deserializable
        Array(Root::TypeDialogFilter)
      end
    end

    class GetSuggestedDialogFilters < TLRequest
      getter constructor_id : UInt32 = 0xA29CD42C_u32
      class_getter constructor_id : UInt32 = 0xA29CD42C_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.return_type : Deserializable
        Array(Root::TypeDialogFilterSuggested)
      end
    end

    class UpdateDialogFilter < TLRequest
      getter constructor_id : UInt32 = 0x1AD4A04A_u32
      class_getter constructor_id : UInt32 = 0x1AD4A04A_u32

      getter id : Int32
      getter filter : Root::TypeDialogFilter | Nil

      def initialize(
        id : Int32,
        filter : Root::TypeDialogFilter | Nil = nil
      )
        @id = TL::Utils.parse_int!(id, Int32)
        @filter = filter
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!filter.nil? ? 0x01 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io)
        @filter.tl_serialize(io) unless @filter.nil?
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class UpdateDialogFiltersOrder < TLRequest
      getter constructor_id : UInt32 = 0xC563C1E4_u32
      class_getter constructor_id : UInt32 = 0xC563C1E4_u32

      getter order : Array(Int32)

      def initialize(
        order : Array(Int32)
      )
        @order = order
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @order.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class GetOldFeaturedStickers < TLRequest
      getter constructor_id : UInt32 = 0x7ED094A1_u32
      class_getter constructor_id : UInt32 = 0x7ED094A1_u32

      getter offset : Int32
      getter limit : Int32
      getter hash : Int64

      def initialize(
        offset : Int32,
        limit : Int32,
        hash : Int64
      )
        @offset = TL::Utils.parse_int!(offset, Int32)
        @limit = TL::Utils.parse_int!(limit, Int32)
        @hash = hash
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @offset.tl_serialize(io)
        @limit.tl_serialize(io)
        @hash.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeFeaturedStickers
      end
    end

    class GetReplies < TLRequest
      getter constructor_id : UInt32 = 0x22DDD30C_u32
      class_getter constructor_id : UInt32 = 0x22DDD30C_u32

      getter peer : Root::TypeInputPeer
      getter msg_id : Int32
      getter offset_id : Int32
      getter offset_date : Int32
      getter add_offset : Int32
      getter limit : Int32
      getter max_id : Int32
      getter min_id : Int32
      getter hash : Int64

      def initialize(
        peer : Root::TypeInputPeer,
        msg_id : Int32,
        offset_id : Int32,
        offset_date : Int32,
        add_offset : Int32,
        limit : Int32,
        max_id : Int32,
        min_id : Int32,
        hash : Int64
      )
        @peer = peer
        @msg_id = TL::Utils.parse_int!(msg_id, Int32)
        @offset_id = TL::Utils.parse_int!(offset_id, Int32)
        @offset_date = TL::Utils.parse_int!(offset_date, Int32)
        @add_offset = TL::Utils.parse_int!(add_offset, Int32)
        @limit = TL::Utils.parse_int!(limit, Int32)
        @max_id = TL::Utils.parse_int!(max_id, Int32)
        @min_id = TL::Utils.parse_int!(min_id, Int32)
        @hash = hash
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @msg_id.tl_serialize(io)
        @offset_id.tl_serialize(io)
        @offset_date.tl_serialize(io)
        @add_offset.tl_serialize(io)
        @limit.tl_serialize(io)
        @max_id.tl_serialize(io)
        @min_id.tl_serialize(io)
        @hash.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeMessages
      end
    end

    class GetDiscussionMessage < TLRequest
      getter constructor_id : UInt32 = 0x446972FD_u32
      class_getter constructor_id : UInt32 = 0x446972FD_u32

      getter peer : Root::TypeInputPeer
      getter msg_id : Int32

      def initialize(
        peer : Root::TypeInputPeer,
        msg_id : Int32
      )
        @peer = peer
        @msg_id = TL::Utils.parse_int!(msg_id, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @msg_id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeDiscussionMessage
      end
    end

    class ReadDiscussion < TLRequest
      getter constructor_id : UInt32 = 0xF731A9F4_u32
      class_getter constructor_id : UInt32 = 0xF731A9F4_u32

      getter peer : Root::TypeInputPeer
      getter msg_id : Int32
      getter read_max_id : Int32

      def initialize(
        peer : Root::TypeInputPeer,
        msg_id : Int32,
        read_max_id : Int32
      )
        @peer = peer
        @msg_id = TL::Utils.parse_int!(msg_id, Int32)
        @read_max_id = TL::Utils.parse_int!(read_max_id, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @msg_id.tl_serialize(io)
        @read_max_id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class UnpinAllMessages < TLRequest
      getter constructor_id : UInt32 = 0xF025BC8B_u32
      class_getter constructor_id : UInt32 = 0xF025BC8B_u32

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
        Messages::TypeAffectedHistory
      end
    end

    class DeleteChat < TLRequest
      getter constructor_id : UInt32 = 0x5BD0EE50_u32
      class_getter constructor_id : UInt32 = 0x5BD0EE50_u32

      getter chat_id : Int64

      def initialize(
        chat_id : Int64
      )
        @chat_id = chat_id
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @chat_id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class DeletePhoneCallHistory < TLRequest
      getter constructor_id : UInt32 = 0xF9CBE409_u32
      class_getter constructor_id : UInt32 = 0xF9CBE409_u32

      getter revoke : Bool | Nil

      def initialize(
        revoke : Bool | Nil = nil
      )
        @revoke = revoke
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!revoke.nil? ? 0x01 : 0)
        ).tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeAffectedFoundMessages
      end
    end

    class CheckHistoryImport < TLRequest
      getter constructor_id : UInt32 = 0x43FE19F3_u32
      class_getter constructor_id : UInt32 = 0x43FE19F3_u32

      getter import_head : Bytes

      def initialize(
        import_head : Bytes | String | IO
      )
        @import_head = TL::Utils.parse_bytes!(import_head)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @import_head.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeHistoryImportParsed
      end
    end

    class InitHistoryImport < TLRequest
      getter constructor_id : UInt32 = 0x34090C3B_u32
      class_getter constructor_id : UInt32 = 0x34090C3B_u32

      getter peer : Root::TypeInputPeer
      getter file : Root::TypeInputFile
      getter media_count : Int32

      def initialize(
        peer : Root::TypeInputPeer,
        file : Root::TypeInputFile,
        media_count : Int32
      )
        @peer = peer
        @file = file
        @media_count = TL::Utils.parse_int!(media_count, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @file.tl_serialize(io)
        @media_count.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeHistoryImport
      end
    end

    class UploadImportedMedia < TLRequest
      getter constructor_id : UInt32 = 0x2A862092_u32
      class_getter constructor_id : UInt32 = 0x2A862092_u32

      getter peer : Root::TypeInputPeer
      getter import_id : Int64
      getter file_name : Bytes
      getter media : Root::TypeInputMedia

      def initialize(
        peer : Root::TypeInputPeer,
        import_id : Int64,
        file_name : Bytes | String | IO,
        media : Root::TypeInputMedia
      )
        @peer = peer
        @import_id = import_id
        @file_name = TL::Utils.parse_bytes!(file_name)
        @media = media
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @import_id.tl_serialize(io)
        @file_name.tl_serialize(io)
        @media.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeMessageMedia
      end
    end

    class StartHistoryImport < TLRequest
      getter constructor_id : UInt32 = 0xB43DF344_u32
      class_getter constructor_id : UInt32 = 0xB43DF344_u32

      getter peer : Root::TypeInputPeer
      getter import_id : Int64

      def initialize(
        peer : Root::TypeInputPeer,
        import_id : Int64
      )
        @peer = peer
        @import_id = import_id
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @import_id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class GetExportedChatInvites < TLRequest
      getter constructor_id : UInt32 = 0xA2B5A3F6_u32
      class_getter constructor_id : UInt32 = 0xA2B5A3F6_u32

      getter peer : Root::TypeInputPeer
      getter admin_id : Root::TypeInputUser
      getter limit : Int32
      getter revoked : Bool | Nil
      getter offset_date : Int32 | Nil
      getter offset_link : Bytes | Nil

      def initialize(
        peer : Root::TypeInputPeer,
        admin_id : Root::TypeInputUser,
        limit : Int32,
        revoked : Bool | Nil = nil,
        offset_date : Int32 | Nil = nil,
        offset_link : Bytes | Nil = nil
      )
        @peer = peer
        @admin_id = admin_id
        @limit = TL::Utils.parse_int!(limit, Int32)
        @revoked = revoked
        @offset_date = TL::Utils.parse_int(offset_date, Int32)
        @offset_link = TL::Utils.parse_bytes(offset_link)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!revoked.nil? ? 0x08 : 0) |
            (!offset_date.nil? ? 0x04 : 0) |
            (!offset_link.nil? ? 0x04 : 0)
        ).tl_serialize(io)
        @peer.tl_serialize(io)
        @admin_id.tl_serialize(io)
        @offset_date.tl_serialize(io) unless @offset_date.nil?
        @offset_link.tl_serialize(io) unless @offset_link.nil?
        @limit.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeExportedChatInvites
      end
    end

    class GetExportedChatInvite < TLRequest
      getter constructor_id : UInt32 = 0x73746F5C_u32
      class_getter constructor_id : UInt32 = 0x73746F5C_u32

      getter peer : Root::TypeInputPeer
      getter link : Bytes

      def initialize(
        peer : Root::TypeInputPeer,
        link : Bytes | String | IO
      )
        @peer = peer
        @link = TL::Utils.parse_bytes!(link)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @link.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeExportedChatInvite
      end
    end

    class EditExportedChatInvite < TLRequest
      getter constructor_id : UInt32 = 0xBDCA2F75_u32
      class_getter constructor_id : UInt32 = 0xBDCA2F75_u32

      getter peer : Root::TypeInputPeer
      getter link : Bytes
      getter revoked : Bool | Nil
      getter expire_date : Int32 | Nil
      getter usage_limit : Int32 | Nil
      getter request_needed : Bool | Nil
      getter title : Bytes | Nil

      def initialize(
        peer : Root::TypeInputPeer,
        link : Bytes | String | IO,
        revoked : Bool | Nil = nil,
        expire_date : Int32 | Nil = nil,
        usage_limit : Int32 | Nil = nil,
        request_needed : Bool | Nil = nil,
        title : Bytes | Nil = nil
      )
        @peer = peer
        @link = TL::Utils.parse_bytes!(link)
        @revoked = revoked
        @expire_date = TL::Utils.parse_int(expire_date, Int32)
        @usage_limit = TL::Utils.parse_int(usage_limit, Int32)
        @request_needed = request_needed
        @title = TL::Utils.parse_bytes(title)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!revoked.nil? ? 0x04 : 0) |
            (!expire_date.nil? ? 0x01 : 0) |
            (!usage_limit.nil? ? 0x02 : 0) |
            (!request_needed.nil? ? 0x08 : 0) |
            (!title.nil? ? 0x10 : 0)
        ).tl_serialize(io)
        @peer.tl_serialize(io)
        @link.tl_serialize(io)
        @expire_date.tl_serialize(io) unless @expire_date.nil?
        @usage_limit.tl_serialize(io) unless @usage_limit.nil?
        @request_needed.tl_serialize(io) unless @request_needed.nil?
        @title.tl_serialize(io) unless @title.nil?
      end

      def self.return_type : Deserializable
        Messages::TypeExportedChatInvite
      end
    end

    class DeleteRevokedExportedChatInvites < TLRequest
      getter constructor_id : UInt32 = 0x56987BD5_u32
      class_getter constructor_id : UInt32 = 0x56987BD5_u32

      getter peer : Root::TypeInputPeer
      getter admin_id : Root::TypeInputUser

      def initialize(
        peer : Root::TypeInputPeer,
        admin_id : Root::TypeInputUser
      )
        @peer = peer
        @admin_id = admin_id
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @admin_id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class DeleteExportedChatInvite < TLRequest
      getter constructor_id : UInt32 = 0xD464A42B_u32
      class_getter constructor_id : UInt32 = 0xD464A42B_u32

      getter peer : Root::TypeInputPeer
      getter link : Bytes

      def initialize(
        peer : Root::TypeInputPeer,
        link : Bytes | String | IO
      )
        @peer = peer
        @link = TL::Utils.parse_bytes!(link)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @link.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class GetAdminsWithInvites < TLRequest
      getter constructor_id : UInt32 = 0x3920E6EF_u32
      class_getter constructor_id : UInt32 = 0x3920E6EF_u32

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
        Messages::TypeChatAdminsWithInvites
      end
    end

    class GetChatInviteImporters < TLRequest
      getter constructor_id : UInt32 = 0xDF04DD4E_u32
      class_getter constructor_id : UInt32 = 0xDF04DD4E_u32

      getter peer : Root::TypeInputPeer
      getter offset_date : Int32
      getter offset_user : Root::TypeInputUser
      getter limit : Int32
      getter requested : Bool | Nil
      getter link : Bytes | Nil
      getter q : Bytes | Nil

      def initialize(
        peer : Root::TypeInputPeer,
        offset_date : Int32,
        offset_user : Root::TypeInputUser,
        limit : Int32,
        requested : Bool | Nil = nil,
        link : Bytes | Nil = nil,
        q : Bytes | Nil = nil
      )
        @peer = peer
        @offset_date = TL::Utils.parse_int!(offset_date, Int32)
        @offset_user = offset_user
        @limit = TL::Utils.parse_int!(limit, Int32)
        @requested = requested
        @link = TL::Utils.parse_bytes(link)
        @q = TL::Utils.parse_bytes(q)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!requested.nil? ? 0x01 : 0) |
            (!link.nil? ? 0x02 : 0) |
            (!q.nil? ? 0x04 : 0)
        ).tl_serialize(io)
        @peer.tl_serialize(io)
        @link.tl_serialize(io) unless @link.nil?
        @q.tl_serialize(io) unless @q.nil?
        @offset_date.tl_serialize(io)
        @offset_user.tl_serialize(io)
        @limit.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeChatInviteImporters
      end
    end

    class SetHistoryTTL < TLRequest
      getter constructor_id : UInt32 = 0xB80E5FE4_u32
      class_getter constructor_id : UInt32 = 0xB80E5FE4_u32

      getter peer : Root::TypeInputPeer
      getter period : Int32

      def initialize(
        peer : Root::TypeInputPeer,
        period : Int32
      )
        @peer = peer
        @period = TL::Utils.parse_int!(period, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @period.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class CheckHistoryImportPeer < TLRequest
      getter constructor_id : UInt32 = 0x5DC60F03_u32
      class_getter constructor_id : UInt32 = 0x5DC60F03_u32

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
        Messages::TypeCheckedHistoryImportPeer
      end
    end

    class SetChatTheme < TLRequest
      getter constructor_id : UInt32 = 0xE63BE13F_u32
      class_getter constructor_id : UInt32 = 0xE63BE13F_u32

      getter peer : Root::TypeInputPeer
      getter emoticon : Bytes

      def initialize(
        peer : Root::TypeInputPeer,
        emoticon : Bytes | String | IO
      )
        @peer = peer
        @emoticon = TL::Utils.parse_bytes!(emoticon)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @emoticon.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class GetMessageReadParticipants < TLRequest
      getter constructor_id : UInt32 = 0x2C6F97B7_u32
      class_getter constructor_id : UInt32 = 0x2C6F97B7_u32

      getter peer : Root::TypeInputPeer
      getter msg_id : Int32

      def initialize(
        peer : Root::TypeInputPeer,
        msg_id : Int32
      )
        @peer = peer
        @msg_id = TL::Utils.parse_int!(msg_id, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @msg_id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Array(Int64)
      end
    end

    class GetSearchResultsCalendar < TLRequest
      getter constructor_id : UInt32 = 0x49F0BDE9_u32
      class_getter constructor_id : UInt32 = 0x49F0BDE9_u32

      getter peer : Root::TypeInputPeer
      getter filter : Root::TypeMessagesFilter
      getter offset_id : Int32
      getter offset_date : Int32

      def initialize(
        peer : Root::TypeInputPeer,
        filter : Root::TypeMessagesFilter,
        offset_id : Int32,
        offset_date : Int32
      )
        @peer = peer
        @filter = filter
        @offset_id = TL::Utils.parse_int!(offset_id, Int32)
        @offset_date = TL::Utils.parse_int!(offset_date, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @filter.tl_serialize(io)
        @offset_id.tl_serialize(io)
        @offset_date.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeSearchResultsCalendar
      end
    end

    class GetSearchResultsPositions < TLRequest
      getter constructor_id : UInt32 = 0x6E9583A3_u32
      class_getter constructor_id : UInt32 = 0x6E9583A3_u32

      getter peer : Root::TypeInputPeer
      getter filter : Root::TypeMessagesFilter
      getter offset_id : Int32
      getter limit : Int32

      def initialize(
        peer : Root::TypeInputPeer,
        filter : Root::TypeMessagesFilter,
        offset_id : Int32,
        limit : Int32
      )
        @peer = peer
        @filter = filter
        @offset_id = TL::Utils.parse_int!(offset_id, Int32)
        @limit = TL::Utils.parse_int!(limit, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @filter.tl_serialize(io)
        @offset_id.tl_serialize(io)
        @limit.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Messages::TypeSearchResultsPositions
      end
    end

    class HideChatJoinRequest < TLRequest
      getter constructor_id : UInt32 = 0x7FE7E815_u32
      class_getter constructor_id : UInt32 = 0x7FE7E815_u32

      getter peer : Root::TypeInputPeer
      getter user_id : Root::TypeInputUser
      getter approved : Bool | Nil

      def initialize(
        peer : Root::TypeInputPeer,
        user_id : Root::TypeInputUser,
        approved : Bool | Nil = nil
      )
        @peer = peer
        @user_id = user_id
        @approved = approved
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!approved.nil? ? 0x01 : 0)
        ).tl_serialize(io)
        @peer.tl_serialize(io)
        @user_id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class HideAllChatJoinRequests < TLRequest
      getter constructor_id : UInt32 = 0xE085F4EA_u32
      class_getter constructor_id : UInt32 = 0xE085F4EA_u32

      getter peer : Root::TypeInputPeer
      getter approved : Bool | Nil
      getter link : Bytes | Nil

      def initialize(
        peer : Root::TypeInputPeer,
        approved : Bool | Nil = nil,
        link : Bytes | Nil = nil
      )
        @peer = peer
        @approved = approved
        @link = TL::Utils.parse_bytes(link)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!approved.nil? ? 0x01 : 0) |
            (!link.nil? ? 0x02 : 0)
        ).tl_serialize(io)
        @peer.tl_serialize(io)
        @link.tl_serialize(io) unless @link.nil?
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class ToggleNoForwards < TLRequest
      getter constructor_id : UInt32 = 0xB11EAFA2_u32
      class_getter constructor_id : UInt32 = 0xB11EAFA2_u32

      getter peer : Root::TypeInputPeer
      getter enabled : Bool

      def initialize(
        peer : Root::TypeInputPeer,
        enabled : Bool
      )
        @peer = peer
        @enabled = enabled
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @enabled.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class SaveDefaultSendAs < TLRequest
      getter constructor_id : UInt32 = 0xCCFDDF96_u32
      class_getter constructor_id : UInt32 = 0xCCFDDF96_u32

      getter peer : Root::TypeInputPeer
      getter send_as : Root::TypeInputPeer

      def initialize(
        peer : Root::TypeInputPeer,
        send_as : Root::TypeInputPeer
      )
        @peer = peer
        @send_as = send_as
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @peer.tl_serialize(io)
        @send_as.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end
  end
end
