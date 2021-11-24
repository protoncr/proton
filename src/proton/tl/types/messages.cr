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

# Required modules for this namespace
require "./updates"

module Proton::TL
  module Types
    module Messages
      abstract class TypeDialogs < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x15BA6C40
            Dialogs.tl_deserialize(io, bare)
          when 0x71E094F3
            DialogsSlice.tl_deserialize(io, bare)
          when 0xF0E3E596
            DialogsNotModified.tl_deserialize(io, bare)
          when 0xA0F4CB4F
            GetDialogs.tl_deserialize(io, bare)
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
          when 0x8C718E87
            Messages.tl_deserialize(io, bare)
          when 0x3A54685E
            MessagesSlice.tl_deserialize(io, bare)
          when 0x64479808
            ChannelMessages.tl_deserialize(io, bare)
          when 0x74535F21
            MessagesNotModified.tl_deserialize(io, bare)
          when 0x63C66506
            GetMessages.tl_deserialize(io, bare)
          when 0x4423E6C5
            GetHistory.tl_deserialize(io, bare)
          when 0xA0FDA762
            Search.tl_deserialize(io, bare)
          when 0x4BC6589A
            SearchGlobal.tl_deserialize(io, bare)
          when 0x46578472
            GetUnreadMentions.tl_deserialize(io, bare)
          when 0x702A40E0
            GetRecentLocations.tl_deserialize(io, bare)
          when 0xF516760B
            GetScheduledHistory.tl_deserialize(io, bare)
          when 0xBDBB0464
            GetScheduledMessages.tl_deserialize(io, bare)
          when 0x22DDD30C
            GetReplies.tl_deserialize(io, bare)
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
          when 0x64FF9FD5
            Chats.tl_deserialize(io, bare)
          when 0x9CD81144
            ChatsSlice.tl_deserialize(io, bare)
          when 0x49E9528F
            GetChats.tl_deserialize(io, bare)
          when 0xE40CA104
            GetCommonChats.tl_deserialize(io, bare)
          when 0x875F74BE
            GetAllChats.tl_deserialize(io, bare)
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
          when 0xE5D7D19C
            ChatFull.tl_deserialize(io, bare)
          when 0xAEB00B34
            GetFullChat.tl_deserialize(io, bare)
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
          when 0xB45C69D1
            AffectedHistory.tl_deserialize(io, bare)
          when 0x1C015B09
            DeleteHistory.tl_deserialize(io, bare)
          when 0x0F0189D3
            ReadMentions.tl_deserialize(io, bare)
          when 0xF025BC8B
            UnpinAllMessages.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeDhConfig < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0xC0E24635
            DhConfigNotModified.tl_deserialize(io, bare)
          when 0x2C221EDD
            DhConfig.tl_deserialize(io, bare)
          when 0x26CF8950
            GetDhConfig.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeSentEncryptedMessage < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x560F8935
            SentEncryptedMessage.tl_deserialize(io, bare)
          when 0x9493FF32
            SentEncryptedFile.tl_deserialize(io, bare)
          when 0x44FA7A15
            SendEncrypted.tl_deserialize(io, bare)
          when 0x5559481D
            SendEncryptedFile.tl_deserialize(io, bare)
          when 0x32D439A4
            SendEncryptedService.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeStickers < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0xF1749A22
            StickersNotModified.tl_deserialize(io, bare)
          when 0x30A6EC7E
            Stickers.tl_deserialize(io, bare)
          when 0xD5A5D3A1
            GetStickers.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeAllStickers < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0xE86602C3
            AllStickersNotModified.tl_deserialize(io, bare)
          when 0xCDBBCEBB
            AllStickers.tl_deserialize(io, bare)
          when 0xB8A0A1A8
            GetAllStickers.tl_deserialize(io, bare)
          when 0x640F82B8
            GetMaskStickers.tl_deserialize(io, bare)
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
          when 0x84D19185
            AffectedMessages.tl_deserialize(io, bare)
          when 0x0E306D3A
            ReadHistory.tl_deserialize(io, bare)
          when 0xE58E95D2
            DeleteMessages.tl_deserialize(io, bare)
          when 0x36A73F77
            ReadMessageContents.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeStickerSet < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0xB60A24A6
            StickerSet.tl_deserialize(io, bare)
          when 0x2619A90E
            GetStickerSet.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeSavedGifs < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0xE8025CA2
            SavedGifsNotModified.tl_deserialize(io, bare)
          when 0x84A02A0D
            SavedGifs.tl_deserialize(io, bare)
          when 0x5CF09635
            GetSavedGifs.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeBotResults < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x947CA848
            BotResults.tl_deserialize(io, bare)
          when 0x514E999D
            GetInlineBotResults.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeBotCallbackAnswer < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x36585EA4
            BotCallbackAnswer.tl_deserialize(io, bare)
          when 0x9342CA07
            GetBotCallbackAnswer.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeMessageEditData < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x26B5DDE6
            MessageEditData.tl_deserialize(io, bare)
          when 0xFDA68D36
            GetMessageEditData.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypePeerDialogs < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x3371C354
            PeerDialogs.tl_deserialize(io, bare)
          when 0xE470BCFD
            GetPeerDialogs.tl_deserialize(io, bare)
          when 0xD6B94DF2
            GetPinnedDialogs.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeFeaturedStickers < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0xC6DC0C66
            FeaturedStickersNotModified.tl_deserialize(io, bare)
          when 0x84C02310
            FeaturedStickers.tl_deserialize(io, bare)
          when 0x64780B14
            GetFeaturedStickers.tl_deserialize(io, bare)
          when 0x7ED094A1
            GetOldFeaturedStickers.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeRecentStickers < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x0B17F890
            RecentStickersNotModified.tl_deserialize(io, bare)
          when 0x88D37C56
            RecentStickers.tl_deserialize(io, bare)
          when 0x9DA9403B
            GetRecentStickers.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeArchivedStickers < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x4FCBA9C8
            ArchivedStickers.tl_deserialize(io, bare)
          when 0x57F17692
            GetArchivedStickers.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeStickerSetInstallResult < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x38641628
            StickerSetInstallResultSuccess.tl_deserialize(io, bare)
          when 0x35E410A8
            StickerSetInstallResultArchive.tl_deserialize(io, bare)
          when 0xC78FE460
            InstallStickerSet.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeHighScores < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x9A3BFD99
            HighScores.tl_deserialize(io, bare)
          when 0xE822649D
            GetGameHighScores.tl_deserialize(io, bare)
          when 0x0F635E1B
            GetInlineGameHighScores.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeFavedStickers < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x9E8FA6D3
            FavedStickersNotModified.tl_deserialize(io, bare)
          when 0x2CB51097
            FavedStickers.tl_deserialize(io, bare)
          when 0x04F1AAA9
            GetFavedStickers.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeFoundStickerSets < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x0D54B65D
            FoundStickerSetsNotModified.tl_deserialize(io, bare)
          when 0x8AF09DD2
            FoundStickerSets.tl_deserialize(io, bare)
          when 0x35705B8A
            SearchStickerSets.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeSearchCounter < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
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
          constructor_id = Int32.tl_deserialize(io)
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
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x0823F649
            VotesList.tl_deserialize(io, bare)
          when 0xB86E380E
            GetPollVotes.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeMessageViews < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0xB6C4F543
            MessageViews.tl_deserialize(io, bare)
          when 0x5784D3E1
            GetMessagesViews.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeDiscussionMessage < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0xA6341782
            DiscussionMessage.tl_deserialize(io, bare)
          when 0x446972FD
            GetDiscussionMessage.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeHistoryImport < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x1662AF0B
            HistoryImport.tl_deserialize(io, bare)
          when 0x34090C3B
            InitHistoryImport.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeHistoryImportParsed < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x5E0FB7B9
            HistoryImportParsed.tl_deserialize(io, bare)
          when 0x43FE19F3
            CheckHistoryImport.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeAffectedFoundMessages < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0xEF8D3E6C
            AffectedFoundMessages.tl_deserialize(io, bare)
          when 0xF9CBE409
            DeletePhoneCallHistory.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeExportedChatInvites < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0xBDC62DCC
            ExportedChatInvites.tl_deserialize(io, bare)
          when 0xA2B5A3F6
            GetExportedChatInvites.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeExportedChatInvite < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x1871BE50
            ExportedChatInvite.tl_deserialize(io, bare)
          when 0x222600EF
            ExportedChatInviteReplaced.tl_deserialize(io, bare)
          when 0x14B9BCD7
            ExportChatInvite.tl_deserialize(io, bare)
          when 0x73746F5C
            GetExportedChatInvite.tl_deserialize(io, bare)
          when 0x02E4FFBE
            EditExportedChatInvite.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeChatInviteImporters < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x81B6B00A
            ChatInviteImporters.tl_deserialize(io, bare)
          when 0x26FB7289
            GetChatInviteImporters.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeChatAdminsWithInvites < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0xB69B72D7
            ChatAdminsWithInvites.tl_deserialize(io, bare)
          when 0x3920E6EF
            GetAdminsWithInvites.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeCheckedHistoryImportPeer < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0xA24DE717
            CheckedHistoryImportPeer.tl_deserialize(io, bare)
          when 0x5DC60F03
            CheckHistoryImportPeer.tl_deserialize(io, bare)
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
          when 0x65A4C7D5
            SponsoredMessages.tl_deserialize(io, bare)
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
          when 0x520C3870
            SendMessage.tl_deserialize(io, bare)
          when 0x3491EBA9
            SendMedia.tl_deserialize(io, bare)
          when 0xD9FEE60E
            ForwardMessages.tl_deserialize(io, bare)
          when 0x73783FFD
            EditChatTitle.tl_deserialize(io, bare)
          when 0x35DDD674
            EditChatPhoto.tl_deserialize(io, bare)
          when 0xF24753E3
            AddChatUser.tl_deserialize(io, bare)
          when 0xA2185CAB
            DeleteChatUser.tl_deserialize(io, bare)
          when 0x09CB126E
            CreateChat.tl_deserialize(io, bare)
          when 0x6C50051C
            ImportChatInvite.tl_deserialize(io, bare)
          when 0xE6DF7378
            StartBot.tl_deserialize(io, bare)
          when 0xA2875319
            MigrateChat.tl_deserialize(io, bare)
          when 0x220815B0
            SendInlineBotResult.tl_deserialize(io, bare)
          when 0x48F71778
            EditMessage.tl_deserialize(io, bare)
          when 0x6A3F8D65
            GetAllDrafts.tl_deserialize(io, bare)
          when 0x8EF8ECC0
            SetGameScore.tl_deserialize(io, bare)
          when 0xC97DF020
            SendScreenshotNotification.tl_deserialize(io, bare)
          when 0xCC0110CB
            SendMultiMedia.tl_deserialize(io, bare)
          when 0xD2AAF7EC
            UpdatePinnedMessage.tl_deserialize(io, bare)
          when 0x10EA6184
            SendVote.tl_deserialize(io, bare)
          when 0x73BB643B
            GetPollResults.tl_deserialize(io, bare)
          when 0xA5866B41
            EditChatDefaultBannedRights.tl_deserialize(io, bare)
          when 0xBD38850A
            SendScheduledMessages.tl_deserialize(io, bare)
          when 0x59AE2B16
            DeleteScheduledMessages.tl_deserialize(io, bare)
          when 0xB80E5FE4
            SetHistoryTTL.tl_deserialize(io, bare)
          when 0xE63BE13F
            SetChatTheme.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypePeerSettings < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x3672E09C
            GetPeerSettings.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeEncryptedChat < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0xF64DAF43
            RequestEncryption.tl_deserialize(io, bare)
          when 0x3DBC0415
            AcceptEncryption.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeMessageMedia < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x8B68B0CC
            GetWebPagePreview.tl_deserialize(io, bare)
          when 0x519BC2B1
            UploadMedia.tl_deserialize(io, bare)
          when 0x2A862092
            UploadImportedMedia.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeChatInvite < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x3EADB1BB
            CheckChatInvite.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeDocument < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x338E2464
            GetDocumentByHash.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeWebPage < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x32CA8F91
            GetWebPage.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeEncryptedFile < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x5057C497
            UploadEncryptedFile.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeChatOnlines < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x6E2BE050
            GetOnlines.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeStatsURL < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x812C2AE6
            GetStatsURL.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeEmojiKeywordsDifference < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x35A0E062
            GetEmojiKeywords.tl_deserialize(io, bare)
          when 0x1508B6AF
            GetEmojiKeywordsDifference.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeEmojiURL < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0xD5B10C26
            GetEmojiURL.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeUrlAuthResult < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x198FB446
            RequestUrlAuth.tl_deserialize(io, bare)
          when 0xB12C7125
            AcceptUrlAuth.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      class Dialogs < TypeDialogs
        CONSTRUCTOR_ID = 0x15BA6C40

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @dialogs.tl_serialize(io, false)
          @messages.tl_serialize(io, false)
          @chats.tl_serialize(io, false)
          @users.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            dialogs = Array(Root::TypeDialog).tl_deserialize(io, false),
            messages = Array(Root::TypeMessage).tl_deserialize(io, false),
            chats = Array(Root::TypeChat).tl_deserialize(io, false),
            users = Array(Root::TypeUser).tl_deserialize(io, false),
          )
        end
      end

      class DialogsSlice < TypeDialogs
        CONSTRUCTOR_ID = 0x71E094F3

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
          @count = count
          @dialogs = dialogs
          @messages = messages
          @chats = chats
          @users = users
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @count.tl_serialize(io, true)
          @dialogs.tl_serialize(io, false)
          @messages.tl_serialize(io, false)
          @chats.tl_serialize(io, false)
          @users.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            count = Int32.tl_deserialize(io, true),
            dialogs = Array(Root::TypeDialog).tl_deserialize(io, false),
            messages = Array(Root::TypeMessage).tl_deserialize(io, false),
            chats = Array(Root::TypeChat).tl_deserialize(io, false),
            users = Array(Root::TypeUser).tl_deserialize(io, false),
          )
        end
      end

      class DialogsNotModified < TypeDialogs
        CONSTRUCTOR_ID = 0xF0E3E596

        getter count : Int32

        def initialize(
          count : Int32
        )
          @count = count
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @count.tl_serialize(io, true)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            count = Int32.tl_deserialize(io, true),
          )
        end
      end

      class Messages < TypeMessages
        CONSTRUCTOR_ID = 0x8C718E87

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @messages.tl_serialize(io, false)
          @chats.tl_serialize(io, false)
          @users.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            messages = Array(Root::TypeMessage).tl_deserialize(io, false),
            chats = Array(Root::TypeChat).tl_deserialize(io, false),
            users = Array(Root::TypeUser).tl_deserialize(io, false),
          )
        end
      end

      class MessagesSlice < TypeMessages
        CONSTRUCTOR_ID = 0x3A54685E

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
          @count = count
          @messages = messages
          @chats = chats
          @users = users
          @inexact = inexact
          @next_rate = next_rate
          @offset_id_offset = offset_id_offset
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!inexact.nil? ? 2 : 0) |
              (!next_rate.nil? ? 1 : 0) |
              (!offset_id_offset.nil? ? 4 : 0)
          ).tl_serialize(io)
          @count.tl_serialize(io, true)
          @next_rate.tl_serialize(io, true) unless @next_rate.nil?
          @offset_id_offset.tl_serialize(io, true) unless @offset_id_offset.nil?
          @messages.tl_serialize(io, false)
          @chats.tl_serialize(io, false)
          @users.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          flags = Int32.tl_deserialize(io)
          new(
            count = Int32.tl_deserialize(io, true),
            messages = Array(Root::TypeMessage).tl_deserialize(io, false),
            chats = Array(Root::TypeChat).tl_deserialize(io, false),
            users = Array(Root::TypeUser).tl_deserialize(io, false),
            inexact = flags & 2 == 1,
            next_rate = flags & 1 == 1 ? Int32.tl_deserialize(io, true) : nil,
            offset_id_offset = flags & 4 == 1 ? Int32.tl_deserialize(io, true) : nil,
          )
        end
      end

      class ChannelMessages < TypeMessages
        CONSTRUCTOR_ID = 0x64479808

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
          @pts = pts
          @count = count
          @messages = messages
          @chats = chats
          @users = users
          @inexact = inexact
          @offset_id_offset = offset_id_offset
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!inexact.nil? ? 2 : 0) |
              (!offset_id_offset.nil? ? 4 : 0)
          ).tl_serialize(io)
          @pts.tl_serialize(io, true)
          @count.tl_serialize(io, true)
          @offset_id_offset.tl_serialize(io, true) unless @offset_id_offset.nil?
          @messages.tl_serialize(io, false)
          @chats.tl_serialize(io, false)
          @users.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          flags = Int32.tl_deserialize(io)
          new(
            pts = Int32.tl_deserialize(io, true),
            count = Int32.tl_deserialize(io, true),
            messages = Array(Root::TypeMessage).tl_deserialize(io, false),
            chats = Array(Root::TypeChat).tl_deserialize(io, false),
            users = Array(Root::TypeUser).tl_deserialize(io, false),
            inexact = flags & 2 == 1,
            offset_id_offset = flags & 4 == 1 ? Int32.tl_deserialize(io, true) : nil,
          )
        end
      end

      class MessagesNotModified < TypeMessages
        CONSTRUCTOR_ID = 0x74535F21

        getter count : Int32

        def initialize(
          count : Int32
        )
          @count = count
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @count.tl_serialize(io, true)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            count = Int32.tl_deserialize(io, true),
          )
        end
      end

      class Chats < TypeChats
        CONSTRUCTOR_ID = 0x64FF9FD5

        getter chats : Array(Root::TypeChat)

        def initialize(
          chats : Array(Root::TypeChat)
        )
          @chats = chats
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @chats.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            chats = Array(Root::TypeChat).tl_deserialize(io, false),
          )
        end
      end

      class ChatsSlice < TypeChats
        CONSTRUCTOR_ID = 0x9CD81144

        getter count : Int32
        getter chats : Array(Root::TypeChat)

        def initialize(
          count : Int32,
          chats : Array(Root::TypeChat)
        )
          @count = count
          @chats = chats
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @count.tl_serialize(io, true)
          @chats.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            count = Int32.tl_deserialize(io, true),
            chats = Array(Root::TypeChat).tl_deserialize(io, false),
          )
        end
      end

      class ChatFull < TypeChatFull
        CONSTRUCTOR_ID = 0xE5D7D19C

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @full_chat.tl_serialize(io, false)
          @chats.tl_serialize(io, false)
          @users.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            full_chat = Root::TypeChatFull.tl_deserialize(io, false),
            chats = Array(Root::TypeChat).tl_deserialize(io, false),
            users = Array(Root::TypeUser).tl_deserialize(io, false),
          )
        end
      end

      class AffectedHistory < TypeAffectedHistory
        CONSTRUCTOR_ID = 0xB45C69D1

        getter pts : Int32
        getter pts_count : Int32
        getter offset : Int32

        def initialize(
          pts : Int32,
          pts_count : Int32,
          offset : Int32
        )
          @pts = pts
          @pts_count = pts_count
          @offset = offset
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @pts.tl_serialize(io, true)
          @pts_count.tl_serialize(io, true)
          @offset.tl_serialize(io, true)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            pts = Int32.tl_deserialize(io, true),
            pts_count = Int32.tl_deserialize(io, true),
            offset = Int32.tl_deserialize(io, true),
          )
        end
      end

      class DhConfigNotModified < TypeDhConfig
        CONSTRUCTOR_ID = 0xC0E24635

        getter random : Bytes

        def initialize(
          random : Bytes | String | IO
        )
          @random = TL::Utils.parse_bytes!(random)
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @random.tl_serialize(io, true)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            random = Bytes.tl_deserialize(io, true),
          )
        end
      end

      class DhConfig < TypeDhConfig
        CONSTRUCTOR_ID = 0x2C221EDD

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
          @g = g
          @p = TL::Utils.parse_bytes!(p)
          @version = version
          @random = TL::Utils.parse_bytes!(random)
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @g.tl_serialize(io, true)
          @p.tl_serialize(io, true)
          @version.tl_serialize(io, true)
          @random.tl_serialize(io, true)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            g = Int32.tl_deserialize(io, true),
            p = Bytes.tl_deserialize(io, true),
            version = Int32.tl_deserialize(io, true),
            random = Bytes.tl_deserialize(io, true),
          )
        end
      end

      class SentEncryptedMessage < TypeSentEncryptedMessage
        CONSTRUCTOR_ID = 0x560F8935

        getter date : Int32

        def initialize(
          date : Int32
        )
          @date = date
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @date.tl_serialize(io, true)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            date = Int32.tl_deserialize(io, true),
          )
        end
      end

      class SentEncryptedFile < TypeSentEncryptedMessage
        CONSTRUCTOR_ID = 0x9493FF32

        getter date : Int32
        getter file : Root::TypeEncryptedFile

        def initialize(
          date : Int32,
          file : Root::TypeEncryptedFile
        )
          @date = date
          @file = file
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @date.tl_serialize(io, true)
          @file.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            date = Int32.tl_deserialize(io, true),
            file = Root::TypeEncryptedFile.tl_deserialize(io, false),
          )
        end
      end

      class StickersNotModified < TypeStickers
        CONSTRUCTOR_ID = 0xF1749A22

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
        end

        def self.tl_deserialize(io : IO, bare = false)
          new()
        end
      end

      class Stickers < TypeStickers
        CONSTRUCTOR_ID = 0x30A6EC7E

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @hash.tl_serialize(io, true)
          @stickers.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            hash = Int64.tl_deserialize(io, true),
            stickers = Array(Root::TypeDocument).tl_deserialize(io, false),
          )
        end
      end

      class AllStickersNotModified < TypeAllStickers
        CONSTRUCTOR_ID = 0xE86602C3

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
        end

        def self.tl_deserialize(io : IO, bare = false)
          new()
        end
      end

      class AllStickers < TypeAllStickers
        CONSTRUCTOR_ID = 0xCDBBCEBB

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @hash.tl_serialize(io, true)
          @sets.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            hash = Int64.tl_deserialize(io, true),
            sets = Array(Root::TypeStickerSet).tl_deserialize(io, false),
          )
        end
      end

      class AffectedMessages < TypeAffectedMessages
        CONSTRUCTOR_ID = 0x84D19185

        getter pts : Int32
        getter pts_count : Int32

        def initialize(
          pts : Int32,
          pts_count : Int32
        )
          @pts = pts
          @pts_count = pts_count
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @pts.tl_serialize(io, true)
          @pts_count.tl_serialize(io, true)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            pts = Int32.tl_deserialize(io, true),
            pts_count = Int32.tl_deserialize(io, true),
          )
        end
      end

      class StickerSet < TypeStickerSet
        CONSTRUCTOR_ID = 0xB60A24A6

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @set.tl_serialize(io, false)
          @packs.tl_serialize(io, false)
          @documents.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            set = Root::TypeStickerSet.tl_deserialize(io, false),
            packs = Array(Root::TypeStickerPack).tl_deserialize(io, false),
            documents = Array(Root::TypeDocument).tl_deserialize(io, false),
          )
        end
      end

      class SavedGifsNotModified < TypeSavedGifs
        CONSTRUCTOR_ID = 0xE8025CA2

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
        end

        def self.tl_deserialize(io : IO, bare = false)
          new()
        end
      end

      class SavedGifs < TypeSavedGifs
        CONSTRUCTOR_ID = 0x84A02A0D

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @hash.tl_serialize(io, true)
          @gifs.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            hash = Int64.tl_deserialize(io, true),
            gifs = Array(Root::TypeDocument).tl_deserialize(io, false),
          )
        end
      end

      class BotResults < TypeBotResults
        CONSTRUCTOR_ID = 0x947CA848

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
          @cache_time = cache_time
          @users = users
          @gallery = gallery
          @next_offset = next_offset
          @switch_pm = switch_pm
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!gallery.nil? ? 1 : 0) |
              (!next_offset.nil? ? 2 : 0) |
              (!switch_pm.nil? ? 4 : 0)
          ).tl_serialize(io)
          @query_id.tl_serialize(io, true)
          @next_offset.tl_serialize(io, true) unless @next_offset.nil?
          @switch_pm.tl_serialize(io, false) unless @switch_pm.nil?
          @results.tl_serialize(io, false)
          @cache_time.tl_serialize(io, true)
          @users.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          flags = Int32.tl_deserialize(io)
          new(
            query_id = Int64.tl_deserialize(io, true),
            results = Array(Root::TypeBotInlineResult).tl_deserialize(io, false),
            cache_time = Int32.tl_deserialize(io, true),
            users = Array(Root::TypeUser).tl_deserialize(io, false),
            gallery = flags & 1 == 1,
            next_offset = flags & 2 == 1 ? Bytes.tl_deserialize(io, true) : nil,
            switch_pm = flags & 4 == 1 ? Root::TypeInlineBotSwitchPM.tl_deserialize(io, false) : nil,
          )
        end
      end

      class BotCallbackAnswer < TypeBotCallbackAnswer
        CONSTRUCTOR_ID = 0x36585EA4

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
          @cache_time = cache_time
          @alert = alert
          @has_url = has_url
          @native_ui = native_ui
          @message = message
          @url = url
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!alert.nil? ? 2 : 0) |
              (!has_url.nil? ? 8 : 0) |
              (!native_ui.nil? ? 16 : 0) |
              (!message.nil? ? 1 : 0) |
              (!url.nil? ? 4 : 0)
          ).tl_serialize(io)
          @message.tl_serialize(io, true) unless @message.nil?
          @url.tl_serialize(io, true) unless @url.nil?
          @cache_time.tl_serialize(io, true)
        end

        def self.tl_deserialize(io : IO, bare = false)
          flags = Int32.tl_deserialize(io)
          new(
            cache_time = Int32.tl_deserialize(io, true),
            alert = flags & 2 == 1,
            has_url = flags & 8 == 1,
            native_ui = flags & 16 == 1,
            message = flags & 1 == 1 ? Bytes.tl_deserialize(io, true) : nil,
            url = flags & 4 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          )
        end
      end

      class MessageEditData < TypeMessageEditData
        CONSTRUCTOR_ID = 0x26B5DDE6

        getter caption : Bool | Nil

        def initialize(
          caption : Bool | Nil = nil
        )
          @caption = caption
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!caption.nil? ? 1 : 0)
          ).tl_serialize(io)
        end

        def self.tl_deserialize(io : IO, bare = false)
          flags = Int32.tl_deserialize(io)
          new(
            caption = flags & 1 == 1,
          )
        end
      end

      class PeerDialogs < TypePeerDialogs
        CONSTRUCTOR_ID = 0x3371C354

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @dialogs.tl_serialize(io, false)
          @messages.tl_serialize(io, false)
          @chats.tl_serialize(io, false)
          @users.tl_serialize(io, false)
          @state.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            dialogs = Array(Root::TypeDialog).tl_deserialize(io, false),
            messages = Array(Root::TypeMessage).tl_deserialize(io, false),
            chats = Array(Root::TypeChat).tl_deserialize(io, false),
            users = Array(Root::TypeUser).tl_deserialize(io, false),
            state = Updates::TypeState.tl_deserialize(io, false),
          )
        end
      end

      class FeaturedStickersNotModified < TypeFeaturedStickers
        CONSTRUCTOR_ID = 0xC6DC0C66

        getter count : Int32

        def initialize(
          count : Int32
        )
          @count = count
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @count.tl_serialize(io, true)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            count = Int32.tl_deserialize(io, true),
          )
        end
      end

      class FeaturedStickers < TypeFeaturedStickers
        CONSTRUCTOR_ID = 0x84C02310

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
          @count = count
          @sets = sets
          @unread = unread
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @hash.tl_serialize(io, true)
          @count.tl_serialize(io, true)
          @sets.tl_serialize(io, false)
          @unread.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            hash = Int64.tl_deserialize(io, true),
            count = Int32.tl_deserialize(io, true),
            sets = Array(Root::TypeStickerSetCovered).tl_deserialize(io, false),
            unread = Array(Int64).tl_deserialize(io, false),
          )
        end
      end

      class RecentStickersNotModified < TypeRecentStickers
        CONSTRUCTOR_ID = 0x0B17F890

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
        end

        def self.tl_deserialize(io : IO, bare = false)
          new()
        end
      end

      class RecentStickers < TypeRecentStickers
        CONSTRUCTOR_ID = 0x88D37C56

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @hash.tl_serialize(io, true)
          @packs.tl_serialize(io, false)
          @stickers.tl_serialize(io, false)
          @dates.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            hash = Int64.tl_deserialize(io, true),
            packs = Array(Root::TypeStickerPack).tl_deserialize(io, false),
            stickers = Array(Root::TypeDocument).tl_deserialize(io, false),
            dates = Array(Int32).tl_deserialize(io, false),
          )
        end
      end

      class ArchivedStickers < TypeArchivedStickers
        CONSTRUCTOR_ID = 0x4FCBA9C8

        getter count : Int32
        getter sets : Array(Root::TypeStickerSetCovered)

        def initialize(
          count : Int32,
          sets : Array(Root::TypeStickerSetCovered)
        )
          @count = count
          @sets = sets
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @count.tl_serialize(io, true)
          @sets.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            count = Int32.tl_deserialize(io, true),
            sets = Array(Root::TypeStickerSetCovered).tl_deserialize(io, false),
          )
        end
      end

      class StickerSetInstallResultSuccess < TypeStickerSetInstallResult
        CONSTRUCTOR_ID = 0x38641628

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
        end

        def self.tl_deserialize(io : IO, bare = false)
          new()
        end
      end

      class StickerSetInstallResultArchive < TypeStickerSetInstallResult
        CONSTRUCTOR_ID = 0x35E410A8

        getter sets : Array(Root::TypeStickerSetCovered)

        def initialize(
          sets : Array(Root::TypeStickerSetCovered)
        )
          @sets = sets
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @sets.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            sets = Array(Root::TypeStickerSetCovered).tl_deserialize(io, false),
          )
        end
      end

      class HighScores < TypeHighScores
        CONSTRUCTOR_ID = 0x9A3BFD99

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @scores.tl_serialize(io, false)
          @users.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            scores = Array(Root::TypeHighScore).tl_deserialize(io, false),
            users = Array(Root::TypeUser).tl_deserialize(io, false),
          )
        end
      end

      class FavedStickersNotModified < TypeFavedStickers
        CONSTRUCTOR_ID = 0x9E8FA6D3

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
        end

        def self.tl_deserialize(io : IO, bare = false)
          new()
        end
      end

      class FavedStickers < TypeFavedStickers
        CONSTRUCTOR_ID = 0x2CB51097

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @hash.tl_serialize(io, true)
          @packs.tl_serialize(io, false)
          @stickers.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            hash = Int64.tl_deserialize(io, true),
            packs = Array(Root::TypeStickerPack).tl_deserialize(io, false),
            stickers = Array(Root::TypeDocument).tl_deserialize(io, false),
          )
        end
      end

      class FoundStickerSetsNotModified < TypeFoundStickerSets
        CONSTRUCTOR_ID = 0x0D54B65D

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
        end

        def self.tl_deserialize(io : IO, bare = false)
          new()
        end
      end

      class FoundStickerSets < TypeFoundStickerSets
        CONSTRUCTOR_ID = 0x8AF09DD2

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @hash.tl_serialize(io, true)
          @sets.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            hash = Int64.tl_deserialize(io, true),
            sets = Array(Root::TypeStickerSetCovered).tl_deserialize(io, false),
          )
        end
      end

      class SearchCounter < TypeSearchCounter
        CONSTRUCTOR_ID = 0xE844EBFF

        getter filter : Root::TypeMessagesFilter
        getter count : Int32
        getter inexact : Bool | Nil

        def initialize(
          filter : Root::TypeMessagesFilter,
          count : Int32,
          inexact : Bool | Nil = nil
        )
          @filter = filter
          @count = count
          @inexact = inexact
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!inexact.nil? ? 2 : 0)
          ).tl_serialize(io)
          @filter.tl_serialize(io, false)
          @count.tl_serialize(io, true)
        end

        def self.tl_deserialize(io : IO, bare = false)
          flags = Int32.tl_deserialize(io)
          new(
            filter = Root::TypeMessagesFilter.tl_deserialize(io, false),
            count = Int32.tl_deserialize(io, true),
            inexact = flags & 2 == 1,
          )
        end
      end

      class InactiveChats < TypeInactiveChats
        CONSTRUCTOR_ID = 0xA927FEC5

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @dates.tl_serialize(io, false)
          @chats.tl_serialize(io, false)
          @users.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            dates = Array(Int32).tl_deserialize(io, false),
            chats = Array(Root::TypeChat).tl_deserialize(io, false),
            users = Array(Root::TypeUser).tl_deserialize(io, false),
          )
        end
      end

      class VotesList < TypeVotesList
        CONSTRUCTOR_ID = 0x0823F649

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
          @count = count
          @votes = votes
          @users = users
          @next_offset = next_offset
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!next_offset.nil? ? 1 : 0)
          ).tl_serialize(io)
          @count.tl_serialize(io, true)
          @votes.tl_serialize(io, false)
          @users.tl_serialize(io, false)
          @next_offset.tl_serialize(io, true) unless @next_offset.nil?
        end

        def self.tl_deserialize(io : IO, bare = false)
          flags = Int32.tl_deserialize(io)
          new(
            count = Int32.tl_deserialize(io, true),
            votes = Array(Root::TypeMessageUserVote).tl_deserialize(io, false),
            users = Array(Root::TypeUser).tl_deserialize(io, false),
            next_offset = flags & 1 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          )
        end
      end

      class MessageViews < TypeMessageViews
        CONSTRUCTOR_ID = 0xB6C4F543

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @views.tl_serialize(io, false)
          @chats.tl_serialize(io, false)
          @users.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            views = Array(Root::TypeMessageViews).tl_deserialize(io, false),
            chats = Array(Root::TypeChat).tl_deserialize(io, false),
            users = Array(Root::TypeUser).tl_deserialize(io, false),
          )
        end
      end

      class DiscussionMessage < TypeDiscussionMessage
        CONSTRUCTOR_ID = 0xA6341782

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
          @unread_count = unread_count
          @chats = chats
          @users = users
          @max_id = max_id
          @read_inbox_max_id = read_inbox_max_id
          @read_outbox_max_id = read_outbox_max_id
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!max_id.nil? ? 1 : 0) |
              (!read_inbox_max_id.nil? ? 2 : 0) |
              (!read_outbox_max_id.nil? ? 4 : 0)
          ).tl_serialize(io)
          @messages.tl_serialize(io, false)
          @max_id.tl_serialize(io, true) unless @max_id.nil?
          @read_inbox_max_id.tl_serialize(io, true) unless @read_inbox_max_id.nil?
          @read_outbox_max_id.tl_serialize(io, true) unless @read_outbox_max_id.nil?
          @unread_count.tl_serialize(io, true)
          @chats.tl_serialize(io, false)
          @users.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          flags = Int32.tl_deserialize(io)
          new(
            messages = Array(Root::TypeMessage).tl_deserialize(io, false),
            unread_count = Int32.tl_deserialize(io, true),
            chats = Array(Root::TypeChat).tl_deserialize(io, false),
            users = Array(Root::TypeUser).tl_deserialize(io, false),
            max_id = flags & 1 == 1 ? Int32.tl_deserialize(io, true) : nil,
            read_inbox_max_id = flags & 2 == 1 ? Int32.tl_deserialize(io, true) : nil,
            read_outbox_max_id = flags & 4 == 1 ? Int32.tl_deserialize(io, true) : nil,
          )
        end
      end

      class HistoryImport < TypeHistoryImport
        CONSTRUCTOR_ID = 0x1662AF0B

        getter id : Int64

        def initialize(
          id : Int64
        )
          @id = id
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @id.tl_serialize(io, true)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            id = Int64.tl_deserialize(io, true),
          )
        end
      end

      class HistoryImportParsed < TypeHistoryImportParsed
        CONSTRUCTOR_ID = 0x5E0FB7B9

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
          @title = title
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!pm.nil? ? 1 : 0) |
              (!group.nil? ? 2 : 0) |
              (!title.nil? ? 4 : 0)
          ).tl_serialize(io)
          @title.tl_serialize(io, true) unless @title.nil?
        end

        def self.tl_deserialize(io : IO, bare = false)
          flags = Int32.tl_deserialize(io)
          new(
            pm = flags & 1 == 1,
            group = flags & 2 == 1,
            title = flags & 4 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          )
        end
      end

      class AffectedFoundMessages < TypeAffectedFoundMessages
        CONSTRUCTOR_ID = 0xEF8D3E6C

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
          @pts = pts
          @pts_count = pts_count
          @offset = offset
          @messages = messages
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @pts.tl_serialize(io, true)
          @pts_count.tl_serialize(io, true)
          @offset.tl_serialize(io, true)
          @messages.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            pts = Int32.tl_deserialize(io, true),
            pts_count = Int32.tl_deserialize(io, true),
            offset = Int32.tl_deserialize(io, true),
            messages = Array(Int32).tl_deserialize(io, false),
          )
        end
      end

      class ExportedChatInvites < TypeExportedChatInvites
        CONSTRUCTOR_ID = 0xBDC62DCC

        getter count : Int32
        getter invites : Array(Root::TypeExportedChatInvite)
        getter users : Array(Root::TypeUser)

        def initialize(
          count : Int32,
          invites : Array(Root::TypeExportedChatInvite),
          users : Array(Root::TypeUser)
        )
          @count = count
          @invites = invites
          @users = users
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @count.tl_serialize(io, true)
          @invites.tl_serialize(io, false)
          @users.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            count = Int32.tl_deserialize(io, true),
            invites = Array(Root::TypeExportedChatInvite).tl_deserialize(io, false),
            users = Array(Root::TypeUser).tl_deserialize(io, false),
          )
        end
      end

      class ExportedChatInvite < TypeExportedChatInvite
        CONSTRUCTOR_ID = 0x1871BE50

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @invite.tl_serialize(io, false)
          @users.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            invite = Root::TypeExportedChatInvite.tl_deserialize(io, false),
            users = Array(Root::TypeUser).tl_deserialize(io, false),
          )
        end
      end

      class ExportedChatInviteReplaced < TypeExportedChatInvite
        CONSTRUCTOR_ID = 0x222600EF

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @invite.tl_serialize(io, false)
          @new_invite.tl_serialize(io, false)
          @users.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            invite = Root::TypeExportedChatInvite.tl_deserialize(io, false),
            new_invite = Root::TypeExportedChatInvite.tl_deserialize(io, false),
            users = Array(Root::TypeUser).tl_deserialize(io, false),
          )
        end
      end

      class ChatInviteImporters < TypeChatInviteImporters
        CONSTRUCTOR_ID = 0x81B6B00A

        getter count : Int32
        getter importers : Array(Root::TypeChatInviteImporter)
        getter users : Array(Root::TypeUser)

        def initialize(
          count : Int32,
          importers : Array(Root::TypeChatInviteImporter),
          users : Array(Root::TypeUser)
        )
          @count = count
          @importers = importers
          @users = users
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @count.tl_serialize(io, true)
          @importers.tl_serialize(io, false)
          @users.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            count = Int32.tl_deserialize(io, true),
            importers = Array(Root::TypeChatInviteImporter).tl_deserialize(io, false),
            users = Array(Root::TypeUser).tl_deserialize(io, false),
          )
        end
      end

      class ChatAdminsWithInvites < TypeChatAdminsWithInvites
        CONSTRUCTOR_ID = 0xB69B72D7

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @admins.tl_serialize(io, false)
          @users.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            admins = Array(Root::TypeChatAdminWithInvites).tl_deserialize(io, false),
            users = Array(Root::TypeUser).tl_deserialize(io, false),
          )
        end
      end

      class CheckedHistoryImportPeer < TypeCheckedHistoryImportPeer
        CONSTRUCTOR_ID = 0xA24DE717

        getter confirm_text : Bytes

        def initialize(
          confirm_text : Bytes | String | IO
        )
          @confirm_text = confirm_text
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @confirm_text.tl_serialize(io, true)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            confirm_text = Bytes.tl_deserialize(io, true),
          )
        end
      end

      class SponsoredMessages < TypeSponsoredMessages
        CONSTRUCTOR_ID = 0x65A4C7D5

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @messages.tl_serialize(io, false)
          @chats.tl_serialize(io, false)
          @users.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            messages = Array(Root::TypeSponsoredMessage).tl_deserialize(io, false),
            chats = Array(Root::TypeChat).tl_deserialize(io, false),
            users = Array(Root::TypeUser).tl_deserialize(io, false),
          )
        end
      end

      class GetMessages < TLRequest
        CONSTRUCTOR_ID = 0x63C66506

        getter id : Array(Root::TypeInputMessage)

        def initialize(
          id : Array(Root::TypeInputMessage)
        )
          @id = id
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @id.tl_serialize(io, false)
        end

        def return_type
          Messages::TypeMessages
        end
      end

      class GetDialogs < TLRequest
        CONSTRUCTOR_ID = 0xA0F4CB4F

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
          @offset_date = offset_date
          @offset_id = offset_id
          @offset_peer = offset_peer
          @limit = limit
          @hash = hash
          @exclude_pinned = exclude_pinned
          @folder_id = folder_id
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!exclude_pinned.nil? ? 1 : 0) |
              (!folder_id.nil? ? 2 : 0)
          ).tl_serialize(io)
          @folder_id.tl_serialize(io, true) unless @folder_id.nil?
          @offset_date.tl_serialize(io, true)
          @offset_id.tl_serialize(io, true)
          @offset_peer.tl_serialize(io, false)
          @limit.tl_serialize(io, true)
          @hash.tl_serialize(io, true)
        end

        def return_type
          Messages::TypeDialogs
        end
      end

      class GetHistory < TLRequest
        CONSTRUCTOR_ID = 0x4423E6C5

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
          @offset_id = offset_id
          @offset_date = offset_date
          @add_offset = add_offset
          @limit = limit
          @max_id = max_id
          @min_id = min_id
          @hash = hash
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @offset_id.tl_serialize(io, true)
          @offset_date.tl_serialize(io, true)
          @add_offset.tl_serialize(io, true)
          @limit.tl_serialize(io, true)
          @max_id.tl_serialize(io, true)
          @min_id.tl_serialize(io, true)
          @hash.tl_serialize(io, true)
        end

        def return_type
          Messages::TypeMessages
        end
      end

      class Search < TLRequest
        CONSTRUCTOR_ID = 0xA0FDA762

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
          @q = q
          @filter = filter
          @min_date = min_date
          @max_date = max_date
          @offset_id = offset_id
          @add_offset = add_offset
          @limit = limit
          @max_id = max_id
          @min_id = min_id
          @hash = hash
          @from_id = from_id
          @top_msg_id = top_msg_id
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!from_id.nil? ? 1 : 0) |
              (!top_msg_id.nil? ? 2 : 0)
          ).tl_serialize(io)
          @peer.tl_serialize(io, false)
          @q.tl_serialize(io, true)
          @from_id.tl_serialize(io, false) unless @from_id.nil?
          @top_msg_id.tl_serialize(io, true) unless @top_msg_id.nil?
          @filter.tl_serialize(io, false)
          @min_date.tl_serialize(io, true)
          @max_date.tl_serialize(io, true)
          @offset_id.tl_serialize(io, true)
          @add_offset.tl_serialize(io, true)
          @limit.tl_serialize(io, true)
          @max_id.tl_serialize(io, true)
          @min_id.tl_serialize(io, true)
          @hash.tl_serialize(io, true)
        end

        def return_type
          Messages::TypeMessages
        end
      end

      class ReadHistory < TLRequest
        CONSTRUCTOR_ID = 0x0E306D3A

        getter peer : Root::TypeInputPeer
        getter max_id : Int32

        def initialize(
          peer : Root::TypeInputPeer,
          max_id : Int32
        )
          @peer = peer
          @max_id = max_id
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @max_id.tl_serialize(io, true)
        end

        def return_type
          Messages::TypeAffectedMessages
        end
      end

      class DeleteHistory < TLRequest
        CONSTRUCTOR_ID = 0x1C015B09

        getter peer : Root::TypeInputPeer
        getter max_id : Int32
        getter just_clear : Bool | Nil
        getter revoke : Bool | Nil

        def initialize(
          peer : Root::TypeInputPeer,
          max_id : Int32,
          just_clear : Bool | Nil = nil,
          revoke : Bool | Nil = nil
        )
          @peer = peer
          @max_id = max_id
          @just_clear = just_clear
          @revoke = revoke
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!just_clear.nil? ? 1 : 0) |
              (!revoke.nil? ? 2 : 0)
          ).tl_serialize(io)
          @peer.tl_serialize(io, false)
          @max_id.tl_serialize(io, true)
        end

        def return_type
          Messages::TypeAffectedHistory
        end
      end

      class DeleteMessages < TLRequest
        CONSTRUCTOR_ID = 0xE58E95D2

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!revoke.nil? ? 1 : 0)
          ).tl_serialize(io)
          @id.tl_serialize(io, false)
        end

        def return_type
          Messages::TypeAffectedMessages
        end
      end

      class ReceivedMessages < TLRequest
        CONSTRUCTOR_ID = 0x05A954C0

        getter max_id : Int32

        def initialize(
          max_id : Int32
        )
          @max_id = max_id
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @max_id.tl_serialize(io, true)
        end

        def return_type
          Array(Root::TypeReceivedNotifyMessage)
        end
      end

      class SetTyping < TLRequest
        CONSTRUCTOR_ID = 0x58943EE2

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
          @top_msg_id = top_msg_id
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!top_msg_id.nil? ? 1 : 0)
          ).tl_serialize(io)
          @peer.tl_serialize(io, false)
          @top_msg_id.tl_serialize(io, true) unless @top_msg_id.nil?
          @action.tl_serialize(io, false)
        end

        def return_type
          Bool
        end
      end

      class SendMessage < TLRequest
        CONSTRUCTOR_ID = 0x520C3870

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
          schedule_date : Int32 | Nil = nil
        )
          @peer = peer
          @message = message
          @random_id = random_id
          @no_webpage = no_webpage
          @silent = silent
          @background = background
          @clear_draft = clear_draft
          @reply_to_msg_id = reply_to_msg_id
          @reply_markup = reply_markup
          @entities = entities
          @schedule_date = schedule_date
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!no_webpage.nil? ? 2 : 0) |
              (!silent.nil? ? 32 : 0) |
              (!background.nil? ? 64 : 0) |
              (!clear_draft.nil? ? 128 : 0) |
              (!reply_to_msg_id.nil? ? 1 : 0) |
              (!reply_markup.nil? ? 4 : 0) |
              (!entities.nil? ? 8 : 0) |
              (!schedule_date.nil? ? 1024 : 0)
          ).tl_serialize(io)
          @peer.tl_serialize(io, false)
          @reply_to_msg_id.tl_serialize(io, true) unless @reply_to_msg_id.nil?
          @message.tl_serialize(io, true)
          @random_id.tl_serialize(io, true)
          @reply_markup.tl_serialize(io, false) unless @reply_markup.nil?
          @entities.tl_serialize(io, false) unless @entities.nil?
          @schedule_date.tl_serialize(io, true) unless @schedule_date.nil?
        end

        def return_type
          Root::TypeUpdates
        end
      end

      class SendMedia < TLRequest
        CONSTRUCTOR_ID = 0x3491EBA9

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
          schedule_date : Int32 | Nil = nil
        )
          @peer = peer
          @media = media
          @message = message
          @random_id = random_id
          @silent = silent
          @background = background
          @clear_draft = clear_draft
          @reply_to_msg_id = reply_to_msg_id
          @reply_markup = reply_markup
          @entities = entities
          @schedule_date = schedule_date
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!silent.nil? ? 32 : 0) |
              (!background.nil? ? 64 : 0) |
              (!clear_draft.nil? ? 128 : 0) |
              (!reply_to_msg_id.nil? ? 1 : 0) |
              (!reply_markup.nil? ? 4 : 0) |
              (!entities.nil? ? 8 : 0) |
              (!schedule_date.nil? ? 1024 : 0)
          ).tl_serialize(io)
          @peer.tl_serialize(io, false)
          @reply_to_msg_id.tl_serialize(io, true) unless @reply_to_msg_id.nil?
          @media.tl_serialize(io, false)
          @message.tl_serialize(io, true)
          @random_id.tl_serialize(io, true)
          @reply_markup.tl_serialize(io, false) unless @reply_markup.nil?
          @entities.tl_serialize(io, false) unless @entities.nil?
          @schedule_date.tl_serialize(io, true) unless @schedule_date.nil?
        end

        def return_type
          Root::TypeUpdates
        end
      end

      class ForwardMessages < TLRequest
        CONSTRUCTOR_ID = 0xD9FEE60E

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
          schedule_date : Int32 | Nil = nil
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
          @schedule_date = schedule_date
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!silent.nil? ? 32 : 0) |
              (!background.nil? ? 64 : 0) |
              (!with_my_score.nil? ? 256 : 0) |
              (!drop_author.nil? ? 2048 : 0) |
              (!drop_media_captions.nil? ? 4096 : 0) |
              (!schedule_date.nil? ? 1024 : 0)
          ).tl_serialize(io)
          @from_peer.tl_serialize(io, false)
          @id.tl_serialize(io, false)
          @random_id.tl_serialize(io, false)
          @to_peer.tl_serialize(io, false)
          @schedule_date.tl_serialize(io, true) unless @schedule_date.nil?
        end

        def return_type
          Root::TypeUpdates
        end
      end

      class ReportSpam < TLRequest
        CONSTRUCTOR_ID = 0xCF1592DB

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
          Bool
        end
      end

      class GetPeerSettings < TLRequest
        CONSTRUCTOR_ID = 0x3672E09C

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
          Root::TypePeerSettings
        end
      end

      class Report < TLRequest
        CONSTRUCTOR_ID = 0x8953AB4E

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
          @message = message
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @id.tl_serialize(io, false)
          @reason.tl_serialize(io, false)
          @message.tl_serialize(io, true)
        end

        def return_type
          Bool
        end
      end

      class GetChats < TLRequest
        CONSTRUCTOR_ID = 0x49E9528F

        getter id : Array(Int64)

        def initialize(
          id : Array(Int64)
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

      class GetFullChat < TLRequest
        CONSTRUCTOR_ID = 0xAEB00B34

        getter chat_id : Int64

        def initialize(
          chat_id : Int64
        )
          @chat_id = chat_id
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @chat_id.tl_serialize(io, true)
        end

        def return_type
          Messages::TypeChatFull
        end
      end

      class EditChatTitle < TLRequest
        CONSTRUCTOR_ID = 0x73783FFD

        getter chat_id : Int64
        getter title : Bytes

        def initialize(
          chat_id : Int64,
          title : Bytes | String | IO
        )
          @chat_id = chat_id
          @title = title
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @chat_id.tl_serialize(io, true)
          @title.tl_serialize(io, true)
        end

        def return_type
          Root::TypeUpdates
        end
      end

      class EditChatPhoto < TLRequest
        CONSTRUCTOR_ID = 0x35DDD674

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @chat_id.tl_serialize(io, true)
          @photo.tl_serialize(io, false)
        end

        def return_type
          Root::TypeUpdates
        end
      end

      class AddChatUser < TLRequest
        CONSTRUCTOR_ID = 0xF24753E3

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
          @fwd_limit = fwd_limit
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @chat_id.tl_serialize(io, true)
          @user_id.tl_serialize(io, false)
          @fwd_limit.tl_serialize(io, true)
        end

        def return_type
          Root::TypeUpdates
        end
      end

      class DeleteChatUser < TLRequest
        CONSTRUCTOR_ID = 0xA2185CAB

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!revoke_history.nil? ? 1 : 0)
          ).tl_serialize(io)
          @chat_id.tl_serialize(io, true)
          @user_id.tl_serialize(io, false)
        end

        def return_type
          Root::TypeUpdates
        end
      end

      class CreateChat < TLRequest
        CONSTRUCTOR_ID = 0x09CB126E

        getter users : Array(Root::TypeInputUser)
        getter title : Bytes

        def initialize(
          users : Array(Root::TypeInputUser),
          title : Bytes | String | IO
        )
          @users = users
          @title = title
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @users.tl_serialize(io, false)
          @title.tl_serialize(io, true)
        end

        def return_type
          Root::TypeUpdates
        end
      end

      class GetDhConfig < TLRequest
        CONSTRUCTOR_ID = 0x26CF8950

        getter version : Int32
        getter random_length : Int32

        def initialize(
          version : Int32,
          random_length : Int32
        )
          @version = version
          @random_length = random_length
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @version.tl_serialize(io, true)
          @random_length.tl_serialize(io, true)
        end

        def return_type
          Messages::TypeDhConfig
        end
      end

      class RequestEncryption < TLRequest
        CONSTRUCTOR_ID = 0xF64DAF43

        getter user_id : Root::TypeInputUser
        getter random_id : Int32
        getter g_a : Bytes

        def initialize(
          user_id : Root::TypeInputUser,
          random_id : Int32,
          g_a : Bytes | String | IO
        )
          @user_id = user_id
          @random_id = random_id
          @g_a = TL::Utils.parse_bytes!(g_a)
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @user_id.tl_serialize(io, false)
          @random_id.tl_serialize(io, true)
          @g_a.tl_serialize(io, true)
        end

        def return_type
          Root::TypeEncryptedChat
        end
      end

      class AcceptEncryption < TLRequest
        CONSTRUCTOR_ID = 0x3DBC0415

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @g_b.tl_serialize(io, true)
          @key_fingerprint.tl_serialize(io, true)
        end

        def return_type
          Root::TypeEncryptedChat
        end
      end

      class DiscardEncryption < TLRequest
        CONSTRUCTOR_ID = 0xF393AEA0

        getter chat_id : Int32
        getter delete_history : Bool | Nil

        def initialize(
          chat_id : Int32,
          delete_history : Bool | Nil = nil
        )
          @chat_id = chat_id
          @delete_history = delete_history
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!delete_history.nil? ? 1 : 0)
          ).tl_serialize(io)
          @chat_id.tl_serialize(io, true)
        end

        def return_type
          Bool
        end
      end

      class SetEncryptedTyping < TLRequest
        CONSTRUCTOR_ID = 0x791451ED

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @typing.tl_serialize(io, false)
        end

        def return_type
          Bool
        end
      end

      class ReadEncryptedHistory < TLRequest
        CONSTRUCTOR_ID = 0x7F4B690A

        getter peer : Root::TypeInputEncryptedChat
        getter max_date : Int32

        def initialize(
          peer : Root::TypeInputEncryptedChat,
          max_date : Int32
        )
          @peer = peer
          @max_date = max_date
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @max_date.tl_serialize(io, true)
        end

        def return_type
          Bool
        end
      end

      class SendEncrypted < TLRequest
        CONSTRUCTOR_ID = 0x44FA7A15

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!silent.nil? ? 1 : 0)
          ).tl_serialize(io)
          @peer.tl_serialize(io, false)
          @random_id.tl_serialize(io, true)
          @data.tl_serialize(io, true)
        end

        def return_type
          Messages::TypeSentEncryptedMessage
        end
      end

      class SendEncryptedFile < TLRequest
        CONSTRUCTOR_ID = 0x5559481D

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!silent.nil? ? 1 : 0)
          ).tl_serialize(io)
          @peer.tl_serialize(io, false)
          @random_id.tl_serialize(io, true)
          @data.tl_serialize(io, true)
          @file.tl_serialize(io, false)
        end

        def return_type
          Messages::TypeSentEncryptedMessage
        end
      end

      class SendEncryptedService < TLRequest
        CONSTRUCTOR_ID = 0x32D439A4

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @random_id.tl_serialize(io, true)
          @data.tl_serialize(io, true)
        end

        def return_type
          Messages::TypeSentEncryptedMessage
        end
      end

      class ReceivedQueue < TLRequest
        CONSTRUCTOR_ID = 0x55A5BB66

        getter max_qts : Int32

        def initialize(
          max_qts : Int32
        )
          @max_qts = max_qts
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @max_qts.tl_serialize(io, true)
        end

        def return_type
          Array(Int64)
        end
      end

      class ReportEncryptedSpam < TLRequest
        CONSTRUCTOR_ID = 0x4B0C8C0F

        getter peer : Root::TypeInputEncryptedChat

        def initialize(
          peer : Root::TypeInputEncryptedChat
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

      class ReadMessageContents < TLRequest
        CONSTRUCTOR_ID = 0x36A73F77

        getter id : Array(Int32)

        def initialize(
          id : Array(Int32)
        )
          @id = id
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @id.tl_serialize(io, false)
        end

        def return_type
          Messages::TypeAffectedMessages
        end
      end

      class GetStickers < TLRequest
        CONSTRUCTOR_ID = 0xD5A5D3A1

        getter emoticon : Bytes
        getter hash : Int64

        def initialize(
          emoticon : Bytes | String | IO,
          hash : Int64
        )
          @emoticon = emoticon
          @hash = hash
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @emoticon.tl_serialize(io, true)
          @hash.tl_serialize(io, true)
        end

        def return_type
          Messages::TypeStickers
        end
      end

      class GetAllStickers < TLRequest
        CONSTRUCTOR_ID = 0xB8A0A1A8

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
          Messages::TypeAllStickers
        end
      end

      class GetWebPagePreview < TLRequest
        CONSTRUCTOR_ID = 0x8B68B0CC

        getter message : Bytes
        getter entities : Array(Root::TypeMessageEntity) | Nil

        def initialize(
          message : Bytes | String | IO,
          entities : Array(Root::TypeMessageEntity) | Nil = nil
        )
          @message = message
          @entities = entities
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!entities.nil? ? 8 : 0)
          ).tl_serialize(io)
          @message.tl_serialize(io, true)
          @entities.tl_serialize(io, false) unless @entities.nil?
        end

        def return_type
          Root::TypeMessageMedia
        end
      end

      class ExportChatInvite < TLRequest
        CONSTRUCTOR_ID = 0x14B9BCD7

        getter peer : Root::TypeInputPeer
        getter legacy_revoke_permanent : Bool | Nil
        getter expire_date : Int32 | Nil
        getter usage_limit : Int32 | Nil

        def initialize(
          peer : Root::TypeInputPeer,
          legacy_revoke_permanent : Bool | Nil = nil,
          expire_date : Int32 | Nil = nil,
          usage_limit : Int32 | Nil = nil
        )
          @peer = peer
          @legacy_revoke_permanent = legacy_revoke_permanent
          @expire_date = expire_date
          @usage_limit = usage_limit
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!legacy_revoke_permanent.nil? ? 4 : 0) |
              (!expire_date.nil? ? 1 : 0) |
              (!usage_limit.nil? ? 2 : 0)
          ).tl_serialize(io)
          @peer.tl_serialize(io, false)
          @expire_date.tl_serialize(io, true) unless @expire_date.nil?
          @usage_limit.tl_serialize(io, true) unless @usage_limit.nil?
        end

        def return_type
          Root::TypeExportedChatInvite
        end
      end

      class CheckChatInvite < TLRequest
        CONSTRUCTOR_ID = 0x3EADB1BB

        getter hash : Bytes

        def initialize(
          hash : Bytes | String | IO
        )
          @hash = hash
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @hash.tl_serialize(io, true)
        end

        def return_type
          Root::TypeChatInvite
        end
      end

      class ImportChatInvite < TLRequest
        CONSTRUCTOR_ID = 0x6C50051C

        getter hash : Bytes

        def initialize(
          hash : Bytes | String | IO
        )
          @hash = hash
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @hash.tl_serialize(io, true)
        end

        def return_type
          Root::TypeUpdates
        end
      end

      class GetStickerSet < TLRequest
        CONSTRUCTOR_ID = 0x2619A90E

        getter stickerset : Root::TypeInputStickerSet

        def initialize(
          stickerset : Root::TypeInputStickerSet
        )
          @stickerset = stickerset
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @stickerset.tl_serialize(io, false)
        end

        def return_type
          Messages::TypeStickerSet
        end
      end

      class InstallStickerSet < TLRequest
        CONSTRUCTOR_ID = 0xC78FE460

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @stickerset.tl_serialize(io, false)
          @archived.tl_serialize(io, false)
        end

        def return_type
          Messages::TypeStickerSetInstallResult
        end
      end

      class UninstallStickerSet < TLRequest
        CONSTRUCTOR_ID = 0xF96E55DE

        getter stickerset : Root::TypeInputStickerSet

        def initialize(
          stickerset : Root::TypeInputStickerSet
        )
          @stickerset = stickerset
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @stickerset.tl_serialize(io, false)
        end

        def return_type
          Bool
        end
      end

      class StartBot < TLRequest
        CONSTRUCTOR_ID = 0xE6DF7378

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
          @start_param = start_param
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @bot.tl_serialize(io, false)
          @peer.tl_serialize(io, false)
          @random_id.tl_serialize(io, true)
          @start_param.tl_serialize(io, true)
        end

        def return_type
          Root::TypeUpdates
        end
      end

      class GetMessagesViews < TLRequest
        CONSTRUCTOR_ID = 0x5784D3E1

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @id.tl_serialize(io, false)
          @increment.tl_serialize(io, false)
        end

        def return_type
          Messages::TypeMessageViews
        end
      end

      class EditChatAdmin < TLRequest
        CONSTRUCTOR_ID = 0xA85BD1C2

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @chat_id.tl_serialize(io, true)
          @user_id.tl_serialize(io, false)
          @is_admin.tl_serialize(io, false)
        end

        def return_type
          Bool
        end
      end

      class MigrateChat < TLRequest
        CONSTRUCTOR_ID = 0xA2875319

        getter chat_id : Int64

        def initialize(
          chat_id : Int64
        )
          @chat_id = chat_id
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @chat_id.tl_serialize(io, true)
        end

        def return_type
          Root::TypeUpdates
        end
      end

      class SearchGlobal < TLRequest
        CONSTRUCTOR_ID = 0x4BC6589A

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
          @q = q
          @filter = filter
          @min_date = min_date
          @max_date = max_date
          @offset_rate = offset_rate
          @offset_peer = offset_peer
          @offset_id = offset_id
          @limit = limit
          @folder_id = folder_id
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!folder_id.nil? ? 1 : 0)
          ).tl_serialize(io)
          @folder_id.tl_serialize(io, true) unless @folder_id.nil?
          @q.tl_serialize(io, true)
          @filter.tl_serialize(io, false)
          @min_date.tl_serialize(io, true)
          @max_date.tl_serialize(io, true)
          @offset_rate.tl_serialize(io, true)
          @offset_peer.tl_serialize(io, false)
          @offset_id.tl_serialize(io, true)
          @limit.tl_serialize(io, true)
        end

        def return_type
          Messages::TypeMessages
        end
      end

      class ReorderStickerSets < TLRequest
        CONSTRUCTOR_ID = 0x78337739

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!masks.nil? ? 1 : 0)
          ).tl_serialize(io)
          @order.tl_serialize(io, false)
        end

        def return_type
          Bool
        end
      end

      class GetDocumentByHash < TLRequest
        CONSTRUCTOR_ID = 0x338E2464

        getter sha256 : Bytes
        getter size : Int32
        getter mime_type : Bytes

        def initialize(
          sha256 : Bytes | String | IO,
          size : Int32,
          mime_type : Bytes | String | IO
        )
          @sha256 = TL::Utils.parse_bytes!(sha256)
          @size = size
          @mime_type = mime_type
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @sha256.tl_serialize(io, true)
          @size.tl_serialize(io, true)
          @mime_type.tl_serialize(io, true)
        end

        def return_type
          Root::TypeDocument
        end
      end

      class GetSavedGifs < TLRequest
        CONSTRUCTOR_ID = 0x5CF09635

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
          Messages::TypeSavedGifs
        end
      end

      class SaveGif < TLRequest
        CONSTRUCTOR_ID = 0x327A30CB

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @id.tl_serialize(io, false)
          @unsave.tl_serialize(io, false)
        end

        def return_type
          Bool
        end
      end

      class GetInlineBotResults < TLRequest
        CONSTRUCTOR_ID = 0x514E999D

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
          @query = query
          @offset = offset
          @geo_point = geo_point
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!geo_point.nil? ? 1 : 0)
          ).tl_serialize(io)
          @bot.tl_serialize(io, false)
          @peer.tl_serialize(io, false)
          @geo_point.tl_serialize(io, false) unless @geo_point.nil?
          @query.tl_serialize(io, true)
          @offset.tl_serialize(io, true)
        end

        def return_type
          Messages::TypeBotResults
        end
      end

      class SetInlineBotResults < TLRequest
        CONSTRUCTOR_ID = 0xEB5EA206

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
          @cache_time = cache_time
          @gallery = gallery
          @is_private = is_private
          @next_offset = next_offset
          @switch_pm = switch_pm
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!gallery.nil? ? 1 : 0) |
              (!is_private.nil? ? 2 : 0) |
              (!next_offset.nil? ? 4 : 0) |
              (!switch_pm.nil? ? 8 : 0)
          ).tl_serialize(io)
          @query_id.tl_serialize(io, true)
          @results.tl_serialize(io, false)
          @cache_time.tl_serialize(io, true)
          @next_offset.tl_serialize(io, true) unless @next_offset.nil?
          @switch_pm.tl_serialize(io, false) unless @switch_pm.nil?
        end

        def return_type
          Bool
        end
      end

      class SendInlineBotResult < TLRequest
        CONSTRUCTOR_ID = 0x220815B0

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
          schedule_date : Int32 | Nil = nil
        )
          @peer = peer
          @random_id = random_id
          @query_id = query_id
          @id = id
          @silent = silent
          @background = background
          @clear_draft = clear_draft
          @hide_via = hide_via
          @reply_to_msg_id = reply_to_msg_id
          @schedule_date = schedule_date
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!silent.nil? ? 32 : 0) |
              (!background.nil? ? 64 : 0) |
              (!clear_draft.nil? ? 128 : 0) |
              (!hide_via.nil? ? 2048 : 0) |
              (!reply_to_msg_id.nil? ? 1 : 0) |
              (!schedule_date.nil? ? 1024 : 0)
          ).tl_serialize(io)
          @peer.tl_serialize(io, false)
          @reply_to_msg_id.tl_serialize(io, true) unless @reply_to_msg_id.nil?
          @random_id.tl_serialize(io, true)
          @query_id.tl_serialize(io, true)
          @id.tl_serialize(io, true)
          @schedule_date.tl_serialize(io, true) unless @schedule_date.nil?
        end

        def return_type
          Root::TypeUpdates
        end
      end

      class GetMessageEditData < TLRequest
        CONSTRUCTOR_ID = 0xFDA68D36

        getter peer : Root::TypeInputPeer
        getter id : Int32

        def initialize(
          peer : Root::TypeInputPeer,
          id : Int32
        )
          @peer = peer
          @id = id
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @id.tl_serialize(io, true)
        end

        def return_type
          Messages::TypeMessageEditData
        end
      end

      class EditMessage < TLRequest
        CONSTRUCTOR_ID = 0x48F71778

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
          @id = id
          @no_webpage = no_webpage
          @message = message
          @media = media
          @reply_markup = reply_markup
          @entities = entities
          @schedule_date = schedule_date
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!no_webpage.nil? ? 2 : 0) |
              (!message.nil? ? 2048 : 0) |
              (!media.nil? ? 16384 : 0) |
              (!reply_markup.nil? ? 4 : 0) |
              (!entities.nil? ? 8 : 0) |
              (!schedule_date.nil? ? 32768 : 0)
          ).tl_serialize(io)
          @peer.tl_serialize(io, false)
          @id.tl_serialize(io, true)
          @message.tl_serialize(io, true) unless @message.nil?
          @media.tl_serialize(io, false) unless @media.nil?
          @reply_markup.tl_serialize(io, false) unless @reply_markup.nil?
          @entities.tl_serialize(io, false) unless @entities.nil?
          @schedule_date.tl_serialize(io, true) unless @schedule_date.nil?
        end

        def return_type
          Root::TypeUpdates
        end
      end

      class EditInlineBotMessage < TLRequest
        CONSTRUCTOR_ID = 0x83557DBA

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
          @message = message
          @media = media
          @reply_markup = reply_markup
          @entities = entities
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!no_webpage.nil? ? 2 : 0) |
              (!message.nil? ? 2048 : 0) |
              (!media.nil? ? 16384 : 0) |
              (!reply_markup.nil? ? 4 : 0) |
              (!entities.nil? ? 8 : 0)
          ).tl_serialize(io)
          @id.tl_serialize(io, false)
          @message.tl_serialize(io, true) unless @message.nil?
          @media.tl_serialize(io, false) unless @media.nil?
          @reply_markup.tl_serialize(io, false) unless @reply_markup.nil?
          @entities.tl_serialize(io, false) unless @entities.nil?
        end

        def return_type
          Bool
        end
      end

      class GetBotCallbackAnswer < TLRequest
        CONSTRUCTOR_ID = 0x9342CA07

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
          @msg_id = msg_id
          @game = game
          @data = TL::Utils.parse_bytes(data)
          @password = password
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!game.nil? ? 2 : 0) |
              (!data.nil? ? 1 : 0) |
              (!password.nil? ? 4 : 0)
          ).tl_serialize(io)
          @peer.tl_serialize(io, false)
          @msg_id.tl_serialize(io, true)
          @data.tl_serialize(io, true) unless @data.nil?
          @password.tl_serialize(io, false) unless @password.nil?
        end

        def return_type
          Messages::TypeBotCallbackAnswer
        end
      end

      class SetBotCallbackAnswer < TLRequest
        CONSTRUCTOR_ID = 0xD58F130A

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
          @cache_time = cache_time
          @alert = alert
          @message = message
          @url = url
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!alert.nil? ? 2 : 0) |
              (!message.nil? ? 1 : 0) |
              (!url.nil? ? 4 : 0)
          ).tl_serialize(io)
          @query_id.tl_serialize(io, true)
          @message.tl_serialize(io, true) unless @message.nil?
          @url.tl_serialize(io, true) unless @url.nil?
          @cache_time.tl_serialize(io, true)
        end

        def return_type
          Bool
        end
      end

      class GetPeerDialogs < TLRequest
        CONSTRUCTOR_ID = 0xE470BCFD

        getter peers : Array(Root::TypeInputDialogPeer)

        def initialize(
          peers : Array(Root::TypeInputDialogPeer)
        )
          @peers = peers
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peers.tl_serialize(io, false)
        end

        def return_type
          Messages::TypePeerDialogs
        end
      end

      class SaveDraft < TLRequest
        CONSTRUCTOR_ID = 0xBC39E14B

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
          @message = message
          @no_webpage = no_webpage
          @reply_to_msg_id = reply_to_msg_id
          @entities = entities
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!no_webpage.nil? ? 2 : 0) |
              (!reply_to_msg_id.nil? ? 1 : 0) |
              (!entities.nil? ? 8 : 0)
          ).tl_serialize(io)
          @reply_to_msg_id.tl_serialize(io, true) unless @reply_to_msg_id.nil?
          @peer.tl_serialize(io, false)
          @message.tl_serialize(io, true)
          @entities.tl_serialize(io, false) unless @entities.nil?
        end

        def return_type
          Bool
        end
      end

      class GetAllDrafts < TLRequest
        CONSTRUCTOR_ID = 0x6A3F8D65

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
        end

        def return_type
          Root::TypeUpdates
        end
      end

      class GetFeaturedStickers < TLRequest
        CONSTRUCTOR_ID = 0x64780B14

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
          Messages::TypeFeaturedStickers
        end
      end

      class ReadFeaturedStickers < TLRequest
        CONSTRUCTOR_ID = 0x5B118126

        getter id : Array(Int64)

        def initialize(
          id : Array(Int64)
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

      class GetRecentStickers < TLRequest
        CONSTRUCTOR_ID = 0x9DA9403B

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!attached.nil? ? 1 : 0)
          ).tl_serialize(io)
          @hash.tl_serialize(io, true)
        end

        def return_type
          Messages::TypeRecentStickers
        end
      end

      class SaveRecentSticker < TLRequest
        CONSTRUCTOR_ID = 0x392718F8

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!attached.nil? ? 1 : 0)
          ).tl_serialize(io)
          @id.tl_serialize(io, false)
          @unsave.tl_serialize(io, false)
        end

        def return_type
          Bool
        end
      end

      class ClearRecentStickers < TLRequest
        CONSTRUCTOR_ID = 0x8999602D

        getter attached : Bool | Nil

        def initialize(
          attached : Bool | Nil = nil
        )
          @attached = attached
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!attached.nil? ? 1 : 0)
          ).tl_serialize(io)
        end

        def return_type
          Bool
        end
      end

      class GetArchivedStickers < TLRequest
        CONSTRUCTOR_ID = 0x57F17692

        getter offset_id : Int64
        getter limit : Int32
        getter masks : Bool | Nil

        def initialize(
          offset_id : Int64,
          limit : Int32,
          masks : Bool | Nil = nil
        )
          @offset_id = offset_id
          @limit = limit
          @masks = masks
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!masks.nil? ? 1 : 0)
          ).tl_serialize(io)
          @offset_id.tl_serialize(io, true)
          @limit.tl_serialize(io, true)
        end

        def return_type
          Messages::TypeArchivedStickers
        end
      end

      class GetMaskStickers < TLRequest
        CONSTRUCTOR_ID = 0x640F82B8

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
          Messages::TypeAllStickers
        end
      end

      class GetAttachedStickers < TLRequest
        CONSTRUCTOR_ID = 0xCC5B67CC

        getter media : Root::TypeInputStickeredMedia

        def initialize(
          media : Root::TypeInputStickeredMedia
        )
          @media = media
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @media.tl_serialize(io, false)
        end

        def return_type
          Array(Root::TypeStickerSetCovered)
        end
      end

      class SetGameScore < TLRequest
        CONSTRUCTOR_ID = 0x8EF8ECC0

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
          @id = id
          @user_id = user_id
          @score = score
          @edit_message = edit_message
          @force = force
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!edit_message.nil? ? 1 : 0) |
              (!force.nil? ? 2 : 0)
          ).tl_serialize(io)
          @peer.tl_serialize(io, false)
          @id.tl_serialize(io, true)
          @user_id.tl_serialize(io, false)
          @score.tl_serialize(io, true)
        end

        def return_type
          Root::TypeUpdates
        end
      end

      class SetInlineGameScore < TLRequest
        CONSTRUCTOR_ID = 0x15AD9F64

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
          @score = score
          @edit_message = edit_message
          @force = force
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!edit_message.nil? ? 1 : 0) |
              (!force.nil? ? 2 : 0)
          ).tl_serialize(io)
          @id.tl_serialize(io, false)
          @user_id.tl_serialize(io, false)
          @score.tl_serialize(io, true)
        end

        def return_type
          Bool
        end
      end

      class GetGameHighScores < TLRequest
        CONSTRUCTOR_ID = 0xE822649D

        getter peer : Root::TypeInputPeer
        getter id : Int32
        getter user_id : Root::TypeInputUser

        def initialize(
          peer : Root::TypeInputPeer,
          id : Int32,
          user_id : Root::TypeInputUser
        )
          @peer = peer
          @id = id
          @user_id = user_id
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @id.tl_serialize(io, true)
          @user_id.tl_serialize(io, false)
        end

        def return_type
          Messages::TypeHighScores
        end
      end

      class GetInlineGameHighScores < TLRequest
        CONSTRUCTOR_ID = 0x0F635E1B

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @id.tl_serialize(io, false)
          @user_id.tl_serialize(io, false)
        end

        def return_type
          Messages::TypeHighScores
        end
      end

      class GetCommonChats < TLRequest
        CONSTRUCTOR_ID = 0xE40CA104

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
          @limit = limit
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @user_id.tl_serialize(io, false)
          @max_id.tl_serialize(io, true)
          @limit.tl_serialize(io, true)
        end

        def return_type
          Messages::TypeChats
        end
      end

      class GetAllChats < TLRequest
        CONSTRUCTOR_ID = 0x875F74BE

        getter except_ids : Array(Int64)

        def initialize(
          except_ids : Array(Int64)
        )
          @except_ids = except_ids
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @except_ids.tl_serialize(io, false)
        end

        def return_type
          Messages::TypeChats
        end
      end

      class GetWebPage < TLRequest
        CONSTRUCTOR_ID = 0x32CA8F91

        getter url : Bytes
        getter hash : Int32

        def initialize(
          url : Bytes | String | IO,
          hash : Int32
        )
          @url = url
          @hash = hash
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @url.tl_serialize(io, true)
          @hash.tl_serialize(io, true)
        end

        def return_type
          Root::TypeWebPage
        end
      end

      class ToggleDialogPin < TLRequest
        CONSTRUCTOR_ID = 0xA731E257

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!pinned.nil? ? 1 : 0)
          ).tl_serialize(io)
          @peer.tl_serialize(io, false)
        end

        def return_type
          Bool
        end
      end

      class ReorderPinnedDialogs < TLRequest
        CONSTRUCTOR_ID = 0x3B1ADF37

        getter folder_id : Int32
        getter order : Array(Root::TypeInputDialogPeer)
        getter force : Bool | Nil

        def initialize(
          folder_id : Int32,
          order : Array(Root::TypeInputDialogPeer),
          force : Bool | Nil = nil
        )
          @folder_id = folder_id
          @order = order
          @force = force
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!force.nil? ? 1 : 0)
          ).tl_serialize(io)
          @folder_id.tl_serialize(io, true)
          @order.tl_serialize(io, false)
        end

        def return_type
          Bool
        end
      end

      class GetPinnedDialogs < TLRequest
        CONSTRUCTOR_ID = 0xD6B94DF2

        getter folder_id : Int32

        def initialize(
          folder_id : Int32
        )
          @folder_id = folder_id
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @folder_id.tl_serialize(io, true)
        end

        def return_type
          Messages::TypePeerDialogs
        end
      end

      class SetBotShippingResults < TLRequest
        CONSTRUCTOR_ID = 0xE5F672FA

        getter query_id : Int64
        getter error : Bytes | Nil
        getter shipping_options : Array(Root::TypeShippingOption) | Nil

        def initialize(
          query_id : Int64,
          error : Bytes | Nil = nil,
          shipping_options : Array(Root::TypeShippingOption) | Nil = nil
        )
          @query_id = query_id
          @error = error
          @shipping_options = shipping_options
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!error.nil? ? 1 : 0) |
              (!shipping_options.nil? ? 2 : 0)
          ).tl_serialize(io)
          @query_id.tl_serialize(io, true)
          @error.tl_serialize(io, true) unless @error.nil?
          @shipping_options.tl_serialize(io, false) unless @shipping_options.nil?
        end

        def return_type
          Bool
        end
      end

      class SetBotPrecheckoutResults < TLRequest
        CONSTRUCTOR_ID = 0x09C2DD95

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
          @error = error
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!success.nil? ? 2 : 0) |
              (!error.nil? ? 1 : 0)
          ).tl_serialize(io)
          @query_id.tl_serialize(io, true)
          @error.tl_serialize(io, true) unless @error.nil?
        end

        def return_type
          Bool
        end
      end

      class UploadMedia < TLRequest
        CONSTRUCTOR_ID = 0x519BC2B1

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @media.tl_serialize(io, false)
        end

        def return_type
          Root::TypeMessageMedia
        end
      end

      class SendScreenshotNotification < TLRequest
        CONSTRUCTOR_ID = 0xC97DF020

        getter peer : Root::TypeInputPeer
        getter reply_to_msg_id : Int32
        getter random_id : Int64

        def initialize(
          peer : Root::TypeInputPeer,
          reply_to_msg_id : Int32,
          random_id : Int64
        )
          @peer = peer
          @reply_to_msg_id = reply_to_msg_id
          @random_id = random_id
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @reply_to_msg_id.tl_serialize(io, true)
          @random_id.tl_serialize(io, true)
        end

        def return_type
          Root::TypeUpdates
        end
      end

      class GetFavedStickers < TLRequest
        CONSTRUCTOR_ID = 0x04F1AAA9

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
          Messages::TypeFavedStickers
        end
      end

      class FaveSticker < TLRequest
        CONSTRUCTOR_ID = 0xB9FFC55B

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @id.tl_serialize(io, false)
          @unfave.tl_serialize(io, false)
        end

        def return_type
          Bool
        end
      end

      class GetUnreadMentions < TLRequest
        CONSTRUCTOR_ID = 0x46578472

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
          @offset_id = offset_id
          @add_offset = add_offset
          @limit = limit
          @max_id = max_id
          @min_id = min_id
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @offset_id.tl_serialize(io, true)
          @add_offset.tl_serialize(io, true)
          @limit.tl_serialize(io, true)
          @max_id.tl_serialize(io, true)
          @min_id.tl_serialize(io, true)
        end

        def return_type
          Messages::TypeMessages
        end
      end

      class ReadMentions < TLRequest
        CONSTRUCTOR_ID = 0x0F0189D3

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
          Messages::TypeAffectedHistory
        end
      end

      class GetRecentLocations < TLRequest
        CONSTRUCTOR_ID = 0x702A40E0

        getter peer : Root::TypeInputPeer
        getter limit : Int32
        getter hash : Int64

        def initialize(
          peer : Root::TypeInputPeer,
          limit : Int32,
          hash : Int64
        )
          @peer = peer
          @limit = limit
          @hash = hash
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @limit.tl_serialize(io, true)
          @hash.tl_serialize(io, true)
        end

        def return_type
          Messages::TypeMessages
        end
      end

      class SendMultiMedia < TLRequest
        CONSTRUCTOR_ID = 0xCC0110CB

        getter peer : Root::TypeInputPeer
        getter multi_media : Array(Root::TypeInputSingleMedia)
        getter silent : Bool | Nil
        getter background : Bool | Nil
        getter clear_draft : Bool | Nil
        getter reply_to_msg_id : Int32 | Nil
        getter schedule_date : Int32 | Nil

        def initialize(
          peer : Root::TypeInputPeer,
          multi_media : Array(Root::TypeInputSingleMedia),
          silent : Bool | Nil = nil,
          background : Bool | Nil = nil,
          clear_draft : Bool | Nil = nil,
          reply_to_msg_id : Int32 | Nil = nil,
          schedule_date : Int32 | Nil = nil
        )
          @peer = peer
          @multi_media = multi_media
          @silent = silent
          @background = background
          @clear_draft = clear_draft
          @reply_to_msg_id = reply_to_msg_id
          @schedule_date = schedule_date
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!silent.nil? ? 32 : 0) |
              (!background.nil? ? 64 : 0) |
              (!clear_draft.nil? ? 128 : 0) |
              (!reply_to_msg_id.nil? ? 1 : 0) |
              (!schedule_date.nil? ? 1024 : 0)
          ).tl_serialize(io)
          @peer.tl_serialize(io, false)
          @reply_to_msg_id.tl_serialize(io, true) unless @reply_to_msg_id.nil?
          @multi_media.tl_serialize(io, false)
          @schedule_date.tl_serialize(io, true) unless @schedule_date.nil?
        end

        def return_type
          Root::TypeUpdates
        end
      end

      class UploadEncryptedFile < TLRequest
        CONSTRUCTOR_ID = 0x5057C497

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @file.tl_serialize(io, false)
        end

        def return_type
          Root::TypeEncryptedFile
        end
      end

      class SearchStickerSets < TLRequest
        CONSTRUCTOR_ID = 0x35705B8A

        getter q : Bytes
        getter hash : Int64
        getter exclude_featured : Bool | Nil

        def initialize(
          q : Bytes | String | IO,
          hash : Int64,
          exclude_featured : Bool | Nil = nil
        )
          @q = q
          @hash = hash
          @exclude_featured = exclude_featured
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!exclude_featured.nil? ? 1 : 0)
          ).tl_serialize(io)
          @q.tl_serialize(io, true)
          @hash.tl_serialize(io, true)
        end

        def return_type
          Messages::TypeFoundStickerSets
        end
      end

      class GetSplitRanges < TLRequest
        CONSTRUCTOR_ID = 0x1CFF7E08

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
        end

        def return_type
          Array(Root::TypeMessageRange)
        end
      end

      class MarkDialogUnread < TLRequest
        CONSTRUCTOR_ID = 0xC286D98F

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!unread.nil? ? 1 : 0)
          ).tl_serialize(io)
          @peer.tl_serialize(io, false)
        end

        def return_type
          Bool
        end
      end

      class GetDialogUnreadMarks < TLRequest
        CONSTRUCTOR_ID = 0x22E24E22

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
        end

        def return_type
          Array(Root::TypeDialogPeer)
        end
      end

      class ClearAllDrafts < TLRequest
        CONSTRUCTOR_ID = 0x7E58EE9C

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
        end

        def return_type
          Bool
        end
      end

      class UpdatePinnedMessage < TLRequest
        CONSTRUCTOR_ID = 0xD2AAF7EC

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
          @id = id
          @silent = silent
          @unpin = unpin
          @pm_oneside = pm_oneside
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!silent.nil? ? 1 : 0) |
              (!unpin.nil? ? 2 : 0) |
              (!pm_oneside.nil? ? 4 : 0)
          ).tl_serialize(io)
          @peer.tl_serialize(io, false)
          @id.tl_serialize(io, true)
        end

        def return_type
          Root::TypeUpdates
        end
      end

      class SendVote < TLRequest
        CONSTRUCTOR_ID = 0x10EA6184

        getter peer : Root::TypeInputPeer
        getter msg_id : Int32
        getter options : Array(Bytes)

        def initialize(
          peer : Root::TypeInputPeer,
          msg_id : Int32,
          options : Array(Bytes)
        )
          @peer = peer
          @msg_id = msg_id
          @options = options
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @msg_id.tl_serialize(io, true)
          @options.tl_serialize(io, false)
        end

        def return_type
          Root::TypeUpdates
        end
      end

      class GetPollResults < TLRequest
        CONSTRUCTOR_ID = 0x73BB643B

        getter peer : Root::TypeInputPeer
        getter msg_id : Int32

        def initialize(
          peer : Root::TypeInputPeer,
          msg_id : Int32
        )
          @peer = peer
          @msg_id = msg_id
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @msg_id.tl_serialize(io, true)
        end

        def return_type
          Root::TypeUpdates
        end
      end

      class GetOnlines < TLRequest
        CONSTRUCTOR_ID = 0x6E2BE050

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
          Root::TypeChatOnlines
        end
      end

      class GetStatsURL < TLRequest
        CONSTRUCTOR_ID = 0x812C2AE6

        getter peer : Root::TypeInputPeer
        getter params : Bytes
        getter dark : Bool | Nil

        def initialize(
          peer : Root::TypeInputPeer,
          params : Bytes | String | IO,
          dark : Bool | Nil = nil
        )
          @peer = peer
          @params = params
          @dark = dark
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!dark.nil? ? 1 : 0)
          ).tl_serialize(io)
          @peer.tl_serialize(io, false)
          @params.tl_serialize(io, true)
        end

        def return_type
          Root::TypeStatsURL
        end
      end

      class EditChatAbout < TLRequest
        CONSTRUCTOR_ID = 0xDEF60797

        getter peer : Root::TypeInputPeer
        getter about : Bytes

        def initialize(
          peer : Root::TypeInputPeer,
          about : Bytes | String | IO
        )
          @peer = peer
          @about = about
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @about.tl_serialize(io, true)
        end

        def return_type
          Bool
        end
      end

      class EditChatDefaultBannedRights < TLRequest
        CONSTRUCTOR_ID = 0xA5866B41

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @banned_rights.tl_serialize(io, false)
        end

        def return_type
          Root::TypeUpdates
        end
      end

      class GetEmojiKeywords < TLRequest
        CONSTRUCTOR_ID = 0x35A0E062

        getter lang_code : Bytes

        def initialize(
          lang_code : Bytes | String | IO
        )
          @lang_code = lang_code
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @lang_code.tl_serialize(io, true)
        end

        def return_type
          Root::TypeEmojiKeywordsDifference
        end
      end

      class GetEmojiKeywordsDifference < TLRequest
        CONSTRUCTOR_ID = 0x1508B6AF

        getter lang_code : Bytes
        getter from_version : Int32

        def initialize(
          lang_code : Bytes | String | IO,
          from_version : Int32
        )
          @lang_code = lang_code
          @from_version = from_version
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @lang_code.tl_serialize(io, true)
          @from_version.tl_serialize(io, true)
        end

        def return_type
          Root::TypeEmojiKeywordsDifference
        end
      end

      class GetEmojiKeywordsLanguages < TLRequest
        CONSTRUCTOR_ID = 0x4E9963B2

        getter lang_codes : Array(Bytes)

        def initialize(
          lang_codes : Array(Bytes)
        )
          @lang_codes = lang_codes
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @lang_codes.tl_serialize(io, false)
        end

        def return_type
          Array(Root::TypeEmojiLanguage)
        end
      end

      class GetEmojiURL < TLRequest
        CONSTRUCTOR_ID = 0xD5B10C26

        getter lang_code : Bytes

        def initialize(
          lang_code : Bytes | String | IO
        )
          @lang_code = lang_code
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @lang_code.tl_serialize(io, true)
        end

        def return_type
          Root::TypeEmojiURL
        end
      end

      class GetSearchCounters < TLRequest
        CONSTRUCTOR_ID = 0x732EEF00

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @filters.tl_serialize(io, false)
        end

        def return_type
          Array(Messages::TypeSearchCounter)
        end
      end

      class RequestUrlAuth < TLRequest
        CONSTRUCTOR_ID = 0x198FB446

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
          @msg_id = msg_id
          @button_id = button_id
          @url = url
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!peer.nil? ? 2 : 0) |
              (!msg_id.nil? ? 2 : 0) |
              (!button_id.nil? ? 2 : 0) |
              (!url.nil? ? 4 : 0)
          ).tl_serialize(io)
          @peer.tl_serialize(io, false) unless @peer.nil?
          @msg_id.tl_serialize(io, true) unless @msg_id.nil?
          @button_id.tl_serialize(io, true) unless @button_id.nil?
          @url.tl_serialize(io, true) unless @url.nil?
        end

        def return_type
          Root::TypeUrlAuthResult
        end
      end

      class AcceptUrlAuth < TLRequest
        CONSTRUCTOR_ID = 0xB12C7125

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
          @msg_id = msg_id
          @button_id = button_id
          @url = url
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!write_allowed.nil? ? 1 : 0) |
              (!peer.nil? ? 2 : 0) |
              (!msg_id.nil? ? 2 : 0) |
              (!button_id.nil? ? 2 : 0) |
              (!url.nil? ? 4 : 0)
          ).tl_serialize(io)
          @peer.tl_serialize(io, false) unless @peer.nil?
          @msg_id.tl_serialize(io, true) unless @msg_id.nil?
          @button_id.tl_serialize(io, true) unless @button_id.nil?
          @url.tl_serialize(io, true) unless @url.nil?
        end

        def return_type
          Root::TypeUrlAuthResult
        end
      end

      class HidePeerSettingsBar < TLRequest
        CONSTRUCTOR_ID = 0x4FACB138

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
          Bool
        end
      end

      class GetScheduledHistory < TLRequest
        CONSTRUCTOR_ID = 0xF516760B

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @hash.tl_serialize(io, true)
        end

        def return_type
          Messages::TypeMessages
        end
      end

      class GetScheduledMessages < TLRequest
        CONSTRUCTOR_ID = 0xBDBB0464

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @id.tl_serialize(io, false)
        end

        def return_type
          Messages::TypeMessages
        end
      end

      class SendScheduledMessages < TLRequest
        CONSTRUCTOR_ID = 0xBD38850A

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @id.tl_serialize(io, false)
        end

        def return_type
          Root::TypeUpdates
        end
      end

      class DeleteScheduledMessages < TLRequest
        CONSTRUCTOR_ID = 0x59AE2B16

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @id.tl_serialize(io, false)
        end

        def return_type
          Root::TypeUpdates
        end
      end

      class GetPollVotes < TLRequest
        CONSTRUCTOR_ID = 0xB86E380E

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
          @id = id
          @limit = limit
          @option = TL::Utils.parse_bytes(option)
          @offset = offset
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!option.nil? ? 1 : 0) |
              (!offset.nil? ? 2 : 0)
          ).tl_serialize(io)
          @peer.tl_serialize(io, false)
          @id.tl_serialize(io, true)
          @option.tl_serialize(io, true) unless @option.nil?
          @offset.tl_serialize(io, true) unless @offset.nil?
          @limit.tl_serialize(io, true)
        end

        def return_type
          Messages::TypeVotesList
        end
      end

      class ToggleStickerSets < TLRequest
        CONSTRUCTOR_ID = 0xB5052FEA

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!uninstall.nil? ? 1 : 0) |
              (!archive.nil? ? 2 : 0) |
              (!unarchive.nil? ? 4 : 0)
          ).tl_serialize(io)
          @stickersets.tl_serialize(io, false)
        end

        def return_type
          Bool
        end
      end

      class GetDialogFilters < TLRequest
        CONSTRUCTOR_ID = 0xF19ED96D

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
        end

        def return_type
          Array(Root::TypeDialogFilter)
        end
      end

      class GetSuggestedDialogFilters < TLRequest
        CONSTRUCTOR_ID = 0xA29CD42C

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
        end

        def return_type
          Array(Root::TypeDialogFilterSuggested)
        end
      end

      class UpdateDialogFilter < TLRequest
        CONSTRUCTOR_ID = 0x1AD4A04A

        getter id : Int32
        getter filter : Root::TypeDialogFilter | Nil

        def initialize(
          id : Int32,
          filter : Root::TypeDialogFilter | Nil = nil
        )
          @id = id
          @filter = filter
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!filter.nil? ? 1 : 0)
          ).tl_serialize(io)
          @id.tl_serialize(io, true)
          @filter.tl_serialize(io, false) unless @filter.nil?
        end

        def return_type
          Bool
        end
      end

      class UpdateDialogFiltersOrder < TLRequest
        CONSTRUCTOR_ID = 0xC563C1E4

        getter order : Array(Int32)

        def initialize(
          order : Array(Int32)
        )
          @order = order
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @order.tl_serialize(io, false)
        end

        def return_type
          Bool
        end
      end

      class GetOldFeaturedStickers < TLRequest
        CONSTRUCTOR_ID = 0x7ED094A1

        getter offset : Int32
        getter limit : Int32
        getter hash : Int64

        def initialize(
          offset : Int32,
          limit : Int32,
          hash : Int64
        )
          @offset = offset
          @limit = limit
          @hash = hash
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @offset.tl_serialize(io, true)
          @limit.tl_serialize(io, true)
          @hash.tl_serialize(io, true)
        end

        def return_type
          Messages::TypeFeaturedStickers
        end
      end

      class GetReplies < TLRequest
        CONSTRUCTOR_ID = 0x22DDD30C

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
          @msg_id = msg_id
          @offset_id = offset_id
          @offset_date = offset_date
          @add_offset = add_offset
          @limit = limit
          @max_id = max_id
          @min_id = min_id
          @hash = hash
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @msg_id.tl_serialize(io, true)
          @offset_id.tl_serialize(io, true)
          @offset_date.tl_serialize(io, true)
          @add_offset.tl_serialize(io, true)
          @limit.tl_serialize(io, true)
          @max_id.tl_serialize(io, true)
          @min_id.tl_serialize(io, true)
          @hash.tl_serialize(io, true)
        end

        def return_type
          Messages::TypeMessages
        end
      end

      class GetDiscussionMessage < TLRequest
        CONSTRUCTOR_ID = 0x446972FD

        getter peer : Root::TypeInputPeer
        getter msg_id : Int32

        def initialize(
          peer : Root::TypeInputPeer,
          msg_id : Int32
        )
          @peer = peer
          @msg_id = msg_id
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @msg_id.tl_serialize(io, true)
        end

        def return_type
          Messages::TypeDiscussionMessage
        end
      end

      class ReadDiscussion < TLRequest
        CONSTRUCTOR_ID = 0xF731A9F4

        getter peer : Root::TypeInputPeer
        getter msg_id : Int32
        getter read_max_id : Int32

        def initialize(
          peer : Root::TypeInputPeer,
          msg_id : Int32,
          read_max_id : Int32
        )
          @peer = peer
          @msg_id = msg_id
          @read_max_id = read_max_id
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @msg_id.tl_serialize(io, true)
          @read_max_id.tl_serialize(io, true)
        end

        def return_type
          Bool
        end
      end

      class UnpinAllMessages < TLRequest
        CONSTRUCTOR_ID = 0xF025BC8B

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
          Messages::TypeAffectedHistory
        end
      end

      class DeleteChat < TLRequest
        CONSTRUCTOR_ID = 0x5BD0EE50

        getter chat_id : Int64

        def initialize(
          chat_id : Int64
        )
          @chat_id = chat_id
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @chat_id.tl_serialize(io, true)
        end

        def return_type
          Bool
        end
      end

      class DeletePhoneCallHistory < TLRequest
        CONSTRUCTOR_ID = 0xF9CBE409

        getter revoke : Bool | Nil

        def initialize(
          revoke : Bool | Nil = nil
        )
          @revoke = revoke
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!revoke.nil? ? 1 : 0)
          ).tl_serialize(io)
        end

        def return_type
          Messages::TypeAffectedFoundMessages
        end
      end

      class CheckHistoryImport < TLRequest
        CONSTRUCTOR_ID = 0x43FE19F3

        getter import_head : Bytes

        def initialize(
          import_head : Bytes | String | IO
        )
          @import_head = import_head
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @import_head.tl_serialize(io, true)
        end

        def return_type
          Messages::TypeHistoryImportParsed
        end
      end

      class InitHistoryImport < TLRequest
        CONSTRUCTOR_ID = 0x34090C3B

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
          @media_count = media_count
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @file.tl_serialize(io, false)
          @media_count.tl_serialize(io, true)
        end

        def return_type
          Messages::TypeHistoryImport
        end
      end

      class UploadImportedMedia < TLRequest
        CONSTRUCTOR_ID = 0x2A862092

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
          @file_name = file_name
          @media = media
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @import_id.tl_serialize(io, true)
          @file_name.tl_serialize(io, true)
          @media.tl_serialize(io, false)
        end

        def return_type
          Root::TypeMessageMedia
        end
      end

      class StartHistoryImport < TLRequest
        CONSTRUCTOR_ID = 0xB43DF344

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @import_id.tl_serialize(io, true)
        end

        def return_type
          Bool
        end
      end

      class GetExportedChatInvites < TLRequest
        CONSTRUCTOR_ID = 0xA2B5A3F6

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
          @limit = limit
          @revoked = revoked
          @offset_date = offset_date
          @offset_link = offset_link
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!revoked.nil? ? 8 : 0) |
              (!offset_date.nil? ? 4 : 0) |
              (!offset_link.nil? ? 4 : 0)
          ).tl_serialize(io)
          @peer.tl_serialize(io, false)
          @admin_id.tl_serialize(io, false)
          @offset_date.tl_serialize(io, true) unless @offset_date.nil?
          @offset_link.tl_serialize(io, true) unless @offset_link.nil?
          @limit.tl_serialize(io, true)
        end

        def return_type
          Messages::TypeExportedChatInvites
        end
      end

      class GetExportedChatInvite < TLRequest
        CONSTRUCTOR_ID = 0x73746F5C

        getter peer : Root::TypeInputPeer
        getter link : Bytes

        def initialize(
          peer : Root::TypeInputPeer,
          link : Bytes | String | IO
        )
          @peer = peer
          @link = link
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @link.tl_serialize(io, true)
        end

        def return_type
          Messages::TypeExportedChatInvite
        end
      end

      class EditExportedChatInvite < TLRequest
        CONSTRUCTOR_ID = 0x02E4FFBE

        getter peer : Root::TypeInputPeer
        getter link : Bytes
        getter revoked : Bool | Nil
        getter expire_date : Int32 | Nil
        getter usage_limit : Int32 | Nil

        def initialize(
          peer : Root::TypeInputPeer,
          link : Bytes | String | IO,
          revoked : Bool | Nil = nil,
          expire_date : Int32 | Nil = nil,
          usage_limit : Int32 | Nil = nil
        )
          @peer = peer
          @link = link
          @revoked = revoked
          @expire_date = expire_date
          @usage_limit = usage_limit
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!revoked.nil? ? 4 : 0) |
              (!expire_date.nil? ? 1 : 0) |
              (!usage_limit.nil? ? 2 : 0)
          ).tl_serialize(io)
          @peer.tl_serialize(io, false)
          @link.tl_serialize(io, true)
          @expire_date.tl_serialize(io, true) unless @expire_date.nil?
          @usage_limit.tl_serialize(io, true) unless @usage_limit.nil?
        end

        def return_type
          Messages::TypeExportedChatInvite
        end
      end

      class DeleteRevokedExportedChatInvites < TLRequest
        CONSTRUCTOR_ID = 0x56987BD5

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @admin_id.tl_serialize(io, false)
        end

        def return_type
          Bool
        end
      end

      class DeleteExportedChatInvite < TLRequest
        CONSTRUCTOR_ID = 0xD464A42B

        getter peer : Root::TypeInputPeer
        getter link : Bytes

        def initialize(
          peer : Root::TypeInputPeer,
          link : Bytes | String | IO
        )
          @peer = peer
          @link = link
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @link.tl_serialize(io, true)
        end

        def return_type
          Bool
        end
      end

      class GetAdminsWithInvites < TLRequest
        CONSTRUCTOR_ID = 0x3920E6EF

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
          Messages::TypeChatAdminsWithInvites
        end
      end

      class GetChatInviteImporters < TLRequest
        CONSTRUCTOR_ID = 0x26FB7289

        getter peer : Root::TypeInputPeer
        getter link : Bytes
        getter offset_date : Int32
        getter offset_user : Root::TypeInputUser
        getter limit : Int32

        def initialize(
          peer : Root::TypeInputPeer,
          link : Bytes | String | IO,
          offset_date : Int32,
          offset_user : Root::TypeInputUser,
          limit : Int32
        )
          @peer = peer
          @link = link
          @offset_date = offset_date
          @offset_user = offset_user
          @limit = limit
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @link.tl_serialize(io, true)
          @offset_date.tl_serialize(io, true)
          @offset_user.tl_serialize(io, false)
          @limit.tl_serialize(io, true)
        end

        def return_type
          Messages::TypeChatInviteImporters
        end
      end

      class SetHistoryTTL < TLRequest
        CONSTRUCTOR_ID = 0xB80E5FE4

        getter peer : Root::TypeInputPeer
        getter period : Int32

        def initialize(
          peer : Root::TypeInputPeer,
          period : Int32
        )
          @peer = peer
          @period = period
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @period.tl_serialize(io, true)
        end

        def return_type
          Root::TypeUpdates
        end
      end

      class CheckHistoryImportPeer < TLRequest
        CONSTRUCTOR_ID = 0x5DC60F03

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
          Messages::TypeCheckedHistoryImportPeer
        end
      end

      class SetChatTheme < TLRequest
        CONSTRUCTOR_ID = 0xE63BE13F

        getter peer : Root::TypeInputPeer
        getter emoticon : Bytes

        def initialize(
          peer : Root::TypeInputPeer,
          emoticon : Bytes | String | IO
        )
          @peer = peer
          @emoticon = emoticon
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @emoticon.tl_serialize(io, true)
        end

        def return_type
          Root::TypeUpdates
        end
      end

      class GetMessageReadParticipants < TLRequest
        CONSTRUCTOR_ID = 0x2C6F97B7

        getter peer : Root::TypeInputPeer
        getter msg_id : Int32

        def initialize(
          peer : Root::TypeInputPeer,
          msg_id : Int32
        )
          @peer = peer
          @msg_id = msg_id
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @peer.tl_serialize(io, false)
          @msg_id.tl_serialize(io, true)
        end

        def return_type
          Array(Int64)
        end
      end
    end
  end
end
