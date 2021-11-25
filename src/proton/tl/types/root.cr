# Copyright 2021 - Chris Watson and contributors.
#
# Licensed under the MIT License. You should have received a copy of the license
# with this project. By using this project you agree to abide by all terms
# contained therein.
#
# This module contains generated, raw MTProto types for Telegram's user API.
# It is not advised to modify this code directly, other than to test
# changes. All changes should be made in the code generator.

# As this is the root, we import everything else here.
require "./account"
require "./auth"
require "./bots"
require "./channels"
require "./contacts"
require "./folders"
require "./help"
require "./langpack"
require "./messages"
require "./payments"
require "./phone"
require "./photos"
require "./stats"
require "./stickers"
require "./storage"
require "./updates"
require "./upload"
require "./users"

module Proton::TL
  module Root
    abstract class TypeInputPeer < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x7F3B18EA
          InputPeerEmpty.tl_deserialize(io, bare)
        when 0x7DA07EC9
          InputPeerSelf.tl_deserialize(io, bare)
        when 0x35A95CB9
          InputPeerChat.tl_deserialize(io, bare)
        when 0xDDE8A54C
          InputPeerUser.tl_deserialize(io, bare)
        when 0x27BCBBFC
          InputPeerChannel.tl_deserialize(io, bare)
        when 0xA87B0A1C
          InputPeerUserFromMessage.tl_deserialize(io, bare)
        when 0xBD2A0840
          InputPeerChannelFromMessage.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInputUser < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xB98886CF
          InputUserEmpty.tl_deserialize(io, bare)
        when 0xF7C1B13F
          InputUserSelf.tl_deserialize(io, bare)
        when 0xF21158C6
          InputUser.tl_deserialize(io, bare)
        when 0x1DA448E2
          InputUserFromMessage.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInputContact < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xF392B7F4
          InputPhoneContact.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInputFile < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xF52FF27F
          InputFile.tl_deserialize(io, bare)
        when 0xFA4F0BB5
          InputFileBig.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInputMedia < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x9664F57F
          InputMediaEmpty.tl_deserialize(io, bare)
        when 0x1E287D04
          InputMediaUploadedPhoto.tl_deserialize(io, bare)
        when 0xB3BA0635
          InputMediaPhoto.tl_deserialize(io, bare)
        when 0xF9C44144
          InputMediaGeoPoint.tl_deserialize(io, bare)
        when 0xF8AB7DFB
          InputMediaContact.tl_deserialize(io, bare)
        when 0x5B38C6C1
          InputMediaUploadedDocument.tl_deserialize(io, bare)
        when 0x33473058
          InputMediaDocument.tl_deserialize(io, bare)
        when 0xC13D1C11
          InputMediaVenue.tl_deserialize(io, bare)
        when 0xE5BBFE1A
          InputMediaPhotoExternal.tl_deserialize(io, bare)
        when 0xFB52DC99
          InputMediaDocumentExternal.tl_deserialize(io, bare)
        when 0xD33F43F3
          InputMediaGame.tl_deserialize(io, bare)
        when 0xD9799874
          InputMediaInvoice.tl_deserialize(io, bare)
        when 0x971FA843
          InputMediaGeoLive.tl_deserialize(io, bare)
        when 0x0F94E5F1
          InputMediaPoll.tl_deserialize(io, bare)
        when 0xE66FBF7B
          InputMediaDice.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInputChatPhoto < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x1CA48F57
          InputChatPhotoEmpty.tl_deserialize(io, bare)
        when 0xC642724E
          InputChatUploadedPhoto.tl_deserialize(io, bare)
        when 0x8953AD37
          InputChatPhoto.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInputGeoPoint < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xE4C123D6
          InputGeoPointEmpty.tl_deserialize(io, bare)
        when 0x48222FAF
          InputGeoPoint.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInputPhoto < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x1CD7BF0D
          InputPhotoEmpty.tl_deserialize(io, bare)
        when 0x3BB3B94A
          InputPhoto.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInputFileLocation < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xDFDAABE1
          InputFileLocation.tl_deserialize(io, bare)
        when 0xF5235D55
          InputEncryptedFileLocation.tl_deserialize(io, bare)
        when 0xBAD07584
          InputDocumentFileLocation.tl_deserialize(io, bare)
        when 0xCBC7EE28
          InputSecureFileLocation.tl_deserialize(io, bare)
        when 0x29BE5899
          InputTakeoutFileLocation.tl_deserialize(io, bare)
        when 0x40181FFE
          InputPhotoFileLocation.tl_deserialize(io, bare)
        when 0xD83466F3
          InputPhotoLegacyFileLocation.tl_deserialize(io, bare)
        when 0x37257E99
          InputPeerPhotoFileLocation.tl_deserialize(io, bare)
        when 0x9D84F3DB
          InputStickerSetThumb.tl_deserialize(io, bare)
        when 0x0598A92A
          InputGroupCallStream.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePeer < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x59511722
          PeerUser.tl_deserialize(io, bare)
        when 0x36C6019A
          PeerChat.tl_deserialize(io, bare)
        when 0xA2A5371E
          PeerChannel.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeUser < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xD3BC4B7A
          UserEmpty.tl_deserialize(io, bare)
        when 0x3FF6ECB0
          User.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeUserProfilePhoto < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x4F11BAE1
          UserProfilePhotoEmpty.tl_deserialize(io, bare)
        when 0x82D1F706
          UserProfilePhoto.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeUserStatus < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x09D05049
          UserStatusEmpty.tl_deserialize(io, bare)
        when 0xEDB93949
          UserStatusOnline.tl_deserialize(io, bare)
        when 0x008C703F
          UserStatusOffline.tl_deserialize(io, bare)
        when 0xE26F42F1
          UserStatusRecently.tl_deserialize(io, bare)
        when 0x07BF09FC
          UserStatusLastWeek.tl_deserialize(io, bare)
        when 0x77EBC742
          UserStatusLastMonth.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeChat < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x29562865
          ChatEmpty.tl_deserialize(io, bare)
        when 0x41CBF256
          Chat.tl_deserialize(io, bare)
        when 0x6592A1A7
          ChatForbidden.tl_deserialize(io, bare)
        when 0x8261AC61
          Channel.tl_deserialize(io, bare)
        when 0x17D493D5
          ChannelForbidden.tl_deserialize(io, bare)
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
        when 0x4DBDC099
          ChatFull.tl_deserialize(io, bare)
        when 0xE9B27A17
          ChannelFull.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeChatParticipant < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xC02D4007
          ChatParticipant.tl_deserialize(io, bare)
        when 0xE46BCEE4
          ChatParticipantCreator.tl_deserialize(io, bare)
        when 0xA0933F5B
          ChatParticipantAdmin.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeChatParticipants < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x8763D3E1
          ChatParticipantsForbidden.tl_deserialize(io, bare)
        when 0x3CBC93F8
          ChatParticipants.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeChatPhoto < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x37C1011C
          ChatPhotoEmpty.tl_deserialize(io, bare)
        when 0x1C6E1C11
          ChatPhoto.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeMessage < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x90A6CA84
          MessageEmpty.tl_deserialize(io, bare)
        when 0x85D6CBE2
          Message.tl_deserialize(io, bare)
        when 0x2B085862
          MessageService.tl_deserialize(io, bare)
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
        when 0x3DED6320
          MessageMediaEmpty.tl_deserialize(io, bare)
        when 0x695150D7
          MessageMediaPhoto.tl_deserialize(io, bare)
        when 0x56E0D474
          MessageMediaGeo.tl_deserialize(io, bare)
        when 0x70322949
          MessageMediaContact.tl_deserialize(io, bare)
        when 0x9F84F49E
          MessageMediaUnsupported.tl_deserialize(io, bare)
        when 0x9CB070D7
          MessageMediaDocument.tl_deserialize(io, bare)
        when 0xA32DD600
          MessageMediaWebPage.tl_deserialize(io, bare)
        when 0x2EC0533F
          MessageMediaVenue.tl_deserialize(io, bare)
        when 0xFDB19008
          MessageMediaGame.tl_deserialize(io, bare)
        when 0x84551347
          MessageMediaInvoice.tl_deserialize(io, bare)
        when 0xB940C666
          MessageMediaGeoLive.tl_deserialize(io, bare)
        when 0x4BD6E798
          MessageMediaPoll.tl_deserialize(io, bare)
        when 0x3F7EE58B
          MessageMediaDice.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeMessageAction < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xB6AEF7B0
          MessageActionEmpty.tl_deserialize(io, bare)
        when 0xBD47CBAD
          MessageActionChatCreate.tl_deserialize(io, bare)
        when 0xB5A1CE5A
          MessageActionChatEditTitle.tl_deserialize(io, bare)
        when 0x7FCB13A8
          MessageActionChatEditPhoto.tl_deserialize(io, bare)
        when 0x95E3FBEF
          MessageActionChatDeletePhoto.tl_deserialize(io, bare)
        when 0x15CEFD00
          MessageActionChatAddUser.tl_deserialize(io, bare)
        when 0xA43F30CC
          MessageActionChatDeleteUser.tl_deserialize(io, bare)
        when 0x031224C3
          MessageActionChatJoinedByLink.tl_deserialize(io, bare)
        when 0x95D2AC92
          MessageActionChannelCreate.tl_deserialize(io, bare)
        when 0xE1037F92
          MessageActionChatMigrateTo.tl_deserialize(io, bare)
        when 0xEA3948E9
          MessageActionChannelMigrateFrom.tl_deserialize(io, bare)
        when 0x94BD38ED
          MessageActionPinMessage.tl_deserialize(io, bare)
        when 0x9FBAB604
          MessageActionHistoryClear.tl_deserialize(io, bare)
        when 0x92A72876
          MessageActionGameScore.tl_deserialize(io, bare)
        when 0x8F31B327
          MessageActionPaymentSentMe.tl_deserialize(io, bare)
        when 0x40699CD0
          MessageActionPaymentSent.tl_deserialize(io, bare)
        when 0x80E11A7F
          MessageActionPhoneCall.tl_deserialize(io, bare)
        when 0x4792929B
          MessageActionScreenshotTaken.tl_deserialize(io, bare)
        when 0xFAE69F56
          MessageActionCustomAction.tl_deserialize(io, bare)
        when 0xABE9AFFE
          MessageActionBotAllowed.tl_deserialize(io, bare)
        when 0x1B287353
          MessageActionSecureValuesSentMe.tl_deserialize(io, bare)
        when 0xD95C6154
          MessageActionSecureValuesSent.tl_deserialize(io, bare)
        when 0xF3F25F76
          MessageActionContactSignUp.tl_deserialize(io, bare)
        when 0x98E0D697
          MessageActionGeoProximityReached.tl_deserialize(io, bare)
        when 0x7A0D7F42
          MessageActionGroupCall.tl_deserialize(io, bare)
        when 0x502F92F7
          MessageActionInviteToGroupCall.tl_deserialize(io, bare)
        when 0xAA1AFBFD
          MessageActionSetMessagesTTL.tl_deserialize(io, bare)
        when 0xB3A07661
          MessageActionGroupCallScheduled.tl_deserialize(io, bare)
        when 0xAA786345
          MessageActionSetChatTheme.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeDialog < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x2C171F72
          Dialog.tl_deserialize(io, bare)
        when 0x71BD134C
          DialogFolder.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePhoto < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x2331B22D
          PhotoEmpty.tl_deserialize(io, bare)
        when 0xFB197A65
          Photo.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePhotoSize < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x0E17E23C
          PhotoSizeEmpty.tl_deserialize(io, bare)
        when 0x75C78E60
          PhotoSize.tl_deserialize(io, bare)
        when 0x021E1AD6
          PhotoCachedSize.tl_deserialize(io, bare)
        when 0xE0B0BC2E
          PhotoStrippedSize.tl_deserialize(io, bare)
        when 0xFA3EFB95
          PhotoSizeProgressive.tl_deserialize(io, bare)
        when 0xD8214D41
          PhotoPathSize.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeGeoPoint < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x1117DD5F
          GeoPointEmpty.tl_deserialize(io, bare)
        when 0xB2A2F663
          GeoPoint.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInputNotifyPeer < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xB8BC5B0C
          InputNotifyPeer.tl_deserialize(io, bare)
        when 0x193B4417
          InputNotifyUsers.tl_deserialize(io, bare)
        when 0x4A95E84E
          InputNotifyChats.tl_deserialize(io, bare)
        when 0xB1DB7C7E
          InputNotifyBroadcasts.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInputPeerNotifySettings < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x9C3D198E
          InputPeerNotifySettings.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePeerNotifySettings < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xAF509D20
          PeerNotifySettings.tl_deserialize(io, bare)
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
        when 0x733F2961
          PeerSettings.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeWallPaper < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xA437C3ED
          WallPaper.tl_deserialize(io, bare)
        when 0xE0804116
          WallPaperNoFile.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeReportReason < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x58DBCAB8
          InputReportReasonSpam.tl_deserialize(io, bare)
        when 0x1E22C78D
          InputReportReasonViolence.tl_deserialize(io, bare)
        when 0x2E59D922
          InputReportReasonPornography.tl_deserialize(io, bare)
        when 0xADF44EE3
          InputReportReasonChildAbuse.tl_deserialize(io, bare)
        when 0xC1E4A2B1
          InputReportReasonOther.tl_deserialize(io, bare)
        when 0x9B89F93A
          InputReportReasonCopyright.tl_deserialize(io, bare)
        when 0xDBD4FEED
          InputReportReasonGeoIrrelevant.tl_deserialize(io, bare)
        when 0xF5DDD6E7
          InputReportReasonFake.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeUserFull < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xD697FF05
          UserFull.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeContact < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x145ADE0B
          Contact.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeImportedContact < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xC13E3C50
          ImportedContact.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeContactStatus < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x16D9703B
          ContactStatus.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeMessagesFilter < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x57E2F66C
          InputMessagesFilterEmpty.tl_deserialize(io, bare)
        when 0x9609A51C
          InputMessagesFilterPhotos.tl_deserialize(io, bare)
        when 0x9FC00E65
          InputMessagesFilterVideo.tl_deserialize(io, bare)
        when 0x56E9F0E4
          InputMessagesFilterPhotoVideo.tl_deserialize(io, bare)
        when 0x9EDDF188
          InputMessagesFilterDocument.tl_deserialize(io, bare)
        when 0x7EF0DD87
          InputMessagesFilterUrl.tl_deserialize(io, bare)
        when 0xFFC86587
          InputMessagesFilterGif.tl_deserialize(io, bare)
        when 0x50F5C392
          InputMessagesFilterVoice.tl_deserialize(io, bare)
        when 0x3751B49E
          InputMessagesFilterMusic.tl_deserialize(io, bare)
        when 0x3A20ECB8
          InputMessagesFilterChatPhotos.tl_deserialize(io, bare)
        when 0x80C99768
          InputMessagesFilterPhoneCalls.tl_deserialize(io, bare)
        when 0x7A7C17A4
          InputMessagesFilterRoundVoice.tl_deserialize(io, bare)
        when 0xB549DA53
          InputMessagesFilterRoundVideo.tl_deserialize(io, bare)
        when 0xC1F8E69A
          InputMessagesFilterMyMentions.tl_deserialize(io, bare)
        when 0xE7026D0D
          InputMessagesFilterGeo.tl_deserialize(io, bare)
        when 0xE062DB83
          InputMessagesFilterContacts.tl_deserialize(io, bare)
        when 0x1BB00451
          InputMessagesFilterPinned.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeUpdate < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x1F2B0AFD
          UpdateNewMessage.tl_deserialize(io, bare)
        when 0x4E90BFD6
          UpdateMessageID.tl_deserialize(io, bare)
        when 0xA20DB0E5
          UpdateDeleteMessages.tl_deserialize(io, bare)
        when 0xC01E857F
          UpdateUserTyping.tl_deserialize(io, bare)
        when 0x83487AF0
          UpdateChatUserTyping.tl_deserialize(io, bare)
        when 0x07761198
          UpdateChatParticipants.tl_deserialize(io, bare)
        when 0xE5BDF8DE
          UpdateUserStatus.tl_deserialize(io, bare)
        when 0xC3F202E0
          UpdateUserName.tl_deserialize(io, bare)
        when 0xF227868C
          UpdateUserPhoto.tl_deserialize(io, bare)
        when 0x12BCBD9A
          UpdateNewEncryptedMessage.tl_deserialize(io, bare)
        when 0x1710F156
          UpdateEncryptedChatTyping.tl_deserialize(io, bare)
        when 0xB4A2E88D
          UpdateEncryption.tl_deserialize(io, bare)
        when 0x38FE25B7
          UpdateEncryptedMessagesRead.tl_deserialize(io, bare)
        when 0x3DDA5451
          UpdateChatParticipantAdd.tl_deserialize(io, bare)
        when 0xE32F3D77
          UpdateChatParticipantDelete.tl_deserialize(io, bare)
        when 0x8E5E9873
          UpdateDcOptions.tl_deserialize(io, bare)
        when 0xBEC268EF
          UpdateNotifySettings.tl_deserialize(io, bare)
        when 0xEBE46819
          UpdateServiceNotification.tl_deserialize(io, bare)
        when 0xEE3B272A
          UpdatePrivacy.tl_deserialize(io, bare)
        when 0x05492A13
          UpdateUserPhone.tl_deserialize(io, bare)
        when 0x9C974FDF
          UpdateReadHistoryInbox.tl_deserialize(io, bare)
        when 0x2F2F21BF
          UpdateReadHistoryOutbox.tl_deserialize(io, bare)
        when 0x7F891213
          UpdateWebPage.tl_deserialize(io, bare)
        when 0x68C13933
          UpdateReadMessagesContents.tl_deserialize(io, bare)
        when 0x108D941F
          UpdateChannelTooLong.tl_deserialize(io, bare)
        when 0x635B4C09
          UpdateChannel.tl_deserialize(io, bare)
        when 0x62BA04D9
          UpdateNewChannelMessage.tl_deserialize(io, bare)
        when 0x922E6E10
          UpdateReadChannelInbox.tl_deserialize(io, bare)
        when 0xC32D5B12
          UpdateDeleteChannelMessages.tl_deserialize(io, bare)
        when 0xF226AC08
          UpdateChannelMessageViews.tl_deserialize(io, bare)
        when 0xD7CA61A2
          UpdateChatParticipantAdmin.tl_deserialize(io, bare)
        when 0x688A30AA
          UpdateNewStickerSet.tl_deserialize(io, bare)
        when 0x0BB2D201
          UpdateStickerSetsOrder.tl_deserialize(io, bare)
        when 0x43AE3DEC
          UpdateStickerSets.tl_deserialize(io, bare)
        when 0x9375341E
          UpdateSavedGifs.tl_deserialize(io, bare)
        when 0x496F379C
          UpdateBotInlineQuery.tl_deserialize(io, bare)
        when 0x12F12A07
          UpdateBotInlineSend.tl_deserialize(io, bare)
        when 0x1B3F4DF7
          UpdateEditChannelMessage.tl_deserialize(io, bare)
        when 0xB9CFC48D
          UpdateBotCallbackQuery.tl_deserialize(io, bare)
        when 0xE40370A3
          UpdateEditMessage.tl_deserialize(io, bare)
        when 0x691E9052
          UpdateInlineBotCallbackQuery.tl_deserialize(io, bare)
        when 0xB75F99A9
          UpdateReadChannelOutbox.tl_deserialize(io, bare)
        when 0xEE2BB969
          UpdateDraftMessage.tl_deserialize(io, bare)
        when 0x571D2742
          UpdateReadFeaturedStickers.tl_deserialize(io, bare)
        when 0x9A422C20
          UpdateRecentStickers.tl_deserialize(io, bare)
        when 0xA229DD06
          UpdateConfig.tl_deserialize(io, bare)
        when 0x3354678F
          UpdatePtsChanged.tl_deserialize(io, bare)
        when 0x2F2BA99F
          UpdateChannelWebPage.tl_deserialize(io, bare)
        when 0x6E6FE51C
          UpdateDialogPinned.tl_deserialize(io, bare)
        when 0xFA0F3CA2
          UpdatePinnedDialogs.tl_deserialize(io, bare)
        when 0x8317C0C3
          UpdateBotWebhookJSON.tl_deserialize(io, bare)
        when 0x9B9240A6
          UpdateBotWebhookJSONQuery.tl_deserialize(io, bare)
        when 0xB5AEFD7D
          UpdateBotShippingQuery.tl_deserialize(io, bare)
        when 0x8CAA9A96
          UpdateBotPrecheckoutQuery.tl_deserialize(io, bare)
        when 0xAB0F6B1E
          UpdatePhoneCall.tl_deserialize(io, bare)
        when 0x46560264
          UpdateLangPackTooLong.tl_deserialize(io, bare)
        when 0x56022F4D
          UpdateLangPack.tl_deserialize(io, bare)
        when 0xE511996D
          UpdateFavedStickers.tl_deserialize(io, bare)
        when 0x44BDD535
          UpdateChannelReadMessagesContents.tl_deserialize(io, bare)
        when 0x7084A7BE
          UpdateContactsReset.tl_deserialize(io, bare)
        when 0xB23FC698
          UpdateChannelAvailableMessages.tl_deserialize(io, bare)
        when 0xE16459C3
          UpdateDialogUnreadMark.tl_deserialize(io, bare)
        when 0xACA1657B
          UpdateMessagePoll.tl_deserialize(io, bare)
        when 0x54C01850
          UpdateChatDefaultBannedRights.tl_deserialize(io, bare)
        when 0x19360DC0
          UpdateFolderPeers.tl_deserialize(io, bare)
        when 0x6A7E7366
          UpdatePeerSettings.tl_deserialize(io, bare)
        when 0xB4AFCFB0
          UpdatePeerLocated.tl_deserialize(io, bare)
        when 0x39A51DFB
          UpdateNewScheduledMessage.tl_deserialize(io, bare)
        when 0x90866CEE
          UpdateDeleteScheduledMessages.tl_deserialize(io, bare)
        when 0x8216FBA3
          UpdateTheme.tl_deserialize(io, bare)
        when 0x871FB939
          UpdateGeoLiveViewed.tl_deserialize(io, bare)
        when 0x564FE691
          UpdateLoginToken.tl_deserialize(io, bare)
        when 0x106395C9
          UpdateMessagePollVote.tl_deserialize(io, bare)
        when 0x26FFDE7D
          UpdateDialogFilter.tl_deserialize(io, bare)
        when 0xA5D72105
          UpdateDialogFilterOrder.tl_deserialize(io, bare)
        when 0x3504914F
          UpdateDialogFilters.tl_deserialize(io, bare)
        when 0x2661BF09
          UpdatePhoneCallSignalingData.tl_deserialize(io, bare)
        when 0xD29A27F4
          UpdateChannelMessageForwards.tl_deserialize(io, bare)
        when 0xD6B19546
          UpdateReadChannelDiscussionInbox.tl_deserialize(io, bare)
        when 0x695C9E7C
          UpdateReadChannelDiscussionOutbox.tl_deserialize(io, bare)
        when 0x246A4B22
          UpdatePeerBlocked.tl_deserialize(io, bare)
        when 0x8C88C923
          UpdateChannelUserTyping.tl_deserialize(io, bare)
        when 0xED85EAB5
          UpdatePinnedMessages.tl_deserialize(io, bare)
        when 0x5BB98608
          UpdatePinnedChannelMessages.tl_deserialize(io, bare)
        when 0xF89A6A4E
          UpdateChat.tl_deserialize(io, bare)
        when 0xF2EBDB4E
          UpdateGroupCallParticipants.tl_deserialize(io, bare)
        when 0x14B24500
          UpdateGroupCall.tl_deserialize(io, bare)
        when 0xBB9BB9A5
          UpdatePeerHistoryTTL.tl_deserialize(io, bare)
        when 0xD087663A
          UpdateChatParticipant.tl_deserialize(io, bare)
        when 0x985D3ABB
          UpdateChannelParticipant.tl_deserialize(io, bare)
        when 0xC4870A49
          UpdateBotStopped.tl_deserialize(io, bare)
        when 0x0B783982
          UpdateGroupCallConnection.tl_deserialize(io, bare)
        when 0x4D712F2E
          UpdateBotCommands.tl_deserialize(io, bare)
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
        when 0xE317AF7E
          UpdatesTooLong.tl_deserialize(io, bare)
        when 0x313BC7F8
          UpdateShortMessage.tl_deserialize(io, bare)
        when 0x4D6DEEA5
          UpdateShortChatMessage.tl_deserialize(io, bare)
        when 0x78D4DEC1
          UpdateShort.tl_deserialize(io, bare)
        when 0x725B04C3
          UpdatesCombined.tl_deserialize(io, bare)
        when 0x74AE4240
          Updates.tl_deserialize(io, bare)
        when 0x9015E101
          UpdateShortSentMessage.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeDcOption < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x18B7A10D
          DcOption.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeConfig < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x330B4067
          Config.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeNearestDc < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x8E1A1775
          NearestDc.tl_deserialize(io, bare)
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
        when 0xAB7EC0A0
          EncryptedChatEmpty.tl_deserialize(io, bare)
        when 0x66B25953
          EncryptedChatWaiting.tl_deserialize(io, bare)
        when 0x48F1D94C
          EncryptedChatRequested.tl_deserialize(io, bare)
        when 0x61F0D4C7
          EncryptedChat.tl_deserialize(io, bare)
        when 0x1E1C7C45
          EncryptedChatDiscarded.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInputEncryptedChat < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xF141B5E1
          InputEncryptedChat.tl_deserialize(io, bare)
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
        when 0xC21F497E
          EncryptedFileEmpty.tl_deserialize(io, bare)
        when 0x4A70994C
          EncryptedFile.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInputEncryptedFile < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x1837C364
          InputEncryptedFileEmpty.tl_deserialize(io, bare)
        when 0x64BD0306
          InputEncryptedFileUploaded.tl_deserialize(io, bare)
        when 0x5A17B5E5
          InputEncryptedFile.tl_deserialize(io, bare)
        when 0x2DC173C8
          InputEncryptedFileBigUploaded.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeEncryptedMessage < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xED18C118
          EncryptedMessage.tl_deserialize(io, bare)
        when 0x23734B06
          EncryptedMessageService.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInputDocument < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x72F0EAAE
          InputDocumentEmpty.tl_deserialize(io, bare)
        when 0x1ABFB575
          InputDocument.tl_deserialize(io, bare)
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
        when 0x36F8C871
          DocumentEmpty.tl_deserialize(io, bare)
        when 0x1E87342B
          Document.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeNotifyPeer < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x9FD40BD8
          NotifyPeer.tl_deserialize(io, bare)
        when 0xB4C83B4C
          NotifyUsers.tl_deserialize(io, bare)
        when 0xC007CEC3
          NotifyChats.tl_deserialize(io, bare)
        when 0xD612E8EF
          NotifyBroadcasts.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeSendMessageAction < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x16BF744E
          SendMessageTypingAction.tl_deserialize(io, bare)
        when 0xFD5EC8F5
          SendMessageCancelAction.tl_deserialize(io, bare)
        when 0xA187D66F
          SendMessageRecordVideoAction.tl_deserialize(io, bare)
        when 0xE9763AEC
          SendMessageUploadVideoAction.tl_deserialize(io, bare)
        when 0xD52F73F7
          SendMessageRecordAudioAction.tl_deserialize(io, bare)
        when 0xF351D7AB
          SendMessageUploadAudioAction.tl_deserialize(io, bare)
        when 0xD1D34A26
          SendMessageUploadPhotoAction.tl_deserialize(io, bare)
        when 0xAA0CD9E4
          SendMessageUploadDocumentAction.tl_deserialize(io, bare)
        when 0x176F8BA1
          SendMessageGeoLocationAction.tl_deserialize(io, bare)
        when 0x628CBC6F
          SendMessageChooseContactAction.tl_deserialize(io, bare)
        when 0xDD6A8F48
          SendMessageGamePlayAction.tl_deserialize(io, bare)
        when 0x88F27FBC
          SendMessageRecordRoundAction.tl_deserialize(io, bare)
        when 0x243E1C66
          SendMessageUploadRoundAction.tl_deserialize(io, bare)
        when 0xD92C2285
          SpeakingInGroupCallAction.tl_deserialize(io, bare)
        when 0xDBDA9246
          SendMessageHistoryImportAction.tl_deserialize(io, bare)
        when 0xB05AC6B1
          SendMessageChooseStickerAction.tl_deserialize(io, bare)
        when 0x6A3233B6
          SendMessageEmojiInteraction.tl_deserialize(io, bare)
        when 0xB665902E
          SendMessageEmojiInteractionSeen.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInputPrivacyKey < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x4F96CB18
          InputPrivacyKeyStatusTimestamp.tl_deserialize(io, bare)
        when 0xBDFB0426
          InputPrivacyKeyChatInvite.tl_deserialize(io, bare)
        when 0xFABADC5F
          InputPrivacyKeyPhoneCall.tl_deserialize(io, bare)
        when 0xDB9E70D2
          InputPrivacyKeyPhoneP2P.tl_deserialize(io, bare)
        when 0xA4DD4C08
          InputPrivacyKeyForwards.tl_deserialize(io, bare)
        when 0x5719BACC
          InputPrivacyKeyProfilePhoto.tl_deserialize(io, bare)
        when 0x0352DAFA
          InputPrivacyKeyPhoneNumber.tl_deserialize(io, bare)
        when 0xD1219BDD
          InputPrivacyKeyAddedByPhone.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePrivacyKey < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xBC2EAB30
          PrivacyKeyStatusTimestamp.tl_deserialize(io, bare)
        when 0x500E6DFA
          PrivacyKeyChatInvite.tl_deserialize(io, bare)
        when 0x3D662B7B
          PrivacyKeyPhoneCall.tl_deserialize(io, bare)
        when 0x39491CC8
          PrivacyKeyPhoneP2P.tl_deserialize(io, bare)
        when 0x69EC56A3
          PrivacyKeyForwards.tl_deserialize(io, bare)
        when 0x96151FED
          PrivacyKeyProfilePhoto.tl_deserialize(io, bare)
        when 0xD19AE46D
          PrivacyKeyPhoneNumber.tl_deserialize(io, bare)
        when 0x42FFD42B
          PrivacyKeyAddedByPhone.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInputPrivacyRule < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x0D09E07B
          InputPrivacyValueAllowContacts.tl_deserialize(io, bare)
        when 0x184B35CE
          InputPrivacyValueAllowAll.tl_deserialize(io, bare)
        when 0x131CC67F
          InputPrivacyValueAllowUsers.tl_deserialize(io, bare)
        when 0x0BA52007
          InputPrivacyValueDisallowContacts.tl_deserialize(io, bare)
        when 0xD66B66C9
          InputPrivacyValueDisallowAll.tl_deserialize(io, bare)
        when 0x90110467
          InputPrivacyValueDisallowUsers.tl_deserialize(io, bare)
        when 0x840649CF
          InputPrivacyValueAllowChatParticipants.tl_deserialize(io, bare)
        when 0xE94F0F86
          InputPrivacyValueDisallowChatParticipants.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePrivacyRule < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xFFFE1BAC
          PrivacyValueAllowContacts.tl_deserialize(io, bare)
        when 0x65427B82
          PrivacyValueAllowAll.tl_deserialize(io, bare)
        when 0xB8905FB2
          PrivacyValueAllowUsers.tl_deserialize(io, bare)
        when 0xF888FA1A
          PrivacyValueDisallowContacts.tl_deserialize(io, bare)
        when 0x8B73E763
          PrivacyValueDisallowAll.tl_deserialize(io, bare)
        when 0xE4621141
          PrivacyValueDisallowUsers.tl_deserialize(io, bare)
        when 0x6B134E8E
          PrivacyValueAllowChatParticipants.tl_deserialize(io, bare)
        when 0x41C87565
          PrivacyValueDisallowChatParticipants.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeAccountDaysTTL < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xB8D0AFDF
          AccountDaysTTL.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeDocumentAttribute < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x6C37C15C
          DocumentAttributeImageSize.tl_deserialize(io, bare)
        when 0x11B58939
          DocumentAttributeAnimated.tl_deserialize(io, bare)
        when 0x6319D612
          DocumentAttributeSticker.tl_deserialize(io, bare)
        when 0x0EF02CE6
          DocumentAttributeVideo.tl_deserialize(io, bare)
        when 0x9852F9C6
          DocumentAttributeAudio.tl_deserialize(io, bare)
        when 0x15590068
          DocumentAttributeFilename.tl_deserialize(io, bare)
        when 0x9801D2F7
          DocumentAttributeHasStickers.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeStickerPack < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x12B299D4
          StickerPack.tl_deserialize(io, bare)
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
        when 0xEB1477E8
          WebPageEmpty.tl_deserialize(io, bare)
        when 0xC586DA1C
          WebPagePending.tl_deserialize(io, bare)
        when 0xE89C45B2
          WebPage.tl_deserialize(io, bare)
        when 0x7311CA11
          WebPageNotModified.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeAuthorization < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xAD01D61D
          Authorization.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeReceivedNotifyMessage < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xA384B779
          ReceivedNotifyMessage.tl_deserialize(io, bare)
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
        when 0xB18105E8
          ChatInviteExported.tl_deserialize(io, bare)
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
        when 0x5A686D7C
          ChatInviteAlready.tl_deserialize(io, bare)
        when 0xDFC2F58E
          ChatInvite.tl_deserialize(io, bare)
        when 0x61695CB0
          ChatInvitePeek.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInputStickerSet < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xFFB62B95
          InputStickerSetEmpty.tl_deserialize(io, bare)
        when 0x9DE7A269
          InputStickerSetID.tl_deserialize(io, bare)
        when 0x861CC8A0
          InputStickerSetShortName.tl_deserialize(io, bare)
        when 0x028703C8
          InputStickerSetAnimatedEmoji.tl_deserialize(io, bare)
        when 0xE67F520E
          InputStickerSetDice.tl_deserialize(io, bare)
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
        when 0xD7DF217A
          StickerSet.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeBotCommand < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xC27AC8C7
          BotCommand.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeBotInfo < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x1B74B335
          BotInfo.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeKeyboardButton < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xA2FA4880
          KeyboardButton.tl_deserialize(io, bare)
        when 0x258AFF05
          KeyboardButtonUrl.tl_deserialize(io, bare)
        when 0x35BBDB6B
          KeyboardButtonCallback.tl_deserialize(io, bare)
        when 0xB16A6C29
          KeyboardButtonRequestPhone.tl_deserialize(io, bare)
        when 0xFC796B3F
          KeyboardButtonRequestGeoLocation.tl_deserialize(io, bare)
        when 0x0568A748
          KeyboardButtonSwitchInline.tl_deserialize(io, bare)
        when 0x50F41CCF
          KeyboardButtonGame.tl_deserialize(io, bare)
        when 0xAFD93FBB
          KeyboardButtonBuy.tl_deserialize(io, bare)
        when 0x10B78D29
          KeyboardButtonUrlAuth.tl_deserialize(io, bare)
        when 0xD02E7FD4
          InputKeyboardButtonUrlAuth.tl_deserialize(io, bare)
        when 0xBBC7515D
          KeyboardButtonRequestPoll.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeKeyboardButtonRow < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x77608B83
          KeyboardButtonRow.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeReplyMarkup < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xA03E5B85
          ReplyKeyboardHide.tl_deserialize(io, bare)
        when 0x86B40B08
          ReplyKeyboardForceReply.tl_deserialize(io, bare)
        when 0x85DD99D1
          ReplyKeyboardMarkup.tl_deserialize(io, bare)
        when 0x48A30254
          ReplyInlineMarkup.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeMessageEntity < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xBB92BA95
          MessageEntityUnknown.tl_deserialize(io, bare)
        when 0xFA04579D
          MessageEntityMention.tl_deserialize(io, bare)
        when 0x6F635B0D
          MessageEntityHashtag.tl_deserialize(io, bare)
        when 0x6CEF8AC7
          MessageEntityBotCommand.tl_deserialize(io, bare)
        when 0x6ED02538
          MessageEntityUrl.tl_deserialize(io, bare)
        when 0x64E475C2
          MessageEntityEmail.tl_deserialize(io, bare)
        when 0xBD610BC9
          MessageEntityBold.tl_deserialize(io, bare)
        when 0x826F8B60
          MessageEntityItalic.tl_deserialize(io, bare)
        when 0x28A20571
          MessageEntityCode.tl_deserialize(io, bare)
        when 0x73924BE0
          MessageEntityPre.tl_deserialize(io, bare)
        when 0x76A6D327
          MessageEntityTextUrl.tl_deserialize(io, bare)
        when 0xDC7B1140
          MessageEntityMentionName.tl_deserialize(io, bare)
        when 0x208E68C9
          InputMessageEntityMentionName.tl_deserialize(io, bare)
        when 0x9B69E34B
          MessageEntityPhone.tl_deserialize(io, bare)
        when 0x4C4E743F
          MessageEntityCashtag.tl_deserialize(io, bare)
        when 0x9C4E7E8B
          MessageEntityUnderline.tl_deserialize(io, bare)
        when 0xBF0693D4
          MessageEntityStrike.tl_deserialize(io, bare)
        when 0x020DF5D0
          MessageEntityBlockquote.tl_deserialize(io, bare)
        when 0x761E6AF4
          MessageEntityBankCard.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInputChannel < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xEE8C1E86
          InputChannelEmpty.tl_deserialize(io, bare)
        when 0xF35AEC28
          InputChannel.tl_deserialize(io, bare)
        when 0x5B934F9D
          InputChannelFromMessage.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeMessageRange < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x0AE30253
          MessageRange.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeChannelMessagesFilter < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x94D42EE7
          ChannelMessagesFilterEmpty.tl_deserialize(io, bare)
        when 0xCD77D957
          ChannelMessagesFilter.tl_deserialize(io, bare)
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
        when 0xC00C07C0
          ChannelParticipant.tl_deserialize(io, bare)
        when 0x28A8BC67
          ChannelParticipantSelf.tl_deserialize(io, bare)
        when 0x2FE601D3
          ChannelParticipantCreator.tl_deserialize(io, bare)
        when 0x34C3BB53
          ChannelParticipantAdmin.tl_deserialize(io, bare)
        when 0x6DF8014E
          ChannelParticipantBanned.tl_deserialize(io, bare)
        when 0x1B03F006
          ChannelParticipantLeft.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeChannelParticipantsFilter < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xDE3F3C79
          ChannelParticipantsRecent.tl_deserialize(io, bare)
        when 0xB4608969
          ChannelParticipantsAdmins.tl_deserialize(io, bare)
        when 0xA3B54985
          ChannelParticipantsKicked.tl_deserialize(io, bare)
        when 0xB0D1865B
          ChannelParticipantsBots.tl_deserialize(io, bare)
        when 0x1427A5E1
          ChannelParticipantsBanned.tl_deserialize(io, bare)
        when 0x0656AC4B
          ChannelParticipantsSearch.tl_deserialize(io, bare)
        when 0xBB6AE88D
          ChannelParticipantsContacts.tl_deserialize(io, bare)
        when 0xE04B5CEB
          ChannelParticipantsMentions.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInputBotInlineMessage < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x3380C786
          InputBotInlineMessageMediaAuto.tl_deserialize(io, bare)
        when 0x3DCD7A87
          InputBotInlineMessageText.tl_deserialize(io, bare)
        when 0x96929A85
          InputBotInlineMessageMediaGeo.tl_deserialize(io, bare)
        when 0x417BBF11
          InputBotInlineMessageMediaVenue.tl_deserialize(io, bare)
        when 0xA6EDBFFD
          InputBotInlineMessageMediaContact.tl_deserialize(io, bare)
        when 0x4B425864
          InputBotInlineMessageGame.tl_deserialize(io, bare)
        when 0xD7E78225
          InputBotInlineMessageMediaInvoice.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInputBotInlineResult < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x88BF9319
          InputBotInlineResult.tl_deserialize(io, bare)
        when 0xA8D864A7
          InputBotInlineResultPhoto.tl_deserialize(io, bare)
        when 0xFFF8FDC4
          InputBotInlineResultDocument.tl_deserialize(io, bare)
        when 0x4FA417F2
          InputBotInlineResultGame.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeBotInlineMessage < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x764CF810
          BotInlineMessageMediaAuto.tl_deserialize(io, bare)
        when 0x8C7F65E2
          BotInlineMessageText.tl_deserialize(io, bare)
        when 0x051846FD
          BotInlineMessageMediaGeo.tl_deserialize(io, bare)
        when 0x8A86659C
          BotInlineMessageMediaVenue.tl_deserialize(io, bare)
        when 0x18D1CDC2
          BotInlineMessageMediaContact.tl_deserialize(io, bare)
        when 0x354A9B09
          BotInlineMessageMediaInvoice.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeBotInlineResult < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x11965F3A
          BotInlineResult.tl_deserialize(io, bare)
        when 0x17DB940B
          BotInlineMediaResult.tl_deserialize(io, bare)
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
        when 0x5DAB1AF4
          ExportedMessageLink.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeMessageFwdHeader < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x5F777DCE
          MessageFwdHeader.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInputBotInlineMessageID < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x890C3D89
          InputBotInlineMessageID.tl_deserialize(io, bare)
        when 0xB6D915D7
          InputBotInlineMessageID64.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInlineBotSwitchPM < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x3C20629F
          InlineBotSwitchPM.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeTopPeer < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xEDCDC05B
          TopPeer.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeTopPeerCategory < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xAB661B5B
          TopPeerCategoryBotsPM.tl_deserialize(io, bare)
        when 0x148677E2
          TopPeerCategoryBotsInline.tl_deserialize(io, bare)
        when 0x0637B7ED
          TopPeerCategoryCorrespondents.tl_deserialize(io, bare)
        when 0xBD17A14A
          TopPeerCategoryGroups.tl_deserialize(io, bare)
        when 0x161D9628
          TopPeerCategoryChannels.tl_deserialize(io, bare)
        when 0x1E76A78C
          TopPeerCategoryPhoneCalls.tl_deserialize(io, bare)
        when 0xA8406CA9
          TopPeerCategoryForwardUsers.tl_deserialize(io, bare)
        when 0xFBEEC0F0
          TopPeerCategoryForwardChats.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeTopPeerCategoryPeers < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xFB834291
          TopPeerCategoryPeers.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeDraftMessage < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x1B0C841A
          DraftMessageEmpty.tl_deserialize(io, bare)
        when 0xFD8E711F
          DraftMessage.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeStickerSetCovered < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x6410A5D2
          StickerSetCovered.tl_deserialize(io, bare)
        when 0x3407E51B
          StickerSetMultiCovered.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeMaskCoords < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xAED6DBB2
          MaskCoords.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInputStickeredMedia < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x4A992157
          InputStickeredMediaPhoto.tl_deserialize(io, bare)
        when 0x0438865B
          InputStickeredMediaDocument.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeGame < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xBDF9653B
          Game.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInputGame < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x032C3E77
          InputGameID.tl_deserialize(io, bare)
        when 0xC331E80A
          InputGameShortName.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeHighScore < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x73A379EB
          HighScore.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeRichText < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xDC3D824F
          TextEmpty.tl_deserialize(io, bare)
        when 0x744694E0
          TextPlain.tl_deserialize(io, bare)
        when 0x6724ABC4
          TextBold.tl_deserialize(io, bare)
        when 0xD912A59C
          TextItalic.tl_deserialize(io, bare)
        when 0xC12622C4
          TextUnderline.tl_deserialize(io, bare)
        when 0x9BF8BB95
          TextStrike.tl_deserialize(io, bare)
        when 0x6C3F19B9
          TextFixed.tl_deserialize(io, bare)
        when 0x3C2884C1
          TextUrl.tl_deserialize(io, bare)
        when 0xDE5A0DD6
          TextEmail.tl_deserialize(io, bare)
        when 0x7E6260D7
          TextConcat.tl_deserialize(io, bare)
        when 0xED6A8504
          TextSubscript.tl_deserialize(io, bare)
        when 0xC7FB5E01
          TextSuperscript.tl_deserialize(io, bare)
        when 0x034B8621
          TextMarked.tl_deserialize(io, bare)
        when 0x1CCB966A
          TextPhone.tl_deserialize(io, bare)
        when 0x081CCF4F
          TextImage.tl_deserialize(io, bare)
        when 0x35553762
          TextAnchor.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePageBlock < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x13567E8A
          PageBlockUnsupported.tl_deserialize(io, bare)
        when 0x70ABC3FD
          PageBlockTitle.tl_deserialize(io, bare)
        when 0x8FFA9A1F
          PageBlockSubtitle.tl_deserialize(io, bare)
        when 0xBAAFE5E0
          PageBlockAuthorDate.tl_deserialize(io, bare)
        when 0xBFD064EC
          PageBlockHeader.tl_deserialize(io, bare)
        when 0xF12BB6E1
          PageBlockSubheader.tl_deserialize(io, bare)
        when 0x467A0766
          PageBlockParagraph.tl_deserialize(io, bare)
        when 0xC070D93E
          PageBlockPreformatted.tl_deserialize(io, bare)
        when 0x48870999
          PageBlockFooter.tl_deserialize(io, bare)
        when 0xDB20B188
          PageBlockDivider.tl_deserialize(io, bare)
        when 0xCE0D37B0
          PageBlockAnchor.tl_deserialize(io, bare)
        when 0xE4E88011
          PageBlockList.tl_deserialize(io, bare)
        when 0x263D7C26
          PageBlockBlockquote.tl_deserialize(io, bare)
        when 0x4F4456D3
          PageBlockPullquote.tl_deserialize(io, bare)
        when 0x1759C560
          PageBlockPhoto.tl_deserialize(io, bare)
        when 0x7C8FE7B6
          PageBlockVideo.tl_deserialize(io, bare)
        when 0x39F23300
          PageBlockCover.tl_deserialize(io, bare)
        when 0xA8718DC5
          PageBlockEmbed.tl_deserialize(io, bare)
        when 0xF259A80B
          PageBlockEmbedPost.tl_deserialize(io, bare)
        when 0x65A0FA4D
          PageBlockCollage.tl_deserialize(io, bare)
        when 0x031F9590
          PageBlockSlideshow.tl_deserialize(io, bare)
        when 0xEF1751B5
          PageBlockChannel.tl_deserialize(io, bare)
        when 0x804361EA
          PageBlockAudio.tl_deserialize(io, bare)
        when 0x1E148390
          PageBlockKicker.tl_deserialize(io, bare)
        when 0xBF4DEA82
          PageBlockTable.tl_deserialize(io, bare)
        when 0x9A8AE1E1
          PageBlockOrderedList.tl_deserialize(io, bare)
        when 0x76768BED
          PageBlockDetails.tl_deserialize(io, bare)
        when 0x16115A96
          PageBlockRelatedArticles.tl_deserialize(io, bare)
        when 0xA44F3EF6
          PageBlockMap.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePhoneCallDiscardReason < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x85E42301
          PhoneCallDiscardReasonMissed.tl_deserialize(io, bare)
        when 0xE095C1A0
          PhoneCallDiscardReasonDisconnect.tl_deserialize(io, bare)
        when 0x57ADC690
          PhoneCallDiscardReasonHangup.tl_deserialize(io, bare)
        when 0xFAF7E8C9
          PhoneCallDiscardReasonBusy.tl_deserialize(io, bare)
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
        when 0x7D748D04
          DataJSON.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeLabeledPrice < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xCB296BF8
          LabeledPrice.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInvoice < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x0CD886E0
          Invoice.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePaymentCharge < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xEA02C27E
          PaymentCharge.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePostAddress < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x1E8CAAEB
          PostAddress.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePaymentRequestedInfo < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x909C3F94
          PaymentRequestedInfo.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePaymentSavedCredentials < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xCDC27A1F
          PaymentSavedCredentialsCard.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeWebDocument < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x1C570ED1
          WebDocument.tl_deserialize(io, bare)
        when 0xF9C8BCC6
          WebDocumentNoProxy.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInputWebDocument < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x9BED434D
          InputWebDocument.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInputWebFileLocation < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xC239D686
          InputWebFileLocation.tl_deserialize(io, bare)
        when 0x9F2221C9
          InputWebFileGeoPointLocation.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInputPaymentCredentials < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xC10EB2CF
          InputPaymentCredentialsSaved.tl_deserialize(io, bare)
        when 0x3417D728
          InputPaymentCredentials.tl_deserialize(io, bare)
        when 0x0AA1C39F
          InputPaymentCredentialsApplePay.tl_deserialize(io, bare)
        when 0x8AC32801
          InputPaymentCredentialsGooglePay.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeShippingOption < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xB6213CDF
          ShippingOption.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInputStickerSetItem < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xFFA0A496
          InputStickerSetItem.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInputPhoneCall < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x1E36FDED
          InputPhoneCall.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePhoneCall < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x5366C915
          PhoneCallEmpty.tl_deserialize(io, bare)
        when 0xC5226F17
          PhoneCallWaiting.tl_deserialize(io, bare)
        when 0x14B0ED0C
          PhoneCallRequested.tl_deserialize(io, bare)
        when 0x3660C311
          PhoneCallAccepted.tl_deserialize(io, bare)
        when 0x967F7C67
          PhoneCall.tl_deserialize(io, bare)
        when 0x50CA4DE1
          PhoneCallDiscarded.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePhoneConnection < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x9D4C17C0
          PhoneConnection.tl_deserialize(io, bare)
        when 0x635FE375
          PhoneConnectionWebrtc.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePhoneCallProtocol < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xFC878FC8
          PhoneCallProtocol.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeCdnPublicKey < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xC982EABA
          CdnPublicKey.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeCdnConfig < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x5725E40A
          CdnConfig.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeLangPackString < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xCAD181F6
          LangPackString.tl_deserialize(io, bare)
        when 0x6C47AC9F
          LangPackStringPluralized.tl_deserialize(io, bare)
        when 0x2979EEB2
          LangPackStringDeleted.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeLangPackDifference < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xF385C1F6
          LangPackDifference.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeLangPackLanguage < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xEECA5CE3
          LangPackLanguage.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeChannelAdminLogEventAction < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xE6DFB825
          ChannelAdminLogEventActionChangeTitle.tl_deserialize(io, bare)
        when 0x55188A2E
          ChannelAdminLogEventActionChangeAbout.tl_deserialize(io, bare)
        when 0x6A4AFC38
          ChannelAdminLogEventActionChangeUsername.tl_deserialize(io, bare)
        when 0x434BD2AF
          ChannelAdminLogEventActionChangePhoto.tl_deserialize(io, bare)
        when 0x1B7907AE
          ChannelAdminLogEventActionToggleInvites.tl_deserialize(io, bare)
        when 0x26AE0971
          ChannelAdminLogEventActionToggleSignatures.tl_deserialize(io, bare)
        when 0xE9E82C18
          ChannelAdminLogEventActionUpdatePinned.tl_deserialize(io, bare)
        when 0x709B2405
          ChannelAdminLogEventActionEditMessage.tl_deserialize(io, bare)
        when 0x42E047BB
          ChannelAdminLogEventActionDeleteMessage.tl_deserialize(io, bare)
        when 0x183040D3
          ChannelAdminLogEventActionParticipantJoin.tl_deserialize(io, bare)
        when 0xF89777F2
          ChannelAdminLogEventActionParticipantLeave.tl_deserialize(io, bare)
        when 0xE31C34D8
          ChannelAdminLogEventActionParticipantInvite.tl_deserialize(io, bare)
        when 0xE6D83D7E
          ChannelAdminLogEventActionParticipantToggleBan.tl_deserialize(io, bare)
        when 0xD5676710
          ChannelAdminLogEventActionParticipantToggleAdmin.tl_deserialize(io, bare)
        when 0xB1C3CAA7
          ChannelAdminLogEventActionChangeStickerSet.tl_deserialize(io, bare)
        when 0x5F5C95F1
          ChannelAdminLogEventActionTogglePreHistoryHidden.tl_deserialize(io, bare)
        when 0x2DF5FC0A
          ChannelAdminLogEventActionDefaultBannedRights.tl_deserialize(io, bare)
        when 0x8F079643
          ChannelAdminLogEventActionStopPoll.tl_deserialize(io, bare)
        when 0x050C7AC8
          ChannelAdminLogEventActionChangeLinkedChat.tl_deserialize(io, bare)
        when 0x0E6B76AE
          ChannelAdminLogEventActionChangeLocation.tl_deserialize(io, bare)
        when 0x53909779
          ChannelAdminLogEventActionToggleSlowMode.tl_deserialize(io, bare)
        when 0x23209745
          ChannelAdminLogEventActionStartGroupCall.tl_deserialize(io, bare)
        when 0xDB9F9140
          ChannelAdminLogEventActionDiscardGroupCall.tl_deserialize(io, bare)
        when 0xF92424D2
          ChannelAdminLogEventActionParticipantMute.tl_deserialize(io, bare)
        when 0xE64429C0
          ChannelAdminLogEventActionParticipantUnmute.tl_deserialize(io, bare)
        when 0x56D6A247
          ChannelAdminLogEventActionToggleGroupCallSetting.tl_deserialize(io, bare)
        when 0x5CDADA77
          ChannelAdminLogEventActionParticipantJoinByInvite.tl_deserialize(io, bare)
        when 0x5A50FCA4
          ChannelAdminLogEventActionExportedInviteDelete.tl_deserialize(io, bare)
        when 0x410A134E
          ChannelAdminLogEventActionExportedInviteRevoke.tl_deserialize(io, bare)
        when 0xE90EBB59
          ChannelAdminLogEventActionExportedInviteEdit.tl_deserialize(io, bare)
        when 0x3E7F6847
          ChannelAdminLogEventActionParticipantVolume.tl_deserialize(io, bare)
        when 0x6E941A38
          ChannelAdminLogEventActionChangeHistoryTTL.tl_deserialize(io, bare)
        when 0xFE69018D
          ChannelAdminLogEventActionChangeTheme.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeChannelAdminLogEvent < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x1FAD68CD
          ChannelAdminLogEvent.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeChannelAdminLogEventsFilter < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xEA107AE4
          ChannelAdminLogEventsFilter.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePopularContact < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x5CE14175
          PopularContact.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeRecentMeUrl < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x46E1D13D
          RecentMeUrlUnknown.tl_deserialize(io, bare)
        when 0xB92C09E2
          RecentMeUrlUser.tl_deserialize(io, bare)
        when 0xB2DA71D2
          RecentMeUrlChat.tl_deserialize(io, bare)
        when 0xEB49081D
          RecentMeUrlChatInvite.tl_deserialize(io, bare)
        when 0xBC0A57DC
          RecentMeUrlStickerSet.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInputSingleMedia < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x1CC6E91F
          InputSingleMedia.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeWebAuthorization < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xA6F8F452
          WebAuthorization.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInputMessage < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xA676A322
          InputMessageID.tl_deserialize(io, bare)
        when 0xBAD88395
          InputMessageReplyTo.tl_deserialize(io, bare)
        when 0x86872538
          InputMessagePinned.tl_deserialize(io, bare)
        when 0xACFA1A7E
          InputMessageCallbackQuery.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInputDialogPeer < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xFCAAFEB7
          InputDialogPeer.tl_deserialize(io, bare)
        when 0x64600527
          InputDialogPeerFolder.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeDialogPeer < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xE56DBF05
          DialogPeer.tl_deserialize(io, bare)
        when 0x514519E2
          DialogPeerFolder.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeFileHash < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x6242C773
          FileHash.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInputClientProxy < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x75588B3F
          InputClientProxy.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInputSecureFile < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x3334B0F0
          InputSecureFileUploaded.tl_deserialize(io, bare)
        when 0x5367E5BE
          InputSecureFile.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeSecureFile < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x64199744
          SecureFileEmpty.tl_deserialize(io, bare)
        when 0xE0277A62
          SecureFile.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeSecureData < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x8AEABEC3
          SecureData.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeSecurePlainData < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x7D6099DD
          SecurePlainPhone.tl_deserialize(io, bare)
        when 0x21EC5A5F
          SecurePlainEmail.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeSecureValueType < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x9D2A81E3
          SecureValueTypePersonalDetails.tl_deserialize(io, bare)
        when 0x3DAC6A00
          SecureValueTypePassport.tl_deserialize(io, bare)
        when 0x06E425C4
          SecureValueTypeDriverLicense.tl_deserialize(io, bare)
        when 0xA0D0744B
          SecureValueTypeIdentityCard.tl_deserialize(io, bare)
        when 0x99A48F23
          SecureValueTypeInternalPassport.tl_deserialize(io, bare)
        when 0xCBE31E26
          SecureValueTypeAddress.tl_deserialize(io, bare)
        when 0xFC36954E
          SecureValueTypeUtilityBill.tl_deserialize(io, bare)
        when 0x89137C0D
          SecureValueTypeBankStatement.tl_deserialize(io, bare)
        when 0x8B883488
          SecureValueTypeRentalAgreement.tl_deserialize(io, bare)
        when 0x99E3806A
          SecureValueTypePassportRegistration.tl_deserialize(io, bare)
        when 0xEA02EC33
          SecureValueTypeTemporaryRegistration.tl_deserialize(io, bare)
        when 0xB320AADB
          SecureValueTypePhone.tl_deserialize(io, bare)
        when 0x8E3CA7EE
          SecureValueTypeEmail.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeSecureValue < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x187FA0CA
          SecureValue.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInputSecureValue < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xDB21D0A7
          InputSecureValue.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeSecureValueHash < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xED1ECDB0
          SecureValueHash.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeSecureValueError < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xE8A40BD9
          SecureValueErrorData.tl_deserialize(io, bare)
        when 0x00BE3DFA
          SecureValueErrorFrontSide.tl_deserialize(io, bare)
        when 0x868A2AA5
          SecureValueErrorReverseSide.tl_deserialize(io, bare)
        when 0xE537CED6
          SecureValueErrorSelfie.tl_deserialize(io, bare)
        when 0x7A700873
          SecureValueErrorFile.tl_deserialize(io, bare)
        when 0x666220E9
          SecureValueErrorFiles.tl_deserialize(io, bare)
        when 0x869D758F
          SecureValueError.tl_deserialize(io, bare)
        when 0xA1144770
          SecureValueErrorTranslationFile.tl_deserialize(io, bare)
        when 0x34636DD8
          SecureValueErrorTranslationFiles.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeSecureCredentialsEncrypted < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x33F0EA47
          SecureCredentialsEncrypted.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeSavedContact < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x1142BD56
          SavedPhoneContact.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePasswordKdfAlgo < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xD45AB096
          PasswordKdfAlgoUnknown.tl_deserialize(io, bare)
        when 0x3A912D4A
          PasswordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeSecurePasswordKdfAlgo < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x004A8537
          SecurePasswordKdfAlgoUnknown.tl_deserialize(io, bare)
        when 0xBBF2DDA0
          SecurePasswordKdfAlgoPBKDF2HMACSHA512iter100000.tl_deserialize(io, bare)
        when 0x86471D92
          SecurePasswordKdfAlgoSHA512.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeSecureSecretSettings < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x1527BCAC
          SecureSecretSettings.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInputCheckPasswordSRP < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x9880F658
          InputCheckPasswordEmpty.tl_deserialize(io, bare)
        when 0xD27FF082
          InputCheckPasswordSRP.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeSecureRequiredType < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x829D99DA
          SecureRequiredType.tl_deserialize(io, bare)
        when 0x027477B4
          SecureRequiredTypeOneOf.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInputAppEvent < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x1D1B1245
          InputAppEvent.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeJSONObjectValue < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xC0DE1BD9
          JsonObjectValue.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeJSONValue < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x3F6D7B68
          JsonNull.tl_deserialize(io, bare)
        when 0xC7345E6A
          JsonBool.tl_deserialize(io, bare)
        when 0x2BE0DFA4
          JsonNumber.tl_deserialize(io, bare)
        when 0xB71E767A
          JsonString.tl_deserialize(io, bare)
        when 0xF7444763
          JsonArray.tl_deserialize(io, bare)
        when 0x99C1D49D
          JsonObject.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePageTableCell < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x34566B6A
          PageTableCell.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePageTableRow < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xE0C0C5E5
          PageTableRow.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePageCaption < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x6F747657
          PageCaption.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePageListItem < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xB92FB6CD
          PageListItemText.tl_deserialize(io, bare)
        when 0x25E073FC
          PageListItemBlocks.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePageListOrderedItem < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x5E068047
          PageListOrderedItemText.tl_deserialize(io, bare)
        when 0x98DD8936
          PageListOrderedItemBlocks.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePageRelatedArticle < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xB390DC08
          PageRelatedArticle.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePage < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x98657F0D
          Page.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePollAnswer < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x6CA9C2E9
          PollAnswer.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePoll < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x86E18161
          Poll.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePollAnswerVoters < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x3B6DDAD2
          PollAnswerVoters.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePollResults < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xDCB82EA3
          PollResults.tl_deserialize(io, bare)
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
        when 0xF041E250
          ChatOnlines.tl_deserialize(io, bare)
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
        when 0x47A971E0
          StatsURL.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeChatAdminRights < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x5FB224D5
          ChatAdminRights.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeChatBannedRights < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x9F120418
          ChatBannedRights.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInputWallPaper < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xE630B979
          InputWallPaper.tl_deserialize(io, bare)
        when 0x72091C80
          InputWallPaperSlug.tl_deserialize(io, bare)
        when 0x967A462E
          InputWallPaperNoFile.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeCodeSettings < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xDEBEBE83
          CodeSettings.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeWallPaperSettings < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x1DC1BCA4
          WallPaperSettings.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeAutoDownloadSettings < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xE04232F3
          AutoDownloadSettings.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeEmojiKeyword < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xD5B3B9F9
          EmojiKeyword.tl_deserialize(io, bare)
        when 0x236DF622
          EmojiKeywordDeleted.tl_deserialize(io, bare)
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
        when 0x5CC761BD
          EmojiKeywordsDifference.tl_deserialize(io, bare)
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
        when 0xA575739D
          EmojiURL.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeEmojiLanguage < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xB3FB5361
          EmojiLanguage.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeFolder < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xFF544E65
          Folder.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInputFolderPeer < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xFBD2C296
          InputFolderPeer.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeFolderPeer < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xE9BAA668
          FolderPeer.tl_deserialize(io, bare)
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
        when 0x92D33A0E
          UrlAuthResultRequest.tl_deserialize(io, bare)
        when 0x8F8C0E4E
          UrlAuthResultAccepted.tl_deserialize(io, bare)
        when 0xA9D6DB1F
          UrlAuthResultDefault.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeChannelLocation < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xBFB5AD8B
          ChannelLocationEmpty.tl_deserialize(io, bare)
        when 0x209B82DB
          ChannelLocation.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePeerLocated < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xCA461B5D
          PeerLocated.tl_deserialize(io, bare)
        when 0xF8EC284B
          PeerSelfLocated.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeRestrictionReason < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xD072ACB4
          RestrictionReason.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInputTheme < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x3C5693E9
          InputTheme.tl_deserialize(io, bare)
        when 0xF5890DF1
          InputThemeSlug.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeTheme < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xE802B8DC
          Theme.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeBaseTheme < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xC3A12462
          BaseThemeClassic.tl_deserialize(io, bare)
        when 0xFBD81688
          BaseThemeDay.tl_deserialize(io, bare)
        when 0xB7B31EA8
          BaseThemeNight.tl_deserialize(io, bare)
        when 0x6D5F77EE
          BaseThemeTinted.tl_deserialize(io, bare)
        when 0x5B11125A
          BaseThemeArctic.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInputThemeSettings < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x8FDE504F
          InputThemeSettings.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeThemeSettings < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xFA58B6D4
          ThemeSettings.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeWebPageAttribute < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x54B56617
          WebPageAttributeTheme.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeMessageUserVote < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x34D247B4
          MessageUserVote.tl_deserialize(io, bare)
        when 0x3CA5B0EC
          MessageUserVoteInputOption.tl_deserialize(io, bare)
        when 0x8A65E557
          MessageUserVoteMultiple.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeBankCardOpenUrl < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xF568028A
          BankCardOpenUrl.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeDialogFilter < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x7438F7E8
          DialogFilter.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeDialogFilterSuggested < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x77744D4A
          DialogFilterSuggested.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeStatsDateRangeDays < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xB637EDAF
          StatsDateRangeDays.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeStatsAbsValueAndPrev < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xCB43ACDE
          StatsAbsValueAndPrev.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeStatsPercentValue < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xCBCE2FE0
          StatsPercentValue.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeStatsGraph < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x4A27EB2D
          StatsGraphAsync.tl_deserialize(io, bare)
        when 0xBEDC9822
          StatsGraphError.tl_deserialize(io, bare)
        when 0x8EA464B6
          StatsGraph.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeMessageInteractionCounters < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xAD4FC9BD
          MessageInteractionCounters.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeVideoSize < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xDE33B094
          VideoSize.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeStatsGroupTopPoster < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x9D04AF9B
          StatsGroupTopPoster.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeStatsGroupTopAdmin < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xD7584C87
          StatsGroupTopAdmin.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeStatsGroupTopInviter < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x535F779D
          StatsGroupTopInviter.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeGlobalPrivacySettings < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xBEA2F424
          GlobalPrivacySettings.tl_deserialize(io, bare)
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
        when 0x455B853D
          MessageViews.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeMessageReplyHeader < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xA6D57763
          MessageReplyHeader.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeMessageReplies < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x83D60FC2
          MessageReplies.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePeerBlocked < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xE8FD8014
          PeerBlocked.tl_deserialize(io, bare)
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
        when 0x7780BCB4
          GroupCallDiscarded.tl_deserialize(io, bare)
        when 0xD597650C
          GroupCall.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInputGroupCall < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xD8AA840F
          InputGroupCall.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeGroupCallParticipant < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xEBA636FE
          GroupCallParticipant.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeInlineQueryPeerType < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x3081ED9D
          InlineQueryPeerTypeSameBotPM.tl_deserialize(io, bare)
        when 0x833C0FAC
          InlineQueryPeerTypePM.tl_deserialize(io, bare)
        when 0xD766C50A
          InlineQueryPeerTypeChat.tl_deserialize(io, bare)
        when 0x5EC4BE43
          InlineQueryPeerTypeMegagroup.tl_deserialize(io, bare)
        when 0x6334EE9A
          InlineQueryPeerTypeBroadcast.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeChatInviteImporter < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x0B5CD5F4
          ChatInviteImporter.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeChatAdminWithInvites < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xF2ECEF23
          ChatAdminWithInvites.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeGroupCallParticipantVideoSourceGroup < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xDCB118B7
          GroupCallParticipantVideoSourceGroup.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeGroupCallParticipantVideo < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x67753AC8
          GroupCallParticipantVideo.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeBotCommandScope < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x2F6CB2AB
          BotCommandScopeDefault.tl_deserialize(io, bare)
        when 0x3C4F04D8
          BotCommandScopeUsers.tl_deserialize(io, bare)
        when 0x6FE1A881
          BotCommandScopeChats.tl_deserialize(io, bare)
        when 0xB9AA606A
          BotCommandScopeChatAdmins.tl_deserialize(io, bare)
        when 0xDB9D897D
          BotCommandScopePeer.tl_deserialize(io, bare)
        when 0x3FD863D1
          BotCommandScopePeerAdmins.tl_deserialize(io, bare)
        when 0x0A1321F3
          BotCommandScopePeerUser.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeChatTheme < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xED0B5C33
          ChatTheme.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeSponsoredMessage < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x2A3C381F
          SponsoredMessage.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeX < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xCB9F372D
          InvokeAfterMsg.tl_deserialize(io, bare)
        when 0x3DC4B4F0
          InvokeAfterMsgs.tl_deserialize(io, bare)
        when 0xC1CD5EA9
          InitConnection.tl_deserialize(io, bare)
        when 0xDA9B0D0D
          InvokeWithLayer.tl_deserialize(io, bare)
        when 0xBF9459B7
          InvokeWithoutUpdates.tl_deserialize(io, bare)
        when 0x365275F2
          InvokeWithMessagesRange.tl_deserialize(io, bare)
        when 0xACA9FD2E
          InvokeWithTakeout.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeResPQ < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x05162463
          ResPQ.tl_deserialize(io, bare)
        when 0x60469778
          ReqPq.tl_deserialize(io, bare)
        when 0xBE7E8EF1
          ReqPqMulti.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePQInnerData < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x83C95AEC
          PQInnerData.tl_deserialize(io, bare)
        when 0xA9F55F95
          PQInnerDataDc.tl_deserialize(io, bare)
        when 0x3C6A84D4
          PQInnerDataTemp.tl_deserialize(io, bare)
        when 0x56FDDF88
          PQInnerDataTempDc.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeBindAuthKeyInner < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x75A3F765
          BindAuthKeyInner.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeServerDHParams < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x79CB045D
          ServerDHParamsFail.tl_deserialize(io, bare)
        when 0xD0E8075C
          ServerDHParamsOk.tl_deserialize(io, bare)
        when 0xD712E4BE
          ReqDHParams.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeServerDHInnerData < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xB5890DBA
          ServerDHInnerData.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeClientDHInnerData < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x6643B654
          ClientDHInnerData.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeSetClientDHParamsAnswer < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x3BCBF734
          DhGenOk.tl_deserialize(io, bare)
        when 0x46DC1FB9
          DhGenRetry.tl_deserialize(io, bare)
        when 0xA69DAE02
          DhGenFail.tl_deserialize(io, bare)
        when 0xF5045F1F
          SetClientDHParams.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeDestroyAuthKeyRes < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xF660E1D4
          DestroyAuthKeyOk.tl_deserialize(io, bare)
        when 0x0A9F2259
          DestroyAuthKeyNone.tl_deserialize(io, bare)
        when 0xEA109B13
          DestroyAuthKeyFail.tl_deserialize(io, bare)
        when 0xD1435160
          DestroyAuthKey.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeMsgsAck < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x62D6B459
          MsgsAck.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeBadMsgNotification < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xA7EFF811
          BadMsgNotification.tl_deserialize(io, bare)
        when 0xEDAB447B
          BadServerSalt.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeMsgsStateReq < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xDA69FB52
          MsgsStateReq.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeMsgsStateInfo < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x04DEB57D
          MsgsStateInfo.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeMsgsAllInfo < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x8CC0D131
          MsgsAllInfo.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeMsgDetailedInfo < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x276D3EC6
          MsgDetailedInfo.tl_deserialize(io, bare)
        when 0x809DB6DF
          MsgNewDetailedInfo.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeMsgResendReq < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x7D861A08
          MsgResendReq.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeRpcError < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x2144CA19
          RpcError.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeRpcDropAnswer < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x5E2AD36E
          RpcAnswerUnknown.tl_deserialize(io, bare)
        when 0xCD78E586
          RpcAnswerDroppedRunning.tl_deserialize(io, bare)
        when 0xA43AD8B7
          RpcAnswerDropped.tl_deserialize(io, bare)
        when 0x58E4A740
          RpcDropAnswer.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeFutureSalt < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x0949D9DC
          FutureSalt.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeFutureSalts < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xAE500895
          FutureSalts.tl_deserialize(io, bare)
        when 0xB921BD04
          GetFutureSalts.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePong < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x347773C5
          Pong.tl_deserialize(io, bare)
        when 0x7ABE77EC
          Ping.tl_deserialize(io, bare)
        when 0xF3427B8C
          PingDelayDisconnect.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeDestroySessionRes < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xE22045FC
          DestroySessionOk.tl_deserialize(io, bare)
        when 0x62D350C9
          DestroySessionNone.tl_deserialize(io, bare)
        when 0xE7512126
          DestroySession.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeNewSession < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x9EC20908
          NewSessionCreated.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeHttpWait < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x9299359F
          HttpWait.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeIpPort < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xD433AD73
          IpPort.tl_deserialize(io, bare)
        when 0x37982646
          IpPortSecret.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeAccessPointRule < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x4679B65F
          AccessPointRule.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeTlsClientHello < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x6C52C484
          TlsClientHello.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeTlsBlock < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x4218A164
          TlsBlockString.tl_deserialize(io, bare)
        when 0x4D4DC41E
          TlsBlockRandom.tl_deserialize(io, bare)
        when 0x09333AFB
          TlsBlockZero.tl_deserialize(io, bare)
        when 0x10E8636F
          TlsBlockDomain.tl_deserialize(io, bare)
        when 0xE675A1C1
          TlsBlockGrease.tl_deserialize(io, bare)
        when 0x9EB95B5C
          TlsBlockPublicKey.tl_deserialize(io, bare)
        when 0xE725D44F
          TlsBlockScope.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    class InputPeerEmpty < TypeInputPeer
      CONSTRUCTOR_ID = 0x7F3B18EA

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputPeerSelf < TypeInputPeer
      CONSTRUCTOR_ID = 0x7DA07EC9

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputPeerChat < TypeInputPeer
      CONSTRUCTOR_ID = 0x35A95CB9

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

      def self.tl_deserialize(io : IO, bare = false)
        new(
          chat_id: Int64.tl_deserialize(io, true),
        )
      end
    end

    class InputPeerUser < TypeInputPeer
      CONSTRUCTOR_ID = 0xDDE8A54C

      getter user_id : Int64
      getter access_hash : Int64

      def initialize(
        user_id : Int64,
        access_hash : Int64
      )
        @user_id = user_id
        @access_hash = access_hash
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @user_id.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          user_id: Int64.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
        )
      end
    end

    class InputPeerChannel < TypeInputPeer
      CONSTRUCTOR_ID = 0x27BCBBFC

      getter channel_id : Int64
      getter access_hash : Int64

      def initialize(
        channel_id : Int64,
        access_hash : Int64
      )
        @channel_id = channel_id
        @access_hash = access_hash
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel_id.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          channel_id: Int64.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
        )
      end
    end

    class InputPeerUserFromMessage < TypeInputPeer
      CONSTRUCTOR_ID = 0xA87B0A1C

      getter peer : Root::TypeInputPeer
      getter msg_id : Int32
      getter user_id : Int64

      def initialize(
        peer : Root::TypeInputPeer,
        msg_id : Int32,
        user_id : Int64
      )
        @peer = peer
        @msg_id = msg_id
        @user_id = user_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @peer.tl_serialize(io, false)
        @msg_id.tl_serialize(io, true)
        @user_id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          peer: Root::TypeInputPeer.tl_deserialize(io, false),
          msg_id: Int32.tl_deserialize(io, true),
          user_id: Int64.tl_deserialize(io, true),
        )
      end
    end

    class InputPeerChannelFromMessage < TypeInputPeer
      CONSTRUCTOR_ID = 0xBD2A0840

      getter peer : Root::TypeInputPeer
      getter msg_id : Int32
      getter channel_id : Int64

      def initialize(
        peer : Root::TypeInputPeer,
        msg_id : Int32,
        channel_id : Int64
      )
        @peer = peer
        @msg_id = msg_id
        @channel_id = channel_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @peer.tl_serialize(io, false)
        @msg_id.tl_serialize(io, true)
        @channel_id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          peer: Root::TypeInputPeer.tl_deserialize(io, false),
          msg_id: Int32.tl_deserialize(io, true),
          channel_id: Int64.tl_deserialize(io, true),
        )
      end
    end

    class InputUserEmpty < TypeInputUser
      CONSTRUCTOR_ID = 0xB98886CF

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputUserSelf < TypeInputUser
      CONSTRUCTOR_ID = 0xF7C1B13F

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputUser < TypeInputUser
      CONSTRUCTOR_ID = 0xF21158C6

      getter user_id : Int64
      getter access_hash : Int64

      def initialize(
        user_id : Int64,
        access_hash : Int64
      )
        @user_id = user_id
        @access_hash = access_hash
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @user_id.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          user_id: Int64.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
        )
      end
    end

    class InputUserFromMessage < TypeInputUser
      CONSTRUCTOR_ID = 0x1DA448E2

      getter peer : Root::TypeInputPeer
      getter msg_id : Int32
      getter user_id : Int64

      def initialize(
        peer : Root::TypeInputPeer,
        msg_id : Int32,
        user_id : Int64
      )
        @peer = peer
        @msg_id = msg_id
        @user_id = user_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @peer.tl_serialize(io, false)
        @msg_id.tl_serialize(io, true)
        @user_id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          peer: Root::TypeInputPeer.tl_deserialize(io, false),
          msg_id: Int32.tl_deserialize(io, true),
          user_id: Int64.tl_deserialize(io, true),
        )
      end
    end

    class InputPhoneContact < TypeInputContact
      CONSTRUCTOR_ID = 0xF392B7F4

      getter client_id : Int64
      getter phone : Bytes
      getter first_name : Bytes
      getter last_name : Bytes

      def initialize(
        client_id : Int64,
        phone : Bytes | String | IO,
        first_name : Bytes | String | IO,
        last_name : Bytes | String | IO
      )
        @client_id = client_id
        @phone = phone
        @first_name = first_name
        @last_name = last_name
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @client_id.tl_serialize(io, true)
        @phone.tl_serialize(io, true)
        @first_name.tl_serialize(io, true)
        @last_name.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          client_id: Int64.tl_deserialize(io, true),
          phone: Bytes.tl_deserialize(io, true),
          first_name: Bytes.tl_deserialize(io, true),
          last_name: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class InputFile < TypeInputFile
      CONSTRUCTOR_ID = 0xF52FF27F

      getter id : Int64
      getter parts : Int32
      getter name : Bytes
      getter md5_checksum : Bytes

      def initialize(
        id : Int64,
        parts : Int32,
        name : Bytes | String | IO,
        md5_checksum : Bytes | String | IO
      )
        @id = id
        @parts = parts
        @name = name
        @md5_checksum = md5_checksum
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        @parts.tl_serialize(io, true)
        @name.tl_serialize(io, true)
        @md5_checksum.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Int64.tl_deserialize(io, true),
          parts: Int32.tl_deserialize(io, true),
          name: Bytes.tl_deserialize(io, true),
          md5_checksum: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class InputFileBig < TypeInputFile
      CONSTRUCTOR_ID = 0xFA4F0BB5

      getter id : Int64
      getter parts : Int32
      getter name : Bytes

      def initialize(
        id : Int64,
        parts : Int32,
        name : Bytes | String | IO
      )
        @id = id
        @parts = parts
        @name = name
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        @parts.tl_serialize(io, true)
        @name.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Int64.tl_deserialize(io, true),
          parts: Int32.tl_deserialize(io, true),
          name: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class InputMediaEmpty < TypeInputMedia
      CONSTRUCTOR_ID = 0x9664F57F

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputMediaUploadedPhoto < TypeInputMedia
      CONSTRUCTOR_ID = 0x1E287D04

      getter file : Root::TypeInputFile
      getter stickers : Array(Root::TypeInputDocument) | Nil
      getter ttl_seconds : Int32 | Nil

      def initialize(
        file : Root::TypeInputFile,
        stickers : Array(Root::TypeInputDocument) | Nil = nil,
        ttl_seconds : Int32 | Nil = nil
      )
        @file = file
        @stickers = stickers
        @ttl_seconds = ttl_seconds
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!stickers.nil? ? 1 : 0) |
            (!ttl_seconds.nil? ? 2 : 0)
        ).tl_serialize(io)
        @file.tl_serialize(io, false)
        @stickers.tl_serialize(io, false) unless @stickers.nil?
        @ttl_seconds.tl_serialize(io, true) unless @ttl_seconds.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          file: Root::TypeInputFile.tl_deserialize(io, false),
          stickers: flags & 1 == 1 ? Array(Root::TypeInputDocument).tl_deserialize(io, false) : nil,
          ttl_seconds: flags & 2 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class InputMediaPhoto < TypeInputMedia
      CONSTRUCTOR_ID = 0xB3BA0635

      getter id : Root::TypeInputPhoto
      getter ttl_seconds : Int32 | Nil

      def initialize(
        id : Root::TypeInputPhoto,
        ttl_seconds : Int32 | Nil = nil
      )
        @id = id
        @ttl_seconds = ttl_seconds
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!ttl_seconds.nil? ? 1 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io, false)
        @ttl_seconds.tl_serialize(io, true) unless @ttl_seconds.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          id: Root::TypeInputPhoto.tl_deserialize(io, false),
          ttl_seconds: flags & 1 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class InputMediaGeoPoint < TypeInputMedia
      CONSTRUCTOR_ID = 0xF9C44144

      getter geo_point : Root::TypeInputGeoPoint

      def initialize(
        geo_point : Root::TypeInputGeoPoint
      )
        @geo_point = geo_point
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @geo_point.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          geo_point: Root::TypeInputGeoPoint.tl_deserialize(io, false),
        )
      end
    end

    class InputMediaContact < TypeInputMedia
      CONSTRUCTOR_ID = 0xF8AB7DFB

      getter phone_number : Bytes
      getter first_name : Bytes
      getter last_name : Bytes
      getter vcard : Bytes

      def initialize(
        phone_number : Bytes | String | IO,
        first_name : Bytes | String | IO,
        last_name : Bytes | String | IO,
        vcard : Bytes | String | IO
      )
        @phone_number = phone_number
        @first_name = first_name
        @last_name = last_name
        @vcard = vcard
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @phone_number.tl_serialize(io, true)
        @first_name.tl_serialize(io, true)
        @last_name.tl_serialize(io, true)
        @vcard.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          phone_number: Bytes.tl_deserialize(io, true),
          first_name: Bytes.tl_deserialize(io, true),
          last_name: Bytes.tl_deserialize(io, true),
          vcard: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class InputMediaUploadedDocument < TypeInputMedia
      CONSTRUCTOR_ID = 0x5B38C6C1

      getter file : Root::TypeInputFile
      getter mime_type : Bytes
      getter attributes : Array(Root::TypeDocumentAttribute)
      getter nosound_video : Bool | Nil
      getter force_file : Bool | Nil
      getter thumb : Root::TypeInputFile | Nil
      getter stickers : Array(Root::TypeInputDocument) | Nil
      getter ttl_seconds : Int32 | Nil

      def initialize(
        file : Root::TypeInputFile,
        mime_type : Bytes | String | IO,
        attributes : Array(Root::TypeDocumentAttribute),
        nosound_video : Bool | Nil = nil,
        force_file : Bool | Nil = nil,
        thumb : Root::TypeInputFile | Nil = nil,
        stickers : Array(Root::TypeInputDocument) | Nil = nil,
        ttl_seconds : Int32 | Nil = nil
      )
        @file = file
        @mime_type = mime_type
        @attributes = attributes
        @nosound_video = nosound_video
        @force_file = force_file
        @thumb = thumb
        @stickers = stickers
        @ttl_seconds = ttl_seconds
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!nosound_video.nil? ? 8 : 0) |
            (!force_file.nil? ? 16 : 0) |
            (!thumb.nil? ? 4 : 0) |
            (!stickers.nil? ? 1 : 0) |
            (!ttl_seconds.nil? ? 2 : 0)
        ).tl_serialize(io)
        @file.tl_serialize(io, false)
        @thumb.tl_serialize(io, false) unless @thumb.nil?
        @mime_type.tl_serialize(io, true)
        @attributes.tl_serialize(io, false)
        @stickers.tl_serialize(io, false) unless @stickers.nil?
        @ttl_seconds.tl_serialize(io, true) unless @ttl_seconds.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          file: Root::TypeInputFile.tl_deserialize(io, false),
          mime_type: Bytes.tl_deserialize(io, true),
          attributes: Array(Root::TypeDocumentAttribute).tl_deserialize(io, false),
          nosound_video: flags & 8 == 1,
          force_file: flags & 16 == 1,
          thumb: flags & 4 == 1 ? Root::TypeInputFile.tl_deserialize(io, false) : nil,
          stickers: flags & 1 == 1 ? Array(Root::TypeInputDocument).tl_deserialize(io, false) : nil,
          ttl_seconds: flags & 2 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class InputMediaDocument < TypeInputMedia
      CONSTRUCTOR_ID = 0x33473058

      getter id : Root::TypeInputDocument
      getter ttl_seconds : Int32 | Nil
      getter query : Bytes | Nil

      def initialize(
        id : Root::TypeInputDocument,
        ttl_seconds : Int32 | Nil = nil,
        query : Bytes | Nil = nil
      )
        @id = id
        @ttl_seconds = ttl_seconds
        @query = query
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!ttl_seconds.nil? ? 1 : 0) |
            (!query.nil? ? 2 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io, false)
        @ttl_seconds.tl_serialize(io, true) unless @ttl_seconds.nil?
        @query.tl_serialize(io, true) unless @query.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          id: Root::TypeInputDocument.tl_deserialize(io, false),
          ttl_seconds: flags & 1 == 1 ? Int32.tl_deserialize(io, true) : nil,
          query: flags & 2 == 1 ? Bytes.tl_deserialize(io, true) : nil,
        )
      end
    end

    class InputMediaVenue < TypeInputMedia
      CONSTRUCTOR_ID = 0xC13D1C11

      getter geo_point : Root::TypeInputGeoPoint
      getter title : Bytes
      getter address : Bytes
      getter provider : Bytes
      getter venue_id : Bytes
      getter venue_type : Bytes

      def initialize(
        geo_point : Root::TypeInputGeoPoint,
        title : Bytes | String | IO,
        address : Bytes | String | IO,
        provider : Bytes | String | IO,
        venue_id : Bytes | String | IO,
        venue_type : Bytes | String | IO
      )
        @geo_point = geo_point
        @title = title
        @address = address
        @provider = provider
        @venue_id = venue_id
        @venue_type = venue_type
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @geo_point.tl_serialize(io, false)
        @title.tl_serialize(io, true)
        @address.tl_serialize(io, true)
        @provider.tl_serialize(io, true)
        @venue_id.tl_serialize(io, true)
        @venue_type.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          geo_point: Root::TypeInputGeoPoint.tl_deserialize(io, false),
          title: Bytes.tl_deserialize(io, true),
          address: Bytes.tl_deserialize(io, true),
          provider: Bytes.tl_deserialize(io, true),
          venue_id: Bytes.tl_deserialize(io, true),
          venue_type: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class InputMediaPhotoExternal < TypeInputMedia
      CONSTRUCTOR_ID = 0xE5BBFE1A

      getter url : Bytes
      getter ttl_seconds : Int32 | Nil

      def initialize(
        url : Bytes | String | IO,
        ttl_seconds : Int32 | Nil = nil
      )
        @url = url
        @ttl_seconds = ttl_seconds
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!ttl_seconds.nil? ? 1 : 0)
        ).tl_serialize(io)
        @url.tl_serialize(io, true)
        @ttl_seconds.tl_serialize(io, true) unless @ttl_seconds.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          url: Bytes.tl_deserialize(io, true),
          ttl_seconds: flags & 1 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class InputMediaDocumentExternal < TypeInputMedia
      CONSTRUCTOR_ID = 0xFB52DC99

      getter url : Bytes
      getter ttl_seconds : Int32 | Nil

      def initialize(
        url : Bytes | String | IO,
        ttl_seconds : Int32 | Nil = nil
      )
        @url = url
        @ttl_seconds = ttl_seconds
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!ttl_seconds.nil? ? 1 : 0)
        ).tl_serialize(io)
        @url.tl_serialize(io, true)
        @ttl_seconds.tl_serialize(io, true) unless @ttl_seconds.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          url: Bytes.tl_deserialize(io, true),
          ttl_seconds: flags & 1 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class InputMediaGame < TypeInputMedia
      CONSTRUCTOR_ID = 0xD33F43F3

      getter id : Root::TypeInputGame

      def initialize(
        id : Root::TypeInputGame
      )
        @id = id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Root::TypeInputGame.tl_deserialize(io, false),
        )
      end
    end

    class InputMediaInvoice < TypeInputMedia
      CONSTRUCTOR_ID = 0xD9799874

      getter title : Bytes
      getter description : Bytes
      getter invoice : Root::TypeInvoice
      getter payload : Bytes
      getter provider : Bytes
      getter provider_data : Root::TypeDataJSON
      getter photo : Root::TypeInputWebDocument | Nil
      getter start_param : Bytes | Nil

      def initialize(
        title : Bytes | String | IO,
        description : Bytes | String | IO,
        invoice : Root::TypeInvoice,
        payload : Bytes | String | IO,
        provider : Bytes | String | IO,
        provider_data : Root::TypeDataJSON,
        photo : Root::TypeInputWebDocument | Nil = nil,
        start_param : Bytes | Nil = nil
      )
        @title = title
        @description = description
        @invoice = invoice
        @payload = TL::Utils.parse_bytes!(payload)
        @provider = provider
        @provider_data = provider_data
        @photo = photo
        @start_param = start_param
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!photo.nil? ? 1 : 0) |
            (!start_param.nil? ? 2 : 0)
        ).tl_serialize(io)
        @title.tl_serialize(io, true)
        @description.tl_serialize(io, true)
        @photo.tl_serialize(io, false) unless @photo.nil?
        @invoice.tl_serialize(io, false)
        @payload.tl_serialize(io, true)
        @provider.tl_serialize(io, true)
        @provider_data.tl_serialize(io, false)
        @start_param.tl_serialize(io, true) unless @start_param.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          title: Bytes.tl_deserialize(io, true),
          description: Bytes.tl_deserialize(io, true),
          invoice: Root::TypeInvoice.tl_deserialize(io, false),
          payload: Bytes.tl_deserialize(io, true),
          provider: Bytes.tl_deserialize(io, true),
          provider_data: Root::TypeDataJSON.tl_deserialize(io, false),
          photo: flags & 1 == 1 ? Root::TypeInputWebDocument.tl_deserialize(io, false) : nil,
          start_param: flags & 2 == 1 ? Bytes.tl_deserialize(io, true) : nil,
        )
      end
    end

    class InputMediaGeoLive < TypeInputMedia
      CONSTRUCTOR_ID = 0x971FA843

      getter geo_point : Root::TypeInputGeoPoint
      getter stopped : Bool | Nil
      getter heading : Int32 | Nil
      getter period : Int32 | Nil
      getter proximity_notification_radius : Int32 | Nil

      def initialize(
        geo_point : Root::TypeInputGeoPoint,
        stopped : Bool | Nil = nil,
        heading : Int32 | Nil = nil,
        period : Int32 | Nil = nil,
        proximity_notification_radius : Int32 | Nil = nil
      )
        @geo_point = geo_point
        @stopped = stopped
        @heading = heading
        @period = period
        @proximity_notification_radius = proximity_notification_radius
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!stopped.nil? ? 1 : 0) |
            (!heading.nil? ? 4 : 0) |
            (!period.nil? ? 2 : 0) |
            (!proximity_notification_radius.nil? ? 8 : 0)
        ).tl_serialize(io)
        @geo_point.tl_serialize(io, false)
        @heading.tl_serialize(io, true) unless @heading.nil?
        @period.tl_serialize(io, true) unless @period.nil?
        @proximity_notification_radius.tl_serialize(io, true) unless @proximity_notification_radius.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          geo_point: Root::TypeInputGeoPoint.tl_deserialize(io, false),
          stopped: flags & 1 == 1,
          heading: flags & 4 == 1 ? Int32.tl_deserialize(io, true) : nil,
          period: flags & 2 == 1 ? Int32.tl_deserialize(io, true) : nil,
          proximity_notification_radius: flags & 8 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class InputMediaPoll < TypeInputMedia
      CONSTRUCTOR_ID = 0x0F94E5F1

      getter poll : Root::TypePoll
      getter correct_answers : Array(Bytes) | Nil
      getter solution : Bytes | Nil
      getter solution_entities : Array(Root::TypeMessageEntity) | Nil

      def initialize(
        poll : Root::TypePoll,
        correct_answers : Array(Bytes) | Nil = nil,
        solution : Bytes | Nil = nil,
        solution_entities : Array(Root::TypeMessageEntity) | Nil = nil
      )
        @poll = poll
        @correct_answers = correct_answers
        @solution = solution
        @solution_entities = solution_entities
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!correct_answers.nil? ? 1 : 0) |
            (!solution.nil? ? 2 : 0) |
            (!solution_entities.nil? ? 2 : 0)
        ).tl_serialize(io)
        @poll.tl_serialize(io, false)
        @correct_answers.tl_serialize(io, false) unless @correct_answers.nil?
        @solution.tl_serialize(io, true) unless @solution.nil?
        @solution_entities.tl_serialize(io, false) unless @solution_entities.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          poll: Root::TypePoll.tl_deserialize(io, false),
          correct_answers: flags & 1 == 1 ? Array(Bytes).tl_deserialize(io, false) : nil,
          solution: flags & 2 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          solution_entities: flags & 2 == 1 ? Array(Root::TypeMessageEntity).tl_deserialize(io, false) : nil,
        )
      end
    end

    class InputMediaDice < TypeInputMedia
      CONSTRUCTOR_ID = 0xE66FBF7B

      getter emoticon : Bytes

      def initialize(
        emoticon : Bytes | String | IO
      )
        @emoticon = emoticon
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @emoticon.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          emoticon: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class InputChatPhotoEmpty < TypeInputChatPhoto
      CONSTRUCTOR_ID = 0x1CA48F57

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputChatUploadedPhoto < TypeInputChatPhoto
      CONSTRUCTOR_ID = 0xC642724E

      getter file : Root::TypeInputFile | Nil
      getter video : Root::TypeInputFile | Nil
      getter video_start_ts : Float64 | Nil

      def initialize(
        file : Root::TypeInputFile | Nil = nil,
        video : Root::TypeInputFile | Nil = nil,
        video_start_ts : Float64 | Nil = nil
      )
        @file = file
        @video = video
        @video_start_ts = video_start_ts
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!file.nil? ? 1 : 0) |
            (!video.nil? ? 2 : 0) |
            (!video_start_ts.nil? ? 4 : 0)
        ).tl_serialize(io)
        @file.tl_serialize(io, false) unless @file.nil?
        @video.tl_serialize(io, false) unless @video.nil?
        @video_start_ts.tl_serialize(io, true) unless @video_start_ts.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          file: flags & 1 == 1 ? Root::TypeInputFile.tl_deserialize(io, false) : nil,
          video: flags & 2 == 1 ? Root::TypeInputFile.tl_deserialize(io, false) : nil,
          video_start_ts: flags & 4 == 1 ? Float64.tl_deserialize(io, true) : nil,
        )
      end
    end

    class InputChatPhoto < TypeInputChatPhoto
      CONSTRUCTOR_ID = 0x8953AD37

      getter id : Root::TypeInputPhoto

      def initialize(
        id : Root::TypeInputPhoto
      )
        @id = id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Root::TypeInputPhoto.tl_deserialize(io, false),
        )
      end
    end

    class InputGeoPointEmpty < TypeInputGeoPoint
      CONSTRUCTOR_ID = 0xE4C123D6

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputGeoPoint < TypeInputGeoPoint
      CONSTRUCTOR_ID = 0x48222FAF

      getter lat : Float64
      getter long : Float64
      getter accuracy_radius : Int32 | Nil

      def initialize(
        lat : Float64,
        long : Float64,
        accuracy_radius : Int32 | Nil = nil
      )
        @lat = lat
        @long = long
        @accuracy_radius = accuracy_radius
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!accuracy_radius.nil? ? 1 : 0)
        ).tl_serialize(io)
        @lat.tl_serialize(io, true)
        @long.tl_serialize(io, true)
        @accuracy_radius.tl_serialize(io, true) unless @accuracy_radius.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          lat: Float64.tl_deserialize(io, true),
          long: Float64.tl_deserialize(io, true),
          accuracy_radius: flags & 1 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class InputPhotoEmpty < TypeInputPhoto
      CONSTRUCTOR_ID = 0x1CD7BF0D

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputPhoto < TypeInputPhoto
      CONSTRUCTOR_ID = 0x3BB3B94A

      getter id : Int64
      getter access_hash : Int64
      getter file_reference : Bytes

      def initialize(
        id : Int64,
        access_hash : Int64,
        file_reference : Bytes | String | IO
      )
        @id = id
        @access_hash = access_hash
        @file_reference = TL::Utils.parse_bytes!(file_reference)
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true)
        @file_reference.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Int64.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
          file_reference: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class InputFileLocation < TypeInputFileLocation
      CONSTRUCTOR_ID = 0xDFDAABE1

      getter volume_id : Int64
      getter local_id : Int32
      getter secret : Int64
      getter file_reference : Bytes

      def initialize(
        volume_id : Int64,
        local_id : Int32,
        secret : Int64,
        file_reference : Bytes | String | IO
      )
        @volume_id = volume_id
        @local_id = local_id
        @secret = secret
        @file_reference = TL::Utils.parse_bytes!(file_reference)
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @volume_id.tl_serialize(io, true)
        @local_id.tl_serialize(io, true)
        @secret.tl_serialize(io, true)
        @file_reference.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          volume_id: Int64.tl_deserialize(io, true),
          local_id: Int32.tl_deserialize(io, true),
          secret: Int64.tl_deserialize(io, true),
          file_reference: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class InputEncryptedFileLocation < TypeInputFileLocation
      CONSTRUCTOR_ID = 0xF5235D55

      getter id : Int64
      getter access_hash : Int64

      def initialize(
        id : Int64,
        access_hash : Int64
      )
        @id = id
        @access_hash = access_hash
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Int64.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
        )
      end
    end

    class InputDocumentFileLocation < TypeInputFileLocation
      CONSTRUCTOR_ID = 0xBAD07584

      getter id : Int64
      getter access_hash : Int64
      getter file_reference : Bytes
      getter thumb_size : Bytes

      def initialize(
        id : Int64,
        access_hash : Int64,
        file_reference : Bytes | String | IO,
        thumb_size : Bytes | String | IO
      )
        @id = id
        @access_hash = access_hash
        @file_reference = TL::Utils.parse_bytes!(file_reference)
        @thumb_size = thumb_size
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true)
        @file_reference.tl_serialize(io, true)
        @thumb_size.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Int64.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
          file_reference: Bytes.tl_deserialize(io, true),
          thumb_size: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class InputSecureFileLocation < TypeInputFileLocation
      CONSTRUCTOR_ID = 0xCBC7EE28

      getter id : Int64
      getter access_hash : Int64

      def initialize(
        id : Int64,
        access_hash : Int64
      )
        @id = id
        @access_hash = access_hash
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Int64.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
        )
      end
    end

    class InputTakeoutFileLocation < TypeInputFileLocation
      CONSTRUCTOR_ID = 0x29BE5899

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputPhotoFileLocation < TypeInputFileLocation
      CONSTRUCTOR_ID = 0x40181FFE

      getter id : Int64
      getter access_hash : Int64
      getter file_reference : Bytes
      getter thumb_size : Bytes

      def initialize(
        id : Int64,
        access_hash : Int64,
        file_reference : Bytes | String | IO,
        thumb_size : Bytes | String | IO
      )
        @id = id
        @access_hash = access_hash
        @file_reference = TL::Utils.parse_bytes!(file_reference)
        @thumb_size = thumb_size
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true)
        @file_reference.tl_serialize(io, true)
        @thumb_size.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Int64.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
          file_reference: Bytes.tl_deserialize(io, true),
          thumb_size: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class InputPhotoLegacyFileLocation < TypeInputFileLocation
      CONSTRUCTOR_ID = 0xD83466F3

      getter id : Int64
      getter access_hash : Int64
      getter file_reference : Bytes
      getter volume_id : Int64
      getter local_id : Int32
      getter secret : Int64

      def initialize(
        id : Int64,
        access_hash : Int64,
        file_reference : Bytes | String | IO,
        volume_id : Int64,
        local_id : Int32,
        secret : Int64
      )
        @id = id
        @access_hash = access_hash
        @file_reference = TL::Utils.parse_bytes!(file_reference)
        @volume_id = volume_id
        @local_id = local_id
        @secret = secret
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true)
        @file_reference.tl_serialize(io, true)
        @volume_id.tl_serialize(io, true)
        @local_id.tl_serialize(io, true)
        @secret.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Int64.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
          file_reference: Bytes.tl_deserialize(io, true),
          volume_id: Int64.tl_deserialize(io, true),
          local_id: Int32.tl_deserialize(io, true),
          secret: Int64.tl_deserialize(io, true),
        )
      end
    end

    class InputPeerPhotoFileLocation < TypeInputFileLocation
      CONSTRUCTOR_ID = 0x37257E99

      getter peer : Root::TypeInputPeer
      getter photo_id : Int64
      getter big : Bool | Nil

      def initialize(
        peer : Root::TypeInputPeer,
        photo_id : Int64,
        big : Bool | Nil = nil
      )
        @peer = peer
        @photo_id = photo_id
        @big = big
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!big.nil? ? 1 : 0)
        ).tl_serialize(io)
        @peer.tl_serialize(io, false)
        @photo_id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          peer: Root::TypeInputPeer.tl_deserialize(io, false),
          photo_id: Int64.tl_deserialize(io, true),
          big: flags & 1 == 1,
        )
      end
    end

    class InputStickerSetThumb < TypeInputFileLocation
      CONSTRUCTOR_ID = 0x9D84F3DB

      getter stickerset : Root::TypeInputStickerSet
      getter thumb_version : Int32

      def initialize(
        stickerset : Root::TypeInputStickerSet,
        thumb_version : Int32
      )
        @stickerset = stickerset
        @thumb_version = thumb_version
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @stickerset.tl_serialize(io, false)
        @thumb_version.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          stickerset: Root::TypeInputStickerSet.tl_deserialize(io, false),
          thumb_version: Int32.tl_deserialize(io, true),
        )
      end
    end

    class InputGroupCallStream < TypeInputFileLocation
      CONSTRUCTOR_ID = 0x0598A92A

      getter call : Root::TypeInputGroupCall
      getter time_ms : Int64
      getter scale : Int32
      getter video_channel : Int32 | Nil
      getter video_quality : Int32 | Nil

      def initialize(
        call : Root::TypeInputGroupCall,
        time_ms : Int64,
        scale : Int32,
        video_channel : Int32 | Nil = nil,
        video_quality : Int32 | Nil = nil
      )
        @call = call
        @time_ms = time_ms
        @scale = scale
        @video_channel = video_channel
        @video_quality = video_quality
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!video_channel.nil? ? 1 : 0) |
            (!video_quality.nil? ? 1 : 0)
        ).tl_serialize(io)
        @call.tl_serialize(io, false)
        @time_ms.tl_serialize(io, true)
        @scale.tl_serialize(io, true)
        @video_channel.tl_serialize(io, true) unless @video_channel.nil?
        @video_quality.tl_serialize(io, true) unless @video_quality.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          call: Root::TypeInputGroupCall.tl_deserialize(io, false),
          time_ms: Int64.tl_deserialize(io, true),
          scale: Int32.tl_deserialize(io, true),
          video_channel: flags & 1 == 1 ? Int32.tl_deserialize(io, true) : nil,
          video_quality: flags & 1 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class PeerUser < TypePeer
      CONSTRUCTOR_ID = 0x59511722

      getter user_id : Int64

      def initialize(
        user_id : Int64
      )
        @user_id = user_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @user_id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          user_id: Int64.tl_deserialize(io, true),
        )
      end
    end

    class PeerChat < TypePeer
      CONSTRUCTOR_ID = 0x36C6019A

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

      def self.tl_deserialize(io : IO, bare = false)
        new(
          chat_id: Int64.tl_deserialize(io, true),
        )
      end
    end

    class PeerChannel < TypePeer
      CONSTRUCTOR_ID = 0xA2A5371E

      getter channel_id : Int64

      def initialize(
        channel_id : Int64
      )
        @channel_id = channel_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel_id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          channel_id: Int64.tl_deserialize(io, true),
        )
      end
    end

    class UserEmpty < TypeUser
      CONSTRUCTOR_ID = 0xD3BC4B7A

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
          id: Int64.tl_deserialize(io, true),
        )
      end
    end

    class User < TypeUser
      CONSTRUCTOR_ID = 0x3FF6ECB0

      getter id : Int64
      getter is_self : Bool | Nil
      getter contact : Bool | Nil
      getter mutual_contact : Bool | Nil
      getter deleted : Bool | Nil
      getter bot : Bool | Nil
      getter bot_chat_history : Bool | Nil
      getter bot_nochats : Bool | Nil
      getter verified : Bool | Nil
      getter restricted : Bool | Nil
      getter min : Bool | Nil
      getter bot_inline_geo : Bool | Nil
      getter support : Bool | Nil
      getter scam : Bool | Nil
      getter apply_min_photo : Bool | Nil
      getter fake : Bool | Nil
      getter access_hash : Int64 | Nil
      getter first_name : Bytes | Nil
      getter last_name : Bytes | Nil
      getter username : Bytes | Nil
      getter phone : Bytes | Nil
      getter photo : Root::TypeUserProfilePhoto | Nil
      getter status : Root::TypeUserStatus | Nil
      getter bot_info_version : Int32 | Nil
      getter restriction_reason : Array(Root::TypeRestrictionReason) | Nil
      getter bot_inline_placeholder : Bytes | Nil
      getter lang_code : Bytes | Nil

      def initialize(
        id : Int64,
        is_self : Bool | Nil = nil,
        contact : Bool | Nil = nil,
        mutual_contact : Bool | Nil = nil,
        deleted : Bool | Nil = nil,
        bot : Bool | Nil = nil,
        bot_chat_history : Bool | Nil = nil,
        bot_nochats : Bool | Nil = nil,
        verified : Bool | Nil = nil,
        restricted : Bool | Nil = nil,
        min : Bool | Nil = nil,
        bot_inline_geo : Bool | Nil = nil,
        support : Bool | Nil = nil,
        scam : Bool | Nil = nil,
        apply_min_photo : Bool | Nil = nil,
        fake : Bool | Nil = nil,
        access_hash : Int64 | Nil = nil,
        first_name : Bytes | Nil = nil,
        last_name : Bytes | Nil = nil,
        username : Bytes | Nil = nil,
        phone : Bytes | Nil = nil,
        photo : Root::TypeUserProfilePhoto | Nil = nil,
        status : Root::TypeUserStatus | Nil = nil,
        bot_info_version : Int32 | Nil = nil,
        restriction_reason : Array(Root::TypeRestrictionReason) | Nil = nil,
        bot_inline_placeholder : Bytes | Nil = nil,
        lang_code : Bytes | Nil = nil
      )
        @id = id
        @is_self = is_self
        @contact = contact
        @mutual_contact = mutual_contact
        @deleted = deleted
        @bot = bot
        @bot_chat_history = bot_chat_history
        @bot_nochats = bot_nochats
        @verified = verified
        @restricted = restricted
        @min = min
        @bot_inline_geo = bot_inline_geo
        @support = support
        @scam = scam
        @apply_min_photo = apply_min_photo
        @fake = fake
        @access_hash = access_hash
        @first_name = first_name
        @last_name = last_name
        @username = username
        @phone = phone
        @photo = photo
        @status = status
        @bot_info_version = bot_info_version
        @restriction_reason = restriction_reason
        @bot_inline_placeholder = bot_inline_placeholder
        @lang_code = lang_code
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!is_self.nil? ? 1024 : 0) |
            (!contact.nil? ? 2048 : 0) |
            (!mutual_contact.nil? ? 4096 : 0) |
            (!deleted.nil? ? 8192 : 0) |
            (!bot.nil? ? 16384 : 0) |
            (!bot_chat_history.nil? ? 32768 : 0) |
            (!bot_nochats.nil? ? 65536 : 0) |
            (!verified.nil? ? 131072 : 0) |
            (!restricted.nil? ? 262144 : 0) |
            (!min.nil? ? 1048576 : 0) |
            (!bot_inline_geo.nil? ? 2097152 : 0) |
            (!support.nil? ? 8388608 : 0) |
            (!scam.nil? ? 16777216 : 0) |
            (!apply_min_photo.nil? ? 33554432 : 0) |
            (!fake.nil? ? 67108864 : 0) |
            (!access_hash.nil? ? 1 : 0) |
            (!first_name.nil? ? 2 : 0) |
            (!last_name.nil? ? 4 : 0) |
            (!username.nil? ? 8 : 0) |
            (!phone.nil? ? 16 : 0) |
            (!photo.nil? ? 32 : 0) |
            (!status.nil? ? 64 : 0) |
            (!bot_info_version.nil? ? 16384 : 0) |
            (!restriction_reason.nil? ? 262144 : 0) |
            (!bot_inline_placeholder.nil? ? 524288 : 0) |
            (!lang_code.nil? ? 4194304 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true) unless @access_hash.nil?
        @first_name.tl_serialize(io, true) unless @first_name.nil?
        @last_name.tl_serialize(io, true) unless @last_name.nil?
        @username.tl_serialize(io, true) unless @username.nil?
        @phone.tl_serialize(io, true) unless @phone.nil?
        @photo.tl_serialize(io, false) unless @photo.nil?
        @status.tl_serialize(io, false) unless @status.nil?
        @bot_info_version.tl_serialize(io, true) unless @bot_info_version.nil?
        @restriction_reason.tl_serialize(io, false) unless @restriction_reason.nil?
        @bot_inline_placeholder.tl_serialize(io, true) unless @bot_inline_placeholder.nil?
        @lang_code.tl_serialize(io, true) unless @lang_code.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          id: Int64.tl_deserialize(io, true),
          is_self: flags & 1024 == 1,
          contact: flags & 2048 == 1,
          mutual_contact: flags & 4096 == 1,
          deleted: flags & 8192 == 1,
          bot: flags & 16384 == 1,
          bot_chat_history: flags & 32768 == 1,
          bot_nochats: flags & 65536 == 1,
          verified: flags & 131072 == 1,
          restricted: flags & 262144 == 1,
          min: flags & 1048576 == 1,
          bot_inline_geo: flags & 2097152 == 1,
          support: flags & 8388608 == 1,
          scam: flags & 16777216 == 1,
          apply_min_photo: flags & 33554432 == 1,
          fake: flags & 67108864 == 1,
          access_hash: flags & 1 == 1 ? Int64.tl_deserialize(io, true) : nil,
          first_name: flags & 2 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          last_name: flags & 4 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          username: flags & 8 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          phone: flags & 16 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          photo: flags & 32 == 1 ? Root::TypeUserProfilePhoto.tl_deserialize(io, false) : nil,
          status: flags & 64 == 1 ? Root::TypeUserStatus.tl_deserialize(io, false) : nil,
          bot_info_version: flags & 16384 == 1 ? Int32.tl_deserialize(io, true) : nil,
          restriction_reason: flags & 262144 == 1 ? Array(Root::TypeRestrictionReason).tl_deserialize(io, false) : nil,
          bot_inline_placeholder: flags & 524288 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          lang_code: flags & 4194304 == 1 ? Bytes.tl_deserialize(io, true) : nil,
        )
      end
    end

    class UserProfilePhotoEmpty < TypeUserProfilePhoto
      CONSTRUCTOR_ID = 0x4F11BAE1

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class UserProfilePhoto < TypeUserProfilePhoto
      CONSTRUCTOR_ID = 0x82D1F706

      getter photo_id : Int64
      getter dc_id : Int32
      getter has_video : Bool | Nil
      getter stripped_thumb : Bytes | Nil

      def initialize(
        photo_id : Int64,
        dc_id : Int32,
        has_video : Bool | Nil = nil,
        stripped_thumb : Bytes | Nil = nil
      )
        @photo_id = photo_id
        @dc_id = dc_id
        @has_video = has_video
        @stripped_thumb = TL::Utils.parse_bytes(stripped_thumb)
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!has_video.nil? ? 1 : 0) |
            (!stripped_thumb.nil? ? 2 : 0)
        ).tl_serialize(io)
        @photo_id.tl_serialize(io, true)
        @stripped_thumb.tl_serialize(io, true) unless @stripped_thumb.nil?
        @dc_id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          photo_id: Int64.tl_deserialize(io, true),
          dc_id: Int32.tl_deserialize(io, true),
          has_video: flags & 1 == 1,
          stripped_thumb: flags & 2 == 1 ? Bytes.tl_deserialize(io, true) : nil,
        )
      end
    end

    class UserStatusEmpty < TypeUserStatus
      CONSTRUCTOR_ID = 0x09D05049

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class UserStatusOnline < TypeUserStatus
      CONSTRUCTOR_ID = 0xEDB93949

      getter expires : Int32

      def initialize(
        expires : Int32
      )
        @expires = expires
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @expires.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          expires: Int32.tl_deserialize(io, true),
        )
      end
    end

    class UserStatusOffline < TypeUserStatus
      CONSTRUCTOR_ID = 0x008C703F

      getter was_online : Int32

      def initialize(
        was_online : Int32
      )
        @was_online = was_online
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @was_online.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          was_online: Int32.tl_deserialize(io, true),
        )
      end
    end

    class UserStatusRecently < TypeUserStatus
      CONSTRUCTOR_ID = 0xE26F42F1

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class UserStatusLastWeek < TypeUserStatus
      CONSTRUCTOR_ID = 0x07BF09FC

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class UserStatusLastMonth < TypeUserStatus
      CONSTRUCTOR_ID = 0x77EBC742

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class ChatEmpty < TypeChat
      CONSTRUCTOR_ID = 0x29562865

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
          id: Int64.tl_deserialize(io, true),
        )
      end
    end

    class Chat < TypeChat
      CONSTRUCTOR_ID = 0x41CBF256

      getter id : Int64
      getter title : Bytes
      getter photo : Root::TypeChatPhoto
      getter participants_count : Int32
      getter date : Int32
      getter version : Int32
      getter creator : Bool | Nil
      getter kicked : Bool | Nil
      getter left : Bool | Nil
      getter deactivated : Bool | Nil
      getter call_active : Bool | Nil
      getter call_not_empty : Bool | Nil
      getter migrated_to : Root::TypeInputChannel | Nil
      getter admin_rights : Root::TypeChatAdminRights | Nil
      getter default_banned_rights : Root::TypeChatBannedRights | Nil

      def initialize(
        id : Int64,
        title : Bytes | String | IO,
        photo : Root::TypeChatPhoto,
        participants_count : Int32,
        date : Int32,
        version : Int32,
        creator : Bool | Nil = nil,
        kicked : Bool | Nil = nil,
        left : Bool | Nil = nil,
        deactivated : Bool | Nil = nil,
        call_active : Bool | Nil = nil,
        call_not_empty : Bool | Nil = nil,
        migrated_to : Root::TypeInputChannel | Nil = nil,
        admin_rights : Root::TypeChatAdminRights | Nil = nil,
        default_banned_rights : Root::TypeChatBannedRights | Nil = nil
      )
        @id = id
        @title = title
        @photo = photo
        @participants_count = participants_count
        @date = date
        @version = version
        @creator = creator
        @kicked = kicked
        @left = left
        @deactivated = deactivated
        @call_active = call_active
        @call_not_empty = call_not_empty
        @migrated_to = migrated_to
        @admin_rights = admin_rights
        @default_banned_rights = default_banned_rights
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!creator.nil? ? 1 : 0) |
            (!kicked.nil? ? 2 : 0) |
            (!left.nil? ? 4 : 0) |
            (!deactivated.nil? ? 32 : 0) |
            (!call_active.nil? ? 8388608 : 0) |
            (!call_not_empty.nil? ? 16777216 : 0) |
            (!migrated_to.nil? ? 64 : 0) |
            (!admin_rights.nil? ? 16384 : 0) |
            (!default_banned_rights.nil? ? 262144 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io, true)
        @title.tl_serialize(io, true)
        @photo.tl_serialize(io, false)
        @participants_count.tl_serialize(io, true)
        @date.tl_serialize(io, true)
        @version.tl_serialize(io, true)
        @migrated_to.tl_serialize(io, false) unless @migrated_to.nil?
        @admin_rights.tl_serialize(io, false) unless @admin_rights.nil?
        @default_banned_rights.tl_serialize(io, false) unless @default_banned_rights.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          id: Int64.tl_deserialize(io, true),
          title: Bytes.tl_deserialize(io, true),
          photo: Root::TypeChatPhoto.tl_deserialize(io, false),
          participants_count: Int32.tl_deserialize(io, true),
          date: Int32.tl_deserialize(io, true),
          version: Int32.tl_deserialize(io, true),
          creator: flags & 1 == 1,
          kicked: flags & 2 == 1,
          left: flags & 4 == 1,
          deactivated: flags & 32 == 1,
          call_active: flags & 8388608 == 1,
          call_not_empty: flags & 16777216 == 1,
          migrated_to: flags & 64 == 1 ? Root::TypeInputChannel.tl_deserialize(io, false) : nil,
          admin_rights: flags & 16384 == 1 ? Root::TypeChatAdminRights.tl_deserialize(io, false) : nil,
          default_banned_rights: flags & 262144 == 1 ? Root::TypeChatBannedRights.tl_deserialize(io, false) : nil,
        )
      end
    end

    class ChatForbidden < TypeChat
      CONSTRUCTOR_ID = 0x6592A1A7

      getter id : Int64
      getter title : Bytes

      def initialize(
        id : Int64,
        title : Bytes | String | IO
      )
        @id = id
        @title = title
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        @title.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Int64.tl_deserialize(io, true),
          title: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class Channel < TypeChat
      CONSTRUCTOR_ID = 0x8261AC61

      getter id : Int64
      getter title : Bytes
      getter photo : Root::TypeChatPhoto
      getter date : Int32
      getter creator : Bool | Nil
      getter left : Bool | Nil
      getter broadcast : Bool | Nil
      getter verified : Bool | Nil
      getter megagroup : Bool | Nil
      getter restricted : Bool | Nil
      getter signatures : Bool | Nil
      getter min : Bool | Nil
      getter scam : Bool | Nil
      getter has_link : Bool | Nil
      getter has_geo : Bool | Nil
      getter slowmode_enabled : Bool | Nil
      getter call_active : Bool | Nil
      getter call_not_empty : Bool | Nil
      getter fake : Bool | Nil
      getter gigagroup : Bool | Nil
      getter access_hash : Int64 | Nil
      getter username : Bytes | Nil
      getter restriction_reason : Array(Root::TypeRestrictionReason) | Nil
      getter admin_rights : Root::TypeChatAdminRights | Nil
      getter banned_rights : Root::TypeChatBannedRights | Nil
      getter default_banned_rights : Root::TypeChatBannedRights | Nil
      getter participants_count : Int32 | Nil

      def initialize(
        id : Int64,
        title : Bytes | String | IO,
        photo : Root::TypeChatPhoto,
        date : Int32,
        creator : Bool | Nil = nil,
        left : Bool | Nil = nil,
        broadcast : Bool | Nil = nil,
        verified : Bool | Nil = nil,
        megagroup : Bool | Nil = nil,
        restricted : Bool | Nil = nil,
        signatures : Bool | Nil = nil,
        min : Bool | Nil = nil,
        scam : Bool | Nil = nil,
        has_link : Bool | Nil = nil,
        has_geo : Bool | Nil = nil,
        slowmode_enabled : Bool | Nil = nil,
        call_active : Bool | Nil = nil,
        call_not_empty : Bool | Nil = nil,
        fake : Bool | Nil = nil,
        gigagroup : Bool | Nil = nil,
        access_hash : Int64 | Nil = nil,
        username : Bytes | Nil = nil,
        restriction_reason : Array(Root::TypeRestrictionReason) | Nil = nil,
        admin_rights : Root::TypeChatAdminRights | Nil = nil,
        banned_rights : Root::TypeChatBannedRights | Nil = nil,
        default_banned_rights : Root::TypeChatBannedRights | Nil = nil,
        participants_count : Int32 | Nil = nil
      )
        @id = id
        @title = title
        @photo = photo
        @date = date
        @creator = creator
        @left = left
        @broadcast = broadcast
        @verified = verified
        @megagroup = megagroup
        @restricted = restricted
        @signatures = signatures
        @min = min
        @scam = scam
        @has_link = has_link
        @has_geo = has_geo
        @slowmode_enabled = slowmode_enabled
        @call_active = call_active
        @call_not_empty = call_not_empty
        @fake = fake
        @gigagroup = gigagroup
        @access_hash = access_hash
        @username = username
        @restriction_reason = restriction_reason
        @admin_rights = admin_rights
        @banned_rights = banned_rights
        @default_banned_rights = default_banned_rights
        @participants_count = participants_count
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!creator.nil? ? 1 : 0) |
            (!left.nil? ? 4 : 0) |
            (!broadcast.nil? ? 32 : 0) |
            (!verified.nil? ? 128 : 0) |
            (!megagroup.nil? ? 256 : 0) |
            (!restricted.nil? ? 512 : 0) |
            (!signatures.nil? ? 2048 : 0) |
            (!min.nil? ? 4096 : 0) |
            (!scam.nil? ? 524288 : 0) |
            (!has_link.nil? ? 1048576 : 0) |
            (!has_geo.nil? ? 2097152 : 0) |
            (!slowmode_enabled.nil? ? 4194304 : 0) |
            (!call_active.nil? ? 8388608 : 0) |
            (!call_not_empty.nil? ? 16777216 : 0) |
            (!fake.nil? ? 33554432 : 0) |
            (!gigagroup.nil? ? 67108864 : 0) |
            (!access_hash.nil? ? 8192 : 0) |
            (!username.nil? ? 64 : 0) |
            (!restriction_reason.nil? ? 512 : 0) |
            (!admin_rights.nil? ? 16384 : 0) |
            (!banned_rights.nil? ? 32768 : 0) |
            (!default_banned_rights.nil? ? 262144 : 0) |
            (!participants_count.nil? ? 131072 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true) unless @access_hash.nil?
        @title.tl_serialize(io, true)
        @username.tl_serialize(io, true) unless @username.nil?
        @photo.tl_serialize(io, false)
        @date.tl_serialize(io, true)
        @restriction_reason.tl_serialize(io, false) unless @restriction_reason.nil?
        @admin_rights.tl_serialize(io, false) unless @admin_rights.nil?
        @banned_rights.tl_serialize(io, false) unless @banned_rights.nil?
        @default_banned_rights.tl_serialize(io, false) unless @default_banned_rights.nil?
        @participants_count.tl_serialize(io, true) unless @participants_count.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          id: Int64.tl_deserialize(io, true),
          title: Bytes.tl_deserialize(io, true),
          photo: Root::TypeChatPhoto.tl_deserialize(io, false),
          date: Int32.tl_deserialize(io, true),
          creator: flags & 1 == 1,
          left: flags & 4 == 1,
          broadcast: flags & 32 == 1,
          verified: flags & 128 == 1,
          megagroup: flags & 256 == 1,
          restricted: flags & 512 == 1,
          signatures: flags & 2048 == 1,
          min: flags & 4096 == 1,
          scam: flags & 524288 == 1,
          has_link: flags & 1048576 == 1,
          has_geo: flags & 2097152 == 1,
          slowmode_enabled: flags & 4194304 == 1,
          call_active: flags & 8388608 == 1,
          call_not_empty: flags & 16777216 == 1,
          fake: flags & 33554432 == 1,
          gigagroup: flags & 67108864 == 1,
          access_hash: flags & 8192 == 1 ? Int64.tl_deserialize(io, true) : nil,
          username: flags & 64 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          restriction_reason: flags & 512 == 1 ? Array(Root::TypeRestrictionReason).tl_deserialize(io, false) : nil,
          admin_rights: flags & 16384 == 1 ? Root::TypeChatAdminRights.tl_deserialize(io, false) : nil,
          banned_rights: flags & 32768 == 1 ? Root::TypeChatBannedRights.tl_deserialize(io, false) : nil,
          default_banned_rights: flags & 262144 == 1 ? Root::TypeChatBannedRights.tl_deserialize(io, false) : nil,
          participants_count: flags & 131072 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class ChannelForbidden < TypeChat
      CONSTRUCTOR_ID = 0x17D493D5

      getter id : Int64
      getter access_hash : Int64
      getter title : Bytes
      getter broadcast : Bool | Nil
      getter megagroup : Bool | Nil
      getter until_date : Int32 | Nil

      def initialize(
        id : Int64,
        access_hash : Int64,
        title : Bytes | String | IO,
        broadcast : Bool | Nil = nil,
        megagroup : Bool | Nil = nil,
        until_date : Int32 | Nil = nil
      )
        @id = id
        @access_hash = access_hash
        @title = title
        @broadcast = broadcast
        @megagroup = megagroup
        @until_date = until_date
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!broadcast.nil? ? 32 : 0) |
            (!megagroup.nil? ? 256 : 0) |
            (!until_date.nil? ? 65536 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true)
        @title.tl_serialize(io, true)
        @until_date.tl_serialize(io, true) unless @until_date.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          id: Int64.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
          title: Bytes.tl_deserialize(io, true),
          broadcast: flags & 32 == 1,
          megagroup: flags & 256 == 1,
          until_date: flags & 65536 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class ChatFull < TypeChatFull
      CONSTRUCTOR_ID = 0x4DBDC099

      getter id : Int64
      getter about : Bytes
      getter participants : Root::TypeChatParticipants
      getter notify_settings : Root::TypePeerNotifySettings
      getter can_set_username : Bool | Nil
      getter has_scheduled : Bool | Nil
      getter chat_photo : Root::TypePhoto | Nil
      getter exported_invite : Root::TypeExportedChatInvite | Nil
      getter bot_info : Array(Root::TypeBotInfo) | Nil
      getter pinned_msg_id : Int32 | Nil
      getter folder_id : Int32 | Nil
      getter call : Root::TypeInputGroupCall | Nil
      getter ttl_period : Int32 | Nil
      getter groupcall_default_join_as : Root::TypePeer | Nil
      getter theme_emoticon : Bytes | Nil

      def initialize(
        id : Int64,
        about : Bytes | String | IO,
        participants : Root::TypeChatParticipants,
        notify_settings : Root::TypePeerNotifySettings,
        can_set_username : Bool | Nil = nil,
        has_scheduled : Bool | Nil = nil,
        chat_photo : Root::TypePhoto | Nil = nil,
        exported_invite : Root::TypeExportedChatInvite | Nil = nil,
        bot_info : Array(Root::TypeBotInfo) | Nil = nil,
        pinned_msg_id : Int32 | Nil = nil,
        folder_id : Int32 | Nil = nil,
        call : Root::TypeInputGroupCall | Nil = nil,
        ttl_period : Int32 | Nil = nil,
        groupcall_default_join_as : Root::TypePeer | Nil = nil,
        theme_emoticon : Bytes | Nil = nil
      )
        @id = id
        @about = about
        @participants = participants
        @notify_settings = notify_settings
        @can_set_username = can_set_username
        @has_scheduled = has_scheduled
        @chat_photo = chat_photo
        @exported_invite = exported_invite
        @bot_info = bot_info
        @pinned_msg_id = pinned_msg_id
        @folder_id = folder_id
        @call = call
        @ttl_period = ttl_period
        @groupcall_default_join_as = groupcall_default_join_as
        @theme_emoticon = theme_emoticon
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!can_set_username.nil? ? 128 : 0) |
            (!has_scheduled.nil? ? 256 : 0) |
            (!chat_photo.nil? ? 4 : 0) |
            (!exported_invite.nil? ? 8192 : 0) |
            (!bot_info.nil? ? 8 : 0) |
            (!pinned_msg_id.nil? ? 64 : 0) |
            (!folder_id.nil? ? 2048 : 0) |
            (!call.nil? ? 4096 : 0) |
            (!ttl_period.nil? ? 16384 : 0) |
            (!groupcall_default_join_as.nil? ? 32768 : 0) |
            (!theme_emoticon.nil? ? 65536 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io, true)
        @about.tl_serialize(io, true)
        @participants.tl_serialize(io, false)
        @chat_photo.tl_serialize(io, false) unless @chat_photo.nil?
        @notify_settings.tl_serialize(io, false)
        @exported_invite.tl_serialize(io, false) unless @exported_invite.nil?
        @bot_info.tl_serialize(io, false) unless @bot_info.nil?
        @pinned_msg_id.tl_serialize(io, true) unless @pinned_msg_id.nil?
        @folder_id.tl_serialize(io, true) unless @folder_id.nil?
        @call.tl_serialize(io, false) unless @call.nil?
        @ttl_period.tl_serialize(io, true) unless @ttl_period.nil?
        @groupcall_default_join_as.tl_serialize(io, false) unless @groupcall_default_join_as.nil?
        @theme_emoticon.tl_serialize(io, true) unless @theme_emoticon.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          id: Int64.tl_deserialize(io, true),
          about: Bytes.tl_deserialize(io, true),
          participants: Root::TypeChatParticipants.tl_deserialize(io, false),
          notify_settings: Root::TypePeerNotifySettings.tl_deserialize(io, false),
          can_set_username: flags & 128 == 1,
          has_scheduled: flags & 256 == 1,
          chat_photo: flags & 4 == 1 ? Root::TypePhoto.tl_deserialize(io, false) : nil,
          exported_invite: flags & 8192 == 1 ? Root::TypeExportedChatInvite.tl_deserialize(io, false) : nil,
          bot_info: flags & 8 == 1 ? Array(Root::TypeBotInfo).tl_deserialize(io, false) : nil,
          pinned_msg_id: flags & 64 == 1 ? Int32.tl_deserialize(io, true) : nil,
          folder_id: flags & 2048 == 1 ? Int32.tl_deserialize(io, true) : nil,
          call: flags & 4096 == 1 ? Root::TypeInputGroupCall.tl_deserialize(io, false) : nil,
          ttl_period: flags & 16384 == 1 ? Int32.tl_deserialize(io, true) : nil,
          groupcall_default_join_as: flags & 32768 == 1 ? Root::TypePeer.tl_deserialize(io, false) : nil,
          theme_emoticon: flags & 65536 == 1 ? Bytes.tl_deserialize(io, true) : nil,
        )
      end
    end

    class ChannelFull < TypeChatFull
      CONSTRUCTOR_ID = 0xE9B27A17

      getter id : Int64
      getter about : Bytes
      getter read_inbox_max_id : Int32
      getter read_outbox_max_id : Int32
      getter unread_count : Int32
      getter chat_photo : Root::TypePhoto
      getter notify_settings : Root::TypePeerNotifySettings
      getter bot_info : Array(Root::TypeBotInfo)
      getter pts : Int32
      getter can_view_participants : Bool | Nil
      getter can_set_username : Bool | Nil
      getter can_set_stickers : Bool | Nil
      getter hidden_prehistory : Bool | Nil
      getter can_set_location : Bool | Nil
      getter has_scheduled : Bool | Nil
      getter can_view_stats : Bool | Nil
      getter blocked : Bool | Nil
      getter participants_count : Int32 | Nil
      getter admins_count : Int32 | Nil
      getter kicked_count : Int32 | Nil
      getter banned_count : Int32 | Nil
      getter online_count : Int32 | Nil
      getter exported_invite : Root::TypeExportedChatInvite | Nil
      getter migrated_from_chat_id : Int64 | Nil
      getter migrated_from_max_id : Int32 | Nil
      getter pinned_msg_id : Int32 | Nil
      getter stickerset : Root::TypeStickerSet | Nil
      getter available_min_id : Int32 | Nil
      getter folder_id : Int32 | Nil
      getter linked_chat_id : Int64 | Nil
      getter location : Root::TypeChannelLocation | Nil
      getter slowmode_seconds : Int32 | Nil
      getter slowmode_next_send_date : Int32 | Nil
      getter stats_dc : Int32 | Nil
      getter call : Root::TypeInputGroupCall | Nil
      getter ttl_period : Int32 | Nil
      getter pending_suggestions : Array(Bytes) | Nil
      getter groupcall_default_join_as : Root::TypePeer | Nil
      getter theme_emoticon : Bytes | Nil

      def initialize(
        id : Int64,
        about : Bytes | String | IO,
        read_inbox_max_id : Int32,
        read_outbox_max_id : Int32,
        unread_count : Int32,
        chat_photo : Root::TypePhoto,
        notify_settings : Root::TypePeerNotifySettings,
        bot_info : Array(Root::TypeBotInfo),
        pts : Int32,
        can_view_participants : Bool | Nil = nil,
        can_set_username : Bool | Nil = nil,
        can_set_stickers : Bool | Nil = nil,
        hidden_prehistory : Bool | Nil = nil,
        can_set_location : Bool | Nil = nil,
        has_scheduled : Bool | Nil = nil,
        can_view_stats : Bool | Nil = nil,
        blocked : Bool | Nil = nil,
        participants_count : Int32 | Nil = nil,
        admins_count : Int32 | Nil = nil,
        kicked_count : Int32 | Nil = nil,
        banned_count : Int32 | Nil = nil,
        online_count : Int32 | Nil = nil,
        exported_invite : Root::TypeExportedChatInvite | Nil = nil,
        migrated_from_chat_id : Int64 | Nil = nil,
        migrated_from_max_id : Int32 | Nil = nil,
        pinned_msg_id : Int32 | Nil = nil,
        stickerset : Root::TypeStickerSet | Nil = nil,
        available_min_id : Int32 | Nil = nil,
        folder_id : Int32 | Nil = nil,
        linked_chat_id : Int64 | Nil = nil,
        location : Root::TypeChannelLocation | Nil = nil,
        slowmode_seconds : Int32 | Nil = nil,
        slowmode_next_send_date : Int32 | Nil = nil,
        stats_dc : Int32 | Nil = nil,
        call : Root::TypeInputGroupCall | Nil = nil,
        ttl_period : Int32 | Nil = nil,
        pending_suggestions : Array(Bytes) | Nil = nil,
        groupcall_default_join_as : Root::TypePeer | Nil = nil,
        theme_emoticon : Bytes | Nil = nil
      )
        @id = id
        @about = about
        @read_inbox_max_id = read_inbox_max_id
        @read_outbox_max_id = read_outbox_max_id
        @unread_count = unread_count
        @chat_photo = chat_photo
        @notify_settings = notify_settings
        @bot_info = bot_info
        @pts = pts
        @can_view_participants = can_view_participants
        @can_set_username = can_set_username
        @can_set_stickers = can_set_stickers
        @hidden_prehistory = hidden_prehistory
        @can_set_location = can_set_location
        @has_scheduled = has_scheduled
        @can_view_stats = can_view_stats
        @blocked = blocked
        @participants_count = participants_count
        @admins_count = admins_count
        @kicked_count = kicked_count
        @banned_count = banned_count
        @online_count = online_count
        @exported_invite = exported_invite
        @migrated_from_chat_id = migrated_from_chat_id
        @migrated_from_max_id = migrated_from_max_id
        @pinned_msg_id = pinned_msg_id
        @stickerset = stickerset
        @available_min_id = available_min_id
        @folder_id = folder_id
        @linked_chat_id = linked_chat_id
        @location = location
        @slowmode_seconds = slowmode_seconds
        @slowmode_next_send_date = slowmode_next_send_date
        @stats_dc = stats_dc
        @call = call
        @ttl_period = ttl_period
        @pending_suggestions = pending_suggestions
        @groupcall_default_join_as = groupcall_default_join_as
        @theme_emoticon = theme_emoticon
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!can_view_participants.nil? ? 8 : 0) |
            (!can_set_username.nil? ? 64 : 0) |
            (!can_set_stickers.nil? ? 128 : 0) |
            (!hidden_prehistory.nil? ? 1024 : 0) |
            (!can_set_location.nil? ? 65536 : 0) |
            (!has_scheduled.nil? ? 524288 : 0) |
            (!can_view_stats.nil? ? 1048576 : 0) |
            (!blocked.nil? ? 4194304 : 0) |
            (!participants_count.nil? ? 1 : 0) |
            (!admins_count.nil? ? 2 : 0) |
            (!kicked_count.nil? ? 4 : 0) |
            (!banned_count.nil? ? 4 : 0) |
            (!online_count.nil? ? 8192 : 0) |
            (!exported_invite.nil? ? 8388608 : 0) |
            (!migrated_from_chat_id.nil? ? 16 : 0) |
            (!migrated_from_max_id.nil? ? 16 : 0) |
            (!pinned_msg_id.nil? ? 32 : 0) |
            (!stickerset.nil? ? 256 : 0) |
            (!available_min_id.nil? ? 512 : 0) |
            (!folder_id.nil? ? 2048 : 0) |
            (!linked_chat_id.nil? ? 16384 : 0) |
            (!location.nil? ? 32768 : 0) |
            (!slowmode_seconds.nil? ? 131072 : 0) |
            (!slowmode_next_send_date.nil? ? 262144 : 0) |
            (!stats_dc.nil? ? 4096 : 0) |
            (!call.nil? ? 2097152 : 0) |
            (!ttl_period.nil? ? 16777216 : 0) |
            (!pending_suggestions.nil? ? 33554432 : 0) |
            (!groupcall_default_join_as.nil? ? 67108864 : 0) |
            (!theme_emoticon.nil? ? 134217728 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io, true)
        @about.tl_serialize(io, true)
        @participants_count.tl_serialize(io, true) unless @participants_count.nil?
        @admins_count.tl_serialize(io, true) unless @admins_count.nil?
        @kicked_count.tl_serialize(io, true) unless @kicked_count.nil?
        @banned_count.tl_serialize(io, true) unless @banned_count.nil?
        @online_count.tl_serialize(io, true) unless @online_count.nil?
        @read_inbox_max_id.tl_serialize(io, true)
        @read_outbox_max_id.tl_serialize(io, true)
        @unread_count.tl_serialize(io, true)
        @chat_photo.tl_serialize(io, false)
        @notify_settings.tl_serialize(io, false)
        @exported_invite.tl_serialize(io, false) unless @exported_invite.nil?
        @bot_info.tl_serialize(io, false)
        @migrated_from_chat_id.tl_serialize(io, true) unless @migrated_from_chat_id.nil?
        @migrated_from_max_id.tl_serialize(io, true) unless @migrated_from_max_id.nil?
        @pinned_msg_id.tl_serialize(io, true) unless @pinned_msg_id.nil?
        @stickerset.tl_serialize(io, false) unless @stickerset.nil?
        @available_min_id.tl_serialize(io, true) unless @available_min_id.nil?
        @folder_id.tl_serialize(io, true) unless @folder_id.nil?
        @linked_chat_id.tl_serialize(io, true) unless @linked_chat_id.nil?
        @location.tl_serialize(io, false) unless @location.nil?
        @slowmode_seconds.tl_serialize(io, true) unless @slowmode_seconds.nil?
        @slowmode_next_send_date.tl_serialize(io, true) unless @slowmode_next_send_date.nil?
        @stats_dc.tl_serialize(io, true) unless @stats_dc.nil?
        @pts.tl_serialize(io, true)
        @call.tl_serialize(io, false) unless @call.nil?
        @ttl_period.tl_serialize(io, true) unless @ttl_period.nil?
        @pending_suggestions.tl_serialize(io, false) unless @pending_suggestions.nil?
        @groupcall_default_join_as.tl_serialize(io, false) unless @groupcall_default_join_as.nil?
        @theme_emoticon.tl_serialize(io, true) unless @theme_emoticon.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          id: Int64.tl_deserialize(io, true),
          about: Bytes.tl_deserialize(io, true),
          read_inbox_max_id: Int32.tl_deserialize(io, true),
          read_outbox_max_id: Int32.tl_deserialize(io, true),
          unread_count: Int32.tl_deserialize(io, true),
          chat_photo: Root::TypePhoto.tl_deserialize(io, false),
          notify_settings: Root::TypePeerNotifySettings.tl_deserialize(io, false),
          bot_info: Array(Root::TypeBotInfo).tl_deserialize(io, false),
          pts: Int32.tl_deserialize(io, true),
          can_view_participants: flags & 8 == 1,
          can_set_username: flags & 64 == 1,
          can_set_stickers: flags & 128 == 1,
          hidden_prehistory: flags & 1024 == 1,
          can_set_location: flags & 65536 == 1,
          has_scheduled: flags & 524288 == 1,
          can_view_stats: flags & 1048576 == 1,
          blocked: flags & 4194304 == 1,
          participants_count: flags & 1 == 1 ? Int32.tl_deserialize(io, true) : nil,
          admins_count: flags & 2 == 1 ? Int32.tl_deserialize(io, true) : nil,
          kicked_count: flags & 4 == 1 ? Int32.tl_deserialize(io, true) : nil,
          banned_count: flags & 4 == 1 ? Int32.tl_deserialize(io, true) : nil,
          online_count: flags & 8192 == 1 ? Int32.tl_deserialize(io, true) : nil,
          exported_invite: flags & 8388608 == 1 ? Root::TypeExportedChatInvite.tl_deserialize(io, false) : nil,
          migrated_from_chat_id: flags & 16 == 1 ? Int64.tl_deserialize(io, true) : nil,
          migrated_from_max_id: flags & 16 == 1 ? Int32.tl_deserialize(io, true) : nil,
          pinned_msg_id: flags & 32 == 1 ? Int32.tl_deserialize(io, true) : nil,
          stickerset: flags & 256 == 1 ? Root::TypeStickerSet.tl_deserialize(io, false) : nil,
          available_min_id: flags & 512 == 1 ? Int32.tl_deserialize(io, true) : nil,
          folder_id: flags & 2048 == 1 ? Int32.tl_deserialize(io, true) : nil,
          linked_chat_id: flags & 16384 == 1 ? Int64.tl_deserialize(io, true) : nil,
          location: flags & 32768 == 1 ? Root::TypeChannelLocation.tl_deserialize(io, false) : nil,
          slowmode_seconds: flags & 131072 == 1 ? Int32.tl_deserialize(io, true) : nil,
          slowmode_next_send_date: flags & 262144 == 1 ? Int32.tl_deserialize(io, true) : nil,
          stats_dc: flags & 4096 == 1 ? Int32.tl_deserialize(io, true) : nil,
          call: flags & 2097152 == 1 ? Root::TypeInputGroupCall.tl_deserialize(io, false) : nil,
          ttl_period: flags & 16777216 == 1 ? Int32.tl_deserialize(io, true) : nil,
          pending_suggestions: flags & 33554432 == 1 ? Array(Bytes).tl_deserialize(io, false) : nil,
          groupcall_default_join_as: flags & 67108864 == 1 ? Root::TypePeer.tl_deserialize(io, false) : nil,
          theme_emoticon: flags & 134217728 == 1 ? Bytes.tl_deserialize(io, true) : nil,
        )
      end
    end

    class ChatParticipant < TypeChatParticipant
      CONSTRUCTOR_ID = 0xC02D4007

      getter user_id : Int64
      getter inviter_id : Int64
      getter date : Int32

      def initialize(
        user_id : Int64,
        inviter_id : Int64,
        date : Int32
      )
        @user_id = user_id
        @inviter_id = inviter_id
        @date = date
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @user_id.tl_serialize(io, true)
        @inviter_id.tl_serialize(io, true)
        @date.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          user_id: Int64.tl_deserialize(io, true),
          inviter_id: Int64.tl_deserialize(io, true),
          date: Int32.tl_deserialize(io, true),
        )
      end
    end

    class ChatParticipantCreator < TypeChatParticipant
      CONSTRUCTOR_ID = 0xE46BCEE4

      getter user_id : Int64

      def initialize(
        user_id : Int64
      )
        @user_id = user_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @user_id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          user_id: Int64.tl_deserialize(io, true),
        )
      end
    end

    class ChatParticipantAdmin < TypeChatParticipant
      CONSTRUCTOR_ID = 0xA0933F5B

      getter user_id : Int64
      getter inviter_id : Int64
      getter date : Int32

      def initialize(
        user_id : Int64,
        inviter_id : Int64,
        date : Int32
      )
        @user_id = user_id
        @inviter_id = inviter_id
        @date = date
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @user_id.tl_serialize(io, true)
        @inviter_id.tl_serialize(io, true)
        @date.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          user_id: Int64.tl_deserialize(io, true),
          inviter_id: Int64.tl_deserialize(io, true),
          date: Int32.tl_deserialize(io, true),
        )
      end
    end

    class ChatParticipantsForbidden < TypeChatParticipants
      CONSTRUCTOR_ID = 0x8763D3E1

      getter chat_id : Int64
      getter self_participant : Root::TypeChatParticipant | Nil

      def initialize(
        chat_id : Int64,
        self_participant : Root::TypeChatParticipant | Nil = nil
      )
        @chat_id = chat_id
        @self_participant = self_participant
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!self_participant.nil? ? 1 : 0)
        ).tl_serialize(io)
        @chat_id.tl_serialize(io, true)
        @self_participant.tl_serialize(io, false) unless @self_participant.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          chat_id: Int64.tl_deserialize(io, true),
          self_participant: flags & 1 == 1 ? Root::TypeChatParticipant.tl_deserialize(io, false) : nil,
        )
      end
    end

    class ChatParticipants < TypeChatParticipants
      CONSTRUCTOR_ID = 0x3CBC93F8

      getter chat_id : Int64
      getter participants : Array(Root::TypeChatParticipant)
      getter version : Int32

      def initialize(
        chat_id : Int64,
        participants : Array(Root::TypeChatParticipant),
        version : Int32
      )
        @chat_id = chat_id
        @participants = participants
        @version = version
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @chat_id.tl_serialize(io, true)
        @participants.tl_serialize(io, false)
        @version.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          chat_id: Int64.tl_deserialize(io, true),
          participants: Array(Root::TypeChatParticipant).tl_deserialize(io, false),
          version: Int32.tl_deserialize(io, true),
        )
      end
    end

    class ChatPhotoEmpty < TypeChatPhoto
      CONSTRUCTOR_ID = 0x37C1011C

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class ChatPhoto < TypeChatPhoto
      CONSTRUCTOR_ID = 0x1C6E1C11

      getter photo_id : Int64
      getter dc_id : Int32
      getter has_video : Bool | Nil
      getter stripped_thumb : Bytes | Nil

      def initialize(
        photo_id : Int64,
        dc_id : Int32,
        has_video : Bool | Nil = nil,
        stripped_thumb : Bytes | Nil = nil
      )
        @photo_id = photo_id
        @dc_id = dc_id
        @has_video = has_video
        @stripped_thumb = TL::Utils.parse_bytes(stripped_thumb)
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!has_video.nil? ? 1 : 0) |
            (!stripped_thumb.nil? ? 2 : 0)
        ).tl_serialize(io)
        @photo_id.tl_serialize(io, true)
        @stripped_thumb.tl_serialize(io, true) unless @stripped_thumb.nil?
        @dc_id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          photo_id: Int64.tl_deserialize(io, true),
          dc_id: Int32.tl_deserialize(io, true),
          has_video: flags & 1 == 1,
          stripped_thumb: flags & 2 == 1 ? Bytes.tl_deserialize(io, true) : nil,
        )
      end
    end

    class MessageEmpty < TypeMessage
      CONSTRUCTOR_ID = 0x90A6CA84

      getter id : Int32
      getter peer_id : Root::TypePeer | Nil

      def initialize(
        id : Int32,
        peer_id : Root::TypePeer | Nil = nil
      )
        @id = id
        @peer_id = peer_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!peer_id.nil? ? 1 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io, true)
        @peer_id.tl_serialize(io, false) unless @peer_id.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          id: Int32.tl_deserialize(io, true),
          peer_id: flags & 1 == 1 ? Root::TypePeer.tl_deserialize(io, false) : nil,
        )
      end
    end

    class Message < TypeMessage
      CONSTRUCTOR_ID = 0x85D6CBE2

      getter id : Int32
      getter peer_id : Root::TypePeer
      getter date : Int32
      getter message : Bytes
      getter outgoing : Bool | Nil
      getter mentioned : Bool | Nil
      getter media_unread : Bool | Nil
      getter silent : Bool | Nil
      getter post : Bool | Nil
      getter from_scheduled : Bool | Nil
      getter legacy : Bool | Nil
      getter edit_hide : Bool | Nil
      getter pinned : Bool | Nil
      getter from_id : Root::TypePeer | Nil
      getter fwd_from : Root::TypeMessageFwdHeader | Nil
      getter via_bot_id : Int64 | Nil
      getter reply_to : Root::TypeMessageReplyHeader | Nil
      getter media : Root::TypeMessageMedia | Nil
      getter reply_markup : Root::TypeReplyMarkup | Nil
      getter entities : Array(Root::TypeMessageEntity) | Nil
      getter views : Int32 | Nil
      getter forwards : Int32 | Nil
      getter replies : Root::TypeMessageReplies | Nil
      getter edit_date : Int32 | Nil
      getter post_author : Bytes | Nil
      getter grouped_id : Int64 | Nil
      getter restriction_reason : Array(Root::TypeRestrictionReason) | Nil
      getter ttl_period : Int32 | Nil

      def initialize(
        id : Int32,
        peer_id : Root::TypePeer,
        date : Int32,
        message : Bytes | String | IO,
        outgoing : Bool | Nil = nil,
        mentioned : Bool | Nil = nil,
        media_unread : Bool | Nil = nil,
        silent : Bool | Nil = nil,
        post : Bool | Nil = nil,
        from_scheduled : Bool | Nil = nil,
        legacy : Bool | Nil = nil,
        edit_hide : Bool | Nil = nil,
        pinned : Bool | Nil = nil,
        from_id : Root::TypePeer | Nil = nil,
        fwd_from : Root::TypeMessageFwdHeader | Nil = nil,
        via_bot_id : Int64 | Nil = nil,
        reply_to : Root::TypeMessageReplyHeader | Nil = nil,
        media : Root::TypeMessageMedia | Nil = nil,
        reply_markup : Root::TypeReplyMarkup | Nil = nil,
        entities : Array(Root::TypeMessageEntity) | Nil = nil,
        views : Int32 | Nil = nil,
        forwards : Int32 | Nil = nil,
        replies : Root::TypeMessageReplies | Nil = nil,
        edit_date : Int32 | Nil = nil,
        post_author : Bytes | Nil = nil,
        grouped_id : Int64 | Nil = nil,
        restriction_reason : Array(Root::TypeRestrictionReason) | Nil = nil,
        ttl_period : Int32 | Nil = nil
      )
        @id = id
        @peer_id = peer_id
        @date = date
        @message = message
        @outgoing = outgoing
        @mentioned = mentioned
        @media_unread = media_unread
        @silent = silent
        @post = post
        @from_scheduled = from_scheduled
        @legacy = legacy
        @edit_hide = edit_hide
        @pinned = pinned
        @from_id = from_id
        @fwd_from = fwd_from
        @via_bot_id = via_bot_id
        @reply_to = reply_to
        @media = media
        @reply_markup = reply_markup
        @entities = entities
        @views = views
        @forwards = forwards
        @replies = replies
        @edit_date = edit_date
        @post_author = post_author
        @grouped_id = grouped_id
        @restriction_reason = restriction_reason
        @ttl_period = ttl_period
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!outgoing.nil? ? 2 : 0) |
            (!mentioned.nil? ? 16 : 0) |
            (!media_unread.nil? ? 32 : 0) |
            (!silent.nil? ? 8192 : 0) |
            (!post.nil? ? 16384 : 0) |
            (!from_scheduled.nil? ? 262144 : 0) |
            (!legacy.nil? ? 524288 : 0) |
            (!edit_hide.nil? ? 2097152 : 0) |
            (!pinned.nil? ? 16777216 : 0) |
            (!from_id.nil? ? 256 : 0) |
            (!fwd_from.nil? ? 4 : 0) |
            (!via_bot_id.nil? ? 2048 : 0) |
            (!reply_to.nil? ? 8 : 0) |
            (!media.nil? ? 512 : 0) |
            (!reply_markup.nil? ? 64 : 0) |
            (!entities.nil? ? 128 : 0) |
            (!views.nil? ? 1024 : 0) |
            (!forwards.nil? ? 1024 : 0) |
            (!replies.nil? ? 8388608 : 0) |
            (!edit_date.nil? ? 32768 : 0) |
            (!post_author.nil? ? 65536 : 0) |
            (!grouped_id.nil? ? 131072 : 0) |
            (!restriction_reason.nil? ? 4194304 : 0) |
            (!ttl_period.nil? ? 33554432 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io, true)
        @from_id.tl_serialize(io, false) unless @from_id.nil?
        @peer_id.tl_serialize(io, false)
        @fwd_from.tl_serialize(io, false) unless @fwd_from.nil?
        @via_bot_id.tl_serialize(io, true) unless @via_bot_id.nil?
        @reply_to.tl_serialize(io, false) unless @reply_to.nil?
        @date.tl_serialize(io, true)
        @message.tl_serialize(io, true)
        @media.tl_serialize(io, false) unless @media.nil?
        @reply_markup.tl_serialize(io, false) unless @reply_markup.nil?
        @entities.tl_serialize(io, false) unless @entities.nil?
        @views.tl_serialize(io, true) unless @views.nil?
        @forwards.tl_serialize(io, true) unless @forwards.nil?
        @replies.tl_serialize(io, false) unless @replies.nil?
        @edit_date.tl_serialize(io, true) unless @edit_date.nil?
        @post_author.tl_serialize(io, true) unless @post_author.nil?
        @grouped_id.tl_serialize(io, true) unless @grouped_id.nil?
        @restriction_reason.tl_serialize(io, false) unless @restriction_reason.nil?
        @ttl_period.tl_serialize(io, true) unless @ttl_period.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          id: Int32.tl_deserialize(io, true),
          peer_id: Root::TypePeer.tl_deserialize(io, false),
          date: Int32.tl_deserialize(io, true),
          message: Bytes.tl_deserialize(io, true),
          outgoing: flags & 2 == 1,
          mentioned: flags & 16 == 1,
          media_unread: flags & 32 == 1,
          silent: flags & 8192 == 1,
          post: flags & 16384 == 1,
          from_scheduled: flags & 262144 == 1,
          legacy: flags & 524288 == 1,
          edit_hide: flags & 2097152 == 1,
          pinned: flags & 16777216 == 1,
          from_id: flags & 256 == 1 ? Root::TypePeer.tl_deserialize(io, false) : nil,
          fwd_from: flags & 4 == 1 ? Root::TypeMessageFwdHeader.tl_deserialize(io, false) : nil,
          via_bot_id: flags & 2048 == 1 ? Int64.tl_deserialize(io, true) : nil,
          reply_to: flags & 8 == 1 ? Root::TypeMessageReplyHeader.tl_deserialize(io, false) : nil,
          media: flags & 512 == 1 ? Root::TypeMessageMedia.tl_deserialize(io, false) : nil,
          reply_markup: flags & 64 == 1 ? Root::TypeReplyMarkup.tl_deserialize(io, false) : nil,
          entities: flags & 128 == 1 ? Array(Root::TypeMessageEntity).tl_deserialize(io, false) : nil,
          views: flags & 1024 == 1 ? Int32.tl_deserialize(io, true) : nil,
          forwards: flags & 1024 == 1 ? Int32.tl_deserialize(io, true) : nil,
          replies: flags & 8388608 == 1 ? Root::TypeMessageReplies.tl_deserialize(io, false) : nil,
          edit_date: flags & 32768 == 1 ? Int32.tl_deserialize(io, true) : nil,
          post_author: flags & 65536 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          grouped_id: flags & 131072 == 1 ? Int64.tl_deserialize(io, true) : nil,
          restriction_reason: flags & 4194304 == 1 ? Array(Root::TypeRestrictionReason).tl_deserialize(io, false) : nil,
          ttl_period: flags & 33554432 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class MessageService < TypeMessage
      CONSTRUCTOR_ID = 0x2B085862

      getter id : Int32
      getter peer_id : Root::TypePeer
      getter date : Int32
      getter action : Root::TypeMessageAction
      getter outgoing : Bool | Nil
      getter mentioned : Bool | Nil
      getter media_unread : Bool | Nil
      getter silent : Bool | Nil
      getter post : Bool | Nil
      getter legacy : Bool | Nil
      getter from_id : Root::TypePeer | Nil
      getter reply_to : Root::TypeMessageReplyHeader | Nil
      getter ttl_period : Int32 | Nil

      def initialize(
        id : Int32,
        peer_id : Root::TypePeer,
        date : Int32,
        action : Root::TypeMessageAction,
        outgoing : Bool | Nil = nil,
        mentioned : Bool | Nil = nil,
        media_unread : Bool | Nil = nil,
        silent : Bool | Nil = nil,
        post : Bool | Nil = nil,
        legacy : Bool | Nil = nil,
        from_id : Root::TypePeer | Nil = nil,
        reply_to : Root::TypeMessageReplyHeader | Nil = nil,
        ttl_period : Int32 | Nil = nil
      )
        @id = id
        @peer_id = peer_id
        @date = date
        @action = action
        @outgoing = outgoing
        @mentioned = mentioned
        @media_unread = media_unread
        @silent = silent
        @post = post
        @legacy = legacy
        @from_id = from_id
        @reply_to = reply_to
        @ttl_period = ttl_period
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!outgoing.nil? ? 2 : 0) |
            (!mentioned.nil? ? 16 : 0) |
            (!media_unread.nil? ? 32 : 0) |
            (!silent.nil? ? 8192 : 0) |
            (!post.nil? ? 16384 : 0) |
            (!legacy.nil? ? 524288 : 0) |
            (!from_id.nil? ? 256 : 0) |
            (!reply_to.nil? ? 8 : 0) |
            (!ttl_period.nil? ? 33554432 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io, true)
        @from_id.tl_serialize(io, false) unless @from_id.nil?
        @peer_id.tl_serialize(io, false)
        @reply_to.tl_serialize(io, false) unless @reply_to.nil?
        @date.tl_serialize(io, true)
        @action.tl_serialize(io, false)
        @ttl_period.tl_serialize(io, true) unless @ttl_period.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          id: Int32.tl_deserialize(io, true),
          peer_id: Root::TypePeer.tl_deserialize(io, false),
          date: Int32.tl_deserialize(io, true),
          action: Root::TypeMessageAction.tl_deserialize(io, false),
          outgoing: flags & 2 == 1,
          mentioned: flags & 16 == 1,
          media_unread: flags & 32 == 1,
          silent: flags & 8192 == 1,
          post: flags & 16384 == 1,
          legacy: flags & 524288 == 1,
          from_id: flags & 256 == 1 ? Root::TypePeer.tl_deserialize(io, false) : nil,
          reply_to: flags & 8 == 1 ? Root::TypeMessageReplyHeader.tl_deserialize(io, false) : nil,
          ttl_period: flags & 33554432 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class MessageMediaEmpty < TypeMessageMedia
      CONSTRUCTOR_ID = 0x3DED6320

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class MessageMediaPhoto < TypeMessageMedia
      CONSTRUCTOR_ID = 0x695150D7

      getter photo : Root::TypePhoto | Nil
      getter ttl_seconds : Int32 | Nil

      def initialize(
        photo : Root::TypePhoto | Nil = nil,
        ttl_seconds : Int32 | Nil = nil
      )
        @photo = photo
        @ttl_seconds = ttl_seconds
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!photo.nil? ? 1 : 0) |
            (!ttl_seconds.nil? ? 4 : 0)
        ).tl_serialize(io)
        @photo.tl_serialize(io, false) unless @photo.nil?
        @ttl_seconds.tl_serialize(io, true) unless @ttl_seconds.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          photo: flags & 1 == 1 ? Root::TypePhoto.tl_deserialize(io, false) : nil,
          ttl_seconds: flags & 4 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class MessageMediaGeo < TypeMessageMedia
      CONSTRUCTOR_ID = 0x56E0D474

      getter geo : Root::TypeGeoPoint

      def initialize(
        geo : Root::TypeGeoPoint
      )
        @geo = geo
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @geo.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          geo: Root::TypeGeoPoint.tl_deserialize(io, false),
        )
      end
    end

    class MessageMediaContact < TypeMessageMedia
      CONSTRUCTOR_ID = 0x70322949

      getter phone_number : Bytes
      getter first_name : Bytes
      getter last_name : Bytes
      getter vcard : Bytes
      getter user_id : Int64

      def initialize(
        phone_number : Bytes | String | IO,
        first_name : Bytes | String | IO,
        last_name : Bytes | String | IO,
        vcard : Bytes | String | IO,
        user_id : Int64
      )
        @phone_number = phone_number
        @first_name = first_name
        @last_name = last_name
        @vcard = vcard
        @user_id = user_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @phone_number.tl_serialize(io, true)
        @first_name.tl_serialize(io, true)
        @last_name.tl_serialize(io, true)
        @vcard.tl_serialize(io, true)
        @user_id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          phone_number: Bytes.tl_deserialize(io, true),
          first_name: Bytes.tl_deserialize(io, true),
          last_name: Bytes.tl_deserialize(io, true),
          vcard: Bytes.tl_deserialize(io, true),
          user_id: Int64.tl_deserialize(io, true),
        )
      end
    end

    class MessageMediaUnsupported < TypeMessageMedia
      CONSTRUCTOR_ID = 0x9F84F49E

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class MessageMediaDocument < TypeMessageMedia
      CONSTRUCTOR_ID = 0x9CB070D7

      getter document : Root::TypeDocument | Nil
      getter ttl_seconds : Int32 | Nil

      def initialize(
        document : Root::TypeDocument | Nil = nil,
        ttl_seconds : Int32 | Nil = nil
      )
        @document = document
        @ttl_seconds = ttl_seconds
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!document.nil? ? 1 : 0) |
            (!ttl_seconds.nil? ? 4 : 0)
        ).tl_serialize(io)
        @document.tl_serialize(io, false) unless @document.nil?
        @ttl_seconds.tl_serialize(io, true) unless @ttl_seconds.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          document: flags & 1 == 1 ? Root::TypeDocument.tl_deserialize(io, false) : nil,
          ttl_seconds: flags & 4 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class MessageMediaWebPage < TypeMessageMedia
      CONSTRUCTOR_ID = 0xA32DD600

      getter webpage : Root::TypeWebPage

      def initialize(
        webpage : Root::TypeWebPage
      )
        @webpage = webpage
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @webpage.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          webpage: Root::TypeWebPage.tl_deserialize(io, false),
        )
      end
    end

    class MessageMediaVenue < TypeMessageMedia
      CONSTRUCTOR_ID = 0x2EC0533F

      getter geo : Root::TypeGeoPoint
      getter title : Bytes
      getter address : Bytes
      getter provider : Bytes
      getter venue_id : Bytes
      getter venue_type : Bytes

      def initialize(
        geo : Root::TypeGeoPoint,
        title : Bytes | String | IO,
        address : Bytes | String | IO,
        provider : Bytes | String | IO,
        venue_id : Bytes | String | IO,
        venue_type : Bytes | String | IO
      )
        @geo = geo
        @title = title
        @address = address
        @provider = provider
        @venue_id = venue_id
        @venue_type = venue_type
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @geo.tl_serialize(io, false)
        @title.tl_serialize(io, true)
        @address.tl_serialize(io, true)
        @provider.tl_serialize(io, true)
        @venue_id.tl_serialize(io, true)
        @venue_type.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          geo: Root::TypeGeoPoint.tl_deserialize(io, false),
          title: Bytes.tl_deserialize(io, true),
          address: Bytes.tl_deserialize(io, true),
          provider: Bytes.tl_deserialize(io, true),
          venue_id: Bytes.tl_deserialize(io, true),
          venue_type: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class MessageMediaGame < TypeMessageMedia
      CONSTRUCTOR_ID = 0xFDB19008

      getter game : Root::TypeGame

      def initialize(
        game : Root::TypeGame
      )
        @game = game
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @game.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          game: Root::TypeGame.tl_deserialize(io, false),
        )
      end
    end

    class MessageMediaInvoice < TypeMessageMedia
      CONSTRUCTOR_ID = 0x84551347

      getter title : Bytes
      getter description : Bytes
      getter currency : Bytes
      getter total_amount : Int64
      getter start_param : Bytes
      getter shipping_address_requested : Bool | Nil
      getter test : Bool | Nil
      getter photo : Root::TypeWebDocument | Nil
      getter receipt_msg_id : Int32 | Nil

      def initialize(
        title : Bytes | String | IO,
        description : Bytes | String | IO,
        currency : Bytes | String | IO,
        total_amount : Int64,
        start_param : Bytes | String | IO,
        shipping_address_requested : Bool | Nil = nil,
        test : Bool | Nil = nil,
        photo : Root::TypeWebDocument | Nil = nil,
        receipt_msg_id : Int32 | Nil = nil
      )
        @title = title
        @description = description
        @currency = currency
        @total_amount = total_amount
        @start_param = start_param
        @shipping_address_requested = shipping_address_requested
        @test = test
        @photo = photo
        @receipt_msg_id = receipt_msg_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!shipping_address_requested.nil? ? 2 : 0) |
            (!test.nil? ? 8 : 0) |
            (!photo.nil? ? 1 : 0) |
            (!receipt_msg_id.nil? ? 4 : 0)
        ).tl_serialize(io)
        @title.tl_serialize(io, true)
        @description.tl_serialize(io, true)
        @photo.tl_serialize(io, false) unless @photo.nil?
        @receipt_msg_id.tl_serialize(io, true) unless @receipt_msg_id.nil?
        @currency.tl_serialize(io, true)
        @total_amount.tl_serialize(io, true)
        @start_param.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          title: Bytes.tl_deserialize(io, true),
          description: Bytes.tl_deserialize(io, true),
          currency: Bytes.tl_deserialize(io, true),
          total_amount: Int64.tl_deserialize(io, true),
          start_param: Bytes.tl_deserialize(io, true),
          shipping_address_requested: flags & 2 == 1,
          test: flags & 8 == 1,
          photo: flags & 1 == 1 ? Root::TypeWebDocument.tl_deserialize(io, false) : nil,
          receipt_msg_id: flags & 4 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class MessageMediaGeoLive < TypeMessageMedia
      CONSTRUCTOR_ID = 0xB940C666

      getter geo : Root::TypeGeoPoint
      getter period : Int32
      getter heading : Int32 | Nil
      getter proximity_notification_radius : Int32 | Nil

      def initialize(
        geo : Root::TypeGeoPoint,
        period : Int32,
        heading : Int32 | Nil = nil,
        proximity_notification_radius : Int32 | Nil = nil
      )
        @geo = geo
        @period = period
        @heading = heading
        @proximity_notification_radius = proximity_notification_radius
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!heading.nil? ? 1 : 0) |
            (!proximity_notification_radius.nil? ? 2 : 0)
        ).tl_serialize(io)
        @geo.tl_serialize(io, false)
        @heading.tl_serialize(io, true) unless @heading.nil?
        @period.tl_serialize(io, true)
        @proximity_notification_radius.tl_serialize(io, true) unless @proximity_notification_radius.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          geo: Root::TypeGeoPoint.tl_deserialize(io, false),
          period: Int32.tl_deserialize(io, true),
          heading: flags & 1 == 1 ? Int32.tl_deserialize(io, true) : nil,
          proximity_notification_radius: flags & 2 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class MessageMediaPoll < TypeMessageMedia
      CONSTRUCTOR_ID = 0x4BD6E798

      getter poll : Root::TypePoll
      getter results : Root::TypePollResults

      def initialize(
        poll : Root::TypePoll,
        results : Root::TypePollResults
      )
        @poll = poll
        @results = results
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @poll.tl_serialize(io, false)
        @results.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          poll: Root::TypePoll.tl_deserialize(io, false),
          results: Root::TypePollResults.tl_deserialize(io, false),
        )
      end
    end

    class MessageMediaDice < TypeMessageMedia
      CONSTRUCTOR_ID = 0x3F7EE58B

      getter value : Int32
      getter emoticon : Bytes

      def initialize(
        value : Int32,
        emoticon : Bytes | String | IO
      )
        @value = value
        @emoticon = emoticon
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @value.tl_serialize(io, true)
        @emoticon.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          value: Int32.tl_deserialize(io, true),
          emoticon: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class MessageActionEmpty < TypeMessageAction
      CONSTRUCTOR_ID = 0xB6AEF7B0

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class MessageActionChatCreate < TypeMessageAction
      CONSTRUCTOR_ID = 0xBD47CBAD

      getter title : Bytes
      getter users : Array(Int64)

      def initialize(
        title : Bytes | String | IO,
        users : Array(Int64)
      )
        @title = title
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @title.tl_serialize(io, true)
        @users.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          title: Bytes.tl_deserialize(io, true),
          users: Array(Int64).tl_deserialize(io, false),
        )
      end
    end

    class MessageActionChatEditTitle < TypeMessageAction
      CONSTRUCTOR_ID = 0xB5A1CE5A

      getter title : Bytes

      def initialize(
        title : Bytes | String | IO
      )
        @title = title
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @title.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          title: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class MessageActionChatEditPhoto < TypeMessageAction
      CONSTRUCTOR_ID = 0x7FCB13A8

      getter photo : Root::TypePhoto

      def initialize(
        photo : Root::TypePhoto
      )
        @photo = photo
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @photo.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          photo: Root::TypePhoto.tl_deserialize(io, false),
        )
      end
    end

    class MessageActionChatDeletePhoto < TypeMessageAction
      CONSTRUCTOR_ID = 0x95E3FBEF

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class MessageActionChatAddUser < TypeMessageAction
      CONSTRUCTOR_ID = 0x15CEFD00

      getter users : Array(Int64)

      def initialize(
        users : Array(Int64)
      )
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @users.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          users: Array(Int64).tl_deserialize(io, false),
        )
      end
    end

    class MessageActionChatDeleteUser < TypeMessageAction
      CONSTRUCTOR_ID = 0xA43F30CC

      getter user_id : Int64

      def initialize(
        user_id : Int64
      )
        @user_id = user_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @user_id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          user_id: Int64.tl_deserialize(io, true),
        )
      end
    end

    class MessageActionChatJoinedByLink < TypeMessageAction
      CONSTRUCTOR_ID = 0x031224C3

      getter inviter_id : Int64

      def initialize(
        inviter_id : Int64
      )
        @inviter_id = inviter_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @inviter_id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          inviter_id: Int64.tl_deserialize(io, true),
        )
      end
    end

    class MessageActionChannelCreate < TypeMessageAction
      CONSTRUCTOR_ID = 0x95D2AC92

      getter title : Bytes

      def initialize(
        title : Bytes | String | IO
      )
        @title = title
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @title.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          title: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class MessageActionChatMigrateTo < TypeMessageAction
      CONSTRUCTOR_ID = 0xE1037F92

      getter channel_id : Int64

      def initialize(
        channel_id : Int64
      )
        @channel_id = channel_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel_id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          channel_id: Int64.tl_deserialize(io, true),
        )
      end
    end

    class MessageActionChannelMigrateFrom < TypeMessageAction
      CONSTRUCTOR_ID = 0xEA3948E9

      getter title : Bytes
      getter chat_id : Int64

      def initialize(
        title : Bytes | String | IO,
        chat_id : Int64
      )
        @title = title
        @chat_id = chat_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @title.tl_serialize(io, true)
        @chat_id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          title: Bytes.tl_deserialize(io, true),
          chat_id: Int64.tl_deserialize(io, true),
        )
      end
    end

    class MessageActionPinMessage < TypeMessageAction
      CONSTRUCTOR_ID = 0x94BD38ED

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class MessageActionHistoryClear < TypeMessageAction
      CONSTRUCTOR_ID = 0x9FBAB604

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class MessageActionGameScore < TypeMessageAction
      CONSTRUCTOR_ID = 0x92A72876

      getter game_id : Int64
      getter score : Int32

      def initialize(
        game_id : Int64,
        score : Int32
      )
        @game_id = game_id
        @score = score
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @game_id.tl_serialize(io, true)
        @score.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          game_id: Int64.tl_deserialize(io, true),
          score: Int32.tl_deserialize(io, true),
        )
      end
    end

    class MessageActionPaymentSentMe < TypeMessageAction
      CONSTRUCTOR_ID = 0x8F31B327

      getter currency : Bytes
      getter total_amount : Int64
      getter payload : Bytes
      getter charge : Root::TypePaymentCharge
      getter info : Root::TypePaymentRequestedInfo | Nil
      getter shipping_option_id : Bytes | Nil

      def initialize(
        currency : Bytes | String | IO,
        total_amount : Int64,
        payload : Bytes | String | IO,
        charge : Root::TypePaymentCharge,
        info : Root::TypePaymentRequestedInfo | Nil = nil,
        shipping_option_id : Bytes | Nil = nil
      )
        @currency = currency
        @total_amount = total_amount
        @payload = TL::Utils.parse_bytes!(payload)
        @charge = charge
        @info = info
        @shipping_option_id = shipping_option_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!info.nil? ? 1 : 0) |
            (!shipping_option_id.nil? ? 2 : 0)
        ).tl_serialize(io)
        @currency.tl_serialize(io, true)
        @total_amount.tl_serialize(io, true)
        @payload.tl_serialize(io, true)
        @info.tl_serialize(io, false) unless @info.nil?
        @shipping_option_id.tl_serialize(io, true) unless @shipping_option_id.nil?
        @charge.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          currency: Bytes.tl_deserialize(io, true),
          total_amount: Int64.tl_deserialize(io, true),
          payload: Bytes.tl_deserialize(io, true),
          charge: Root::TypePaymentCharge.tl_deserialize(io, false),
          info: flags & 1 == 1 ? Root::TypePaymentRequestedInfo.tl_deserialize(io, false) : nil,
          shipping_option_id: flags & 2 == 1 ? Bytes.tl_deserialize(io, true) : nil,
        )
      end
    end

    class MessageActionPaymentSent < TypeMessageAction
      CONSTRUCTOR_ID = 0x40699CD0

      getter currency : Bytes
      getter total_amount : Int64

      def initialize(
        currency : Bytes | String | IO,
        total_amount : Int64
      )
        @currency = currency
        @total_amount = total_amount
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @currency.tl_serialize(io, true)
        @total_amount.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          currency: Bytes.tl_deserialize(io, true),
          total_amount: Int64.tl_deserialize(io, true),
        )
      end
    end

    class MessageActionPhoneCall < TypeMessageAction
      CONSTRUCTOR_ID = 0x80E11A7F

      getter call_id : Int64
      getter video : Bool | Nil
      getter reason : Root::TypePhoneCallDiscardReason | Nil
      getter duration : Int32 | Nil

      def initialize(
        call_id : Int64,
        video : Bool | Nil = nil,
        reason : Root::TypePhoneCallDiscardReason | Nil = nil,
        duration : Int32 | Nil = nil
      )
        @call_id = call_id
        @video = video
        @reason = reason
        @duration = duration
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!video.nil? ? 4 : 0) |
            (!reason.nil? ? 1 : 0) |
            (!duration.nil? ? 2 : 0)
        ).tl_serialize(io)
        @call_id.tl_serialize(io, true)
        @reason.tl_serialize(io, false) unless @reason.nil?
        @duration.tl_serialize(io, true) unless @duration.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          call_id: Int64.tl_deserialize(io, true),
          video: flags & 4 == 1,
          reason: flags & 1 == 1 ? Root::TypePhoneCallDiscardReason.tl_deserialize(io, false) : nil,
          duration: flags & 2 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class MessageActionScreenshotTaken < TypeMessageAction
      CONSTRUCTOR_ID = 0x4792929B

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class MessageActionCustomAction < TypeMessageAction
      CONSTRUCTOR_ID = 0xFAE69F56

      getter message : Bytes

      def initialize(
        message : Bytes | String | IO
      )
        @message = message
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @message.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          message: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class MessageActionBotAllowed < TypeMessageAction
      CONSTRUCTOR_ID = 0xABE9AFFE

      getter domain : Bytes

      def initialize(
        domain : Bytes | String | IO
      )
        @domain = domain
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @domain.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          domain: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class MessageActionSecureValuesSentMe < TypeMessageAction
      CONSTRUCTOR_ID = 0x1B287353

      getter values : Array(Root::TypeSecureValue)
      getter credentials : Root::TypeSecureCredentialsEncrypted

      def initialize(
        values : Array(Root::TypeSecureValue),
        credentials : Root::TypeSecureCredentialsEncrypted
      )
        @values = values
        @credentials = credentials
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @values.tl_serialize(io, false)
        @credentials.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          values: Array(Root::TypeSecureValue).tl_deserialize(io, false),
          credentials: Root::TypeSecureCredentialsEncrypted.tl_deserialize(io, false),
        )
      end
    end

    class MessageActionSecureValuesSent < TypeMessageAction
      CONSTRUCTOR_ID = 0xD95C6154

      getter types : Array(Root::TypeSecureValueType)

      def initialize(
        types : Array(Root::TypeSecureValueType)
      )
        @types = types
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @types.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          types: Array(Root::TypeSecureValueType).tl_deserialize(io, false),
        )
      end
    end

    class MessageActionContactSignUp < TypeMessageAction
      CONSTRUCTOR_ID = 0xF3F25F76

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class MessageActionGeoProximityReached < TypeMessageAction
      CONSTRUCTOR_ID = 0x98E0D697

      getter from_id : Root::TypePeer
      getter to_id : Root::TypePeer
      getter distance : Int32

      def initialize(
        from_id : Root::TypePeer,
        to_id : Root::TypePeer,
        distance : Int32
      )
        @from_id = from_id
        @to_id = to_id
        @distance = distance
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @from_id.tl_serialize(io, false)
        @to_id.tl_serialize(io, false)
        @distance.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          from_id: Root::TypePeer.tl_deserialize(io, false),
          to_id: Root::TypePeer.tl_deserialize(io, false),
          distance: Int32.tl_deserialize(io, true),
        )
      end
    end

    class MessageActionGroupCall < TypeMessageAction
      CONSTRUCTOR_ID = 0x7A0D7F42

      getter call : Root::TypeInputGroupCall
      getter duration : Int32 | Nil

      def initialize(
        call : Root::TypeInputGroupCall,
        duration : Int32 | Nil = nil
      )
        @call = call
        @duration = duration
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!duration.nil? ? 1 : 0)
        ).tl_serialize(io)
        @call.tl_serialize(io, false)
        @duration.tl_serialize(io, true) unless @duration.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          call: Root::TypeInputGroupCall.tl_deserialize(io, false),
          duration: flags & 1 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class MessageActionInviteToGroupCall < TypeMessageAction
      CONSTRUCTOR_ID = 0x502F92F7

      getter call : Root::TypeInputGroupCall
      getter users : Array(Int64)

      def initialize(
        call : Root::TypeInputGroupCall,
        users : Array(Int64)
      )
        @call = call
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @call.tl_serialize(io, false)
        @users.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          call: Root::TypeInputGroupCall.tl_deserialize(io, false),
          users: Array(Int64).tl_deserialize(io, false),
        )
      end
    end

    class MessageActionSetMessagesTTL < TypeMessageAction
      CONSTRUCTOR_ID = 0xAA1AFBFD

      getter period : Int32

      def initialize(
        period : Int32
      )
        @period = period
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @period.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          period: Int32.tl_deserialize(io, true),
        )
      end
    end

    class MessageActionGroupCallScheduled < TypeMessageAction
      CONSTRUCTOR_ID = 0xB3A07661

      getter call : Root::TypeInputGroupCall
      getter schedule_date : Int32

      def initialize(
        call : Root::TypeInputGroupCall,
        schedule_date : Int32
      )
        @call = call
        @schedule_date = schedule_date
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @call.tl_serialize(io, false)
        @schedule_date.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          call: Root::TypeInputGroupCall.tl_deserialize(io, false),
          schedule_date: Int32.tl_deserialize(io, true),
        )
      end
    end

    class MessageActionSetChatTheme < TypeMessageAction
      CONSTRUCTOR_ID = 0xAA786345

      getter emoticon : Bytes

      def initialize(
        emoticon : Bytes | String | IO
      )
        @emoticon = emoticon
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @emoticon.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          emoticon: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class Dialog < TypeDialog
      CONSTRUCTOR_ID = 0x2C171F72

      getter peer : Root::TypePeer
      getter top_message : Int32
      getter read_inbox_max_id : Int32
      getter read_outbox_max_id : Int32
      getter unread_count : Int32
      getter unread_mentions_count : Int32
      getter notify_settings : Root::TypePeerNotifySettings
      getter pinned : Bool | Nil
      getter unread_mark : Bool | Nil
      getter pts : Int32 | Nil
      getter draft : Root::TypeDraftMessage | Nil
      getter folder_id : Int32 | Nil

      def initialize(
        peer : Root::TypePeer,
        top_message : Int32,
        read_inbox_max_id : Int32,
        read_outbox_max_id : Int32,
        unread_count : Int32,
        unread_mentions_count : Int32,
        notify_settings : Root::TypePeerNotifySettings,
        pinned : Bool | Nil = nil,
        unread_mark : Bool | Nil = nil,
        pts : Int32 | Nil = nil,
        draft : Root::TypeDraftMessage | Nil = nil,
        folder_id : Int32 | Nil = nil
      )
        @peer = peer
        @top_message = top_message
        @read_inbox_max_id = read_inbox_max_id
        @read_outbox_max_id = read_outbox_max_id
        @unread_count = unread_count
        @unread_mentions_count = unread_mentions_count
        @notify_settings = notify_settings
        @pinned = pinned
        @unread_mark = unread_mark
        @pts = pts
        @draft = draft
        @folder_id = folder_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!pinned.nil? ? 4 : 0) |
            (!unread_mark.nil? ? 8 : 0) |
            (!pts.nil? ? 1 : 0) |
            (!draft.nil? ? 2 : 0) |
            (!folder_id.nil? ? 16 : 0)
        ).tl_serialize(io)
        @peer.tl_serialize(io, false)
        @top_message.tl_serialize(io, true)
        @read_inbox_max_id.tl_serialize(io, true)
        @read_outbox_max_id.tl_serialize(io, true)
        @unread_count.tl_serialize(io, true)
        @unread_mentions_count.tl_serialize(io, true)
        @notify_settings.tl_serialize(io, false)
        @pts.tl_serialize(io, true) unless @pts.nil?
        @draft.tl_serialize(io, false) unless @draft.nil?
        @folder_id.tl_serialize(io, true) unless @folder_id.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          peer: Root::TypePeer.tl_deserialize(io, false),
          top_message: Int32.tl_deserialize(io, true),
          read_inbox_max_id: Int32.tl_deserialize(io, true),
          read_outbox_max_id: Int32.tl_deserialize(io, true),
          unread_count: Int32.tl_deserialize(io, true),
          unread_mentions_count: Int32.tl_deserialize(io, true),
          notify_settings: Root::TypePeerNotifySettings.tl_deserialize(io, false),
          pinned: flags & 4 == 1,
          unread_mark: flags & 8 == 1,
          pts: flags & 1 == 1 ? Int32.tl_deserialize(io, true) : nil,
          draft: flags & 2 == 1 ? Root::TypeDraftMessage.tl_deserialize(io, false) : nil,
          folder_id: flags & 16 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class DialogFolder < TypeDialog
      CONSTRUCTOR_ID = 0x71BD134C

      getter folder : Root::TypeFolder
      getter peer : Root::TypePeer
      getter top_message : Int32
      getter unread_muted_peers_count : Int32
      getter unread_unmuted_peers_count : Int32
      getter unread_muted_messages_count : Int32
      getter unread_unmuted_messages_count : Int32
      getter pinned : Bool | Nil

      def initialize(
        folder : Root::TypeFolder,
        peer : Root::TypePeer,
        top_message : Int32,
        unread_muted_peers_count : Int32,
        unread_unmuted_peers_count : Int32,
        unread_muted_messages_count : Int32,
        unread_unmuted_messages_count : Int32,
        pinned : Bool | Nil = nil
      )
        @folder = folder
        @peer = peer
        @top_message = top_message
        @unread_muted_peers_count = unread_muted_peers_count
        @unread_unmuted_peers_count = unread_unmuted_peers_count
        @unread_muted_messages_count = unread_muted_messages_count
        @unread_unmuted_messages_count = unread_unmuted_messages_count
        @pinned = pinned
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!pinned.nil? ? 4 : 0)
        ).tl_serialize(io)
        @folder.tl_serialize(io, false)
        @peer.tl_serialize(io, false)
        @top_message.tl_serialize(io, true)
        @unread_muted_peers_count.tl_serialize(io, true)
        @unread_unmuted_peers_count.tl_serialize(io, true)
        @unread_muted_messages_count.tl_serialize(io, true)
        @unread_unmuted_messages_count.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          folder: Root::TypeFolder.tl_deserialize(io, false),
          peer: Root::TypePeer.tl_deserialize(io, false),
          top_message: Int32.tl_deserialize(io, true),
          unread_muted_peers_count: Int32.tl_deserialize(io, true),
          unread_unmuted_peers_count: Int32.tl_deserialize(io, true),
          unread_muted_messages_count: Int32.tl_deserialize(io, true),
          unread_unmuted_messages_count: Int32.tl_deserialize(io, true),
          pinned: flags & 4 == 1,
        )
      end
    end

    class PhotoEmpty < TypePhoto
      CONSTRUCTOR_ID = 0x2331B22D

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
          id: Int64.tl_deserialize(io, true),
        )
      end
    end

    class Photo < TypePhoto
      CONSTRUCTOR_ID = 0xFB197A65

      getter id : Int64
      getter access_hash : Int64
      getter file_reference : Bytes
      getter date : Int32
      getter sizes : Array(Root::TypePhotoSize)
      getter dc_id : Int32
      getter has_stickers : Bool | Nil
      getter video_sizes : Array(Root::TypeVideoSize) | Nil

      def initialize(
        id : Int64,
        access_hash : Int64,
        file_reference : Bytes | String | IO,
        date : Int32,
        sizes : Array(Root::TypePhotoSize),
        dc_id : Int32,
        has_stickers : Bool | Nil = nil,
        video_sizes : Array(Root::TypeVideoSize) | Nil = nil
      )
        @id = id
        @access_hash = access_hash
        @file_reference = TL::Utils.parse_bytes!(file_reference)
        @date = date
        @sizes = sizes
        @dc_id = dc_id
        @has_stickers = has_stickers
        @video_sizes = video_sizes
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!has_stickers.nil? ? 1 : 0) |
            (!video_sizes.nil? ? 2 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true)
        @file_reference.tl_serialize(io, true)
        @date.tl_serialize(io, true)
        @sizes.tl_serialize(io, false)
        @video_sizes.tl_serialize(io, false) unless @video_sizes.nil?
        @dc_id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          id: Int64.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
          file_reference: Bytes.tl_deserialize(io, true),
          date: Int32.tl_deserialize(io, true),
          sizes: Array(Root::TypePhotoSize).tl_deserialize(io, false),
          dc_id: Int32.tl_deserialize(io, true),
          has_stickers: flags & 1 == 1,
          video_sizes: flags & 2 == 1 ? Array(Root::TypeVideoSize).tl_deserialize(io, false) : nil,
        )
      end
    end

    class PhotoSizeEmpty < TypePhotoSize
      CONSTRUCTOR_ID = 0x0E17E23C

      getter type : Bytes

      def initialize(
        type : Bytes | String | IO
      )
        @type = type
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @type.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          type: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class PhotoSize < TypePhotoSize
      CONSTRUCTOR_ID = 0x75C78E60

      getter type : Bytes
      getter w : Int32
      getter h : Int32
      getter size : Int32

      def initialize(
        type : Bytes | String | IO,
        w : Int32,
        h : Int32,
        size : Int32
      )
        @type = type
        @w = w
        @h = h
        @size = size
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @type.tl_serialize(io, true)
        @w.tl_serialize(io, true)
        @h.tl_serialize(io, true)
        @size.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          type: Bytes.tl_deserialize(io, true),
          w: Int32.tl_deserialize(io, true),
          h: Int32.tl_deserialize(io, true),
          size: Int32.tl_deserialize(io, true),
        )
      end
    end

    class PhotoCachedSize < TypePhotoSize
      CONSTRUCTOR_ID = 0x021E1AD6

      getter type : Bytes
      getter w : Int32
      getter h : Int32
      getter bytes : Bytes

      def initialize(
        type : Bytes | String | IO,
        w : Int32,
        h : Int32,
        bytes : Bytes | String | IO
      )
        @type = type
        @w = w
        @h = h
        @bytes = TL::Utils.parse_bytes!(bytes)
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @type.tl_serialize(io, true)
        @w.tl_serialize(io, true)
        @h.tl_serialize(io, true)
        @bytes.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          type: Bytes.tl_deserialize(io, true),
          w: Int32.tl_deserialize(io, true),
          h: Int32.tl_deserialize(io, true),
          bytes: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class PhotoStrippedSize < TypePhotoSize
      CONSTRUCTOR_ID = 0xE0B0BC2E

      getter type : Bytes
      getter bytes : Bytes

      def initialize(
        type : Bytes | String | IO,
        bytes : Bytes | String | IO
      )
        @type = type
        @bytes = TL::Utils.parse_bytes!(bytes)
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @type.tl_serialize(io, true)
        @bytes.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          type: Bytes.tl_deserialize(io, true),
          bytes: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class PhotoSizeProgressive < TypePhotoSize
      CONSTRUCTOR_ID = 0xFA3EFB95

      getter type : Bytes
      getter w : Int32
      getter h : Int32
      getter sizes : Array(Int32)

      def initialize(
        type : Bytes | String | IO,
        w : Int32,
        h : Int32,
        sizes : Array(Int32)
      )
        @type = type
        @w = w
        @h = h
        @sizes = sizes
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @type.tl_serialize(io, true)
        @w.tl_serialize(io, true)
        @h.tl_serialize(io, true)
        @sizes.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          type: Bytes.tl_deserialize(io, true),
          w: Int32.tl_deserialize(io, true),
          h: Int32.tl_deserialize(io, true),
          sizes: Array(Int32).tl_deserialize(io, false),
        )
      end
    end

    class PhotoPathSize < TypePhotoSize
      CONSTRUCTOR_ID = 0xD8214D41

      getter type : Bytes
      getter bytes : Bytes

      def initialize(
        type : Bytes | String | IO,
        bytes : Bytes | String | IO
      )
        @type = type
        @bytes = TL::Utils.parse_bytes!(bytes)
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @type.tl_serialize(io, true)
        @bytes.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          type: Bytes.tl_deserialize(io, true),
          bytes: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class GeoPointEmpty < TypeGeoPoint
      CONSTRUCTOR_ID = 0x1117DD5F

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class GeoPoint < TypeGeoPoint
      CONSTRUCTOR_ID = 0xB2A2F663

      getter long : Float64
      getter lat : Float64
      getter access_hash : Int64
      getter accuracy_radius : Int32 | Nil

      def initialize(
        long : Float64,
        lat : Float64,
        access_hash : Int64,
        accuracy_radius : Int32 | Nil = nil
      )
        @long = long
        @lat = lat
        @access_hash = access_hash
        @accuracy_radius = accuracy_radius
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!accuracy_radius.nil? ? 1 : 0)
        ).tl_serialize(io)
        @long.tl_serialize(io, true)
        @lat.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true)
        @accuracy_radius.tl_serialize(io, true) unless @accuracy_radius.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          long: Float64.tl_deserialize(io, true),
          lat: Float64.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
          accuracy_radius: flags & 1 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class InputNotifyPeer < TypeInputNotifyPeer
      CONSTRUCTOR_ID = 0xB8BC5B0C

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

      def self.tl_deserialize(io : IO, bare = false)
        new(
          peer: Root::TypeInputPeer.tl_deserialize(io, false),
        )
      end
    end

    class InputNotifyUsers < TypeInputNotifyPeer
      CONSTRUCTOR_ID = 0x193B4417

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputNotifyChats < TypeInputNotifyPeer
      CONSTRUCTOR_ID = 0x4A95E84E

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputNotifyBroadcasts < TypeInputNotifyPeer
      CONSTRUCTOR_ID = 0xB1DB7C7E

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputPeerNotifySettings < TypeInputPeerNotifySettings
      CONSTRUCTOR_ID = 0x9C3D198E

      getter show_previews : Bool | Nil
      getter silent : Bool | Nil
      getter mute_until : Int32 | Nil
      getter sound : Bytes | Nil

      def initialize(
        show_previews : Bool | Nil = nil,
        silent : Bool | Nil = nil,
        mute_until : Int32 | Nil = nil,
        sound : Bytes | Nil = nil
      )
        @show_previews = show_previews
        @silent = silent
        @mute_until = mute_until
        @sound = sound
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!show_previews.nil? ? 1 : 0) |
            (!silent.nil? ? 2 : 0) |
            (!mute_until.nil? ? 4 : 0) |
            (!sound.nil? ? 8 : 0)
        ).tl_serialize(io)
        @show_previews.tl_serialize(io, false) unless @show_previews.nil?
        @silent.tl_serialize(io, false) unless @silent.nil?
        @mute_until.tl_serialize(io, true) unless @mute_until.nil?
        @sound.tl_serialize(io, true) unless @sound.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          show_previews: flags & 1 == 1 ? Bool.tl_deserialize(io, false) : nil,
          silent: flags & 2 == 1 ? Bool.tl_deserialize(io, false) : nil,
          mute_until: flags & 4 == 1 ? Int32.tl_deserialize(io, true) : nil,
          sound: flags & 8 == 1 ? Bytes.tl_deserialize(io, true) : nil,
        )
      end
    end

    class PeerNotifySettings < TypePeerNotifySettings
      CONSTRUCTOR_ID = 0xAF509D20

      getter show_previews : Bool | Nil
      getter silent : Bool | Nil
      getter mute_until : Int32 | Nil
      getter sound : Bytes | Nil

      def initialize(
        show_previews : Bool | Nil = nil,
        silent : Bool | Nil = nil,
        mute_until : Int32 | Nil = nil,
        sound : Bytes | Nil = nil
      )
        @show_previews = show_previews
        @silent = silent
        @mute_until = mute_until
        @sound = sound
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!show_previews.nil? ? 1 : 0) |
            (!silent.nil? ? 2 : 0) |
            (!mute_until.nil? ? 4 : 0) |
            (!sound.nil? ? 8 : 0)
        ).tl_serialize(io)
        @show_previews.tl_serialize(io, false) unless @show_previews.nil?
        @silent.tl_serialize(io, false) unless @silent.nil?
        @mute_until.tl_serialize(io, true) unless @mute_until.nil?
        @sound.tl_serialize(io, true) unless @sound.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          show_previews: flags & 1 == 1 ? Bool.tl_deserialize(io, false) : nil,
          silent: flags & 2 == 1 ? Bool.tl_deserialize(io, false) : nil,
          mute_until: flags & 4 == 1 ? Int32.tl_deserialize(io, true) : nil,
          sound: flags & 8 == 1 ? Bytes.tl_deserialize(io, true) : nil,
        )
      end
    end

    class PeerSettings < TypePeerSettings
      CONSTRUCTOR_ID = 0x733F2961

      getter report_spam : Bool | Nil
      getter add_contact : Bool | Nil
      getter block_contact : Bool | Nil
      getter share_contact : Bool | Nil
      getter need_contacts_exception : Bool | Nil
      getter report_geo : Bool | Nil
      getter autoarchived : Bool | Nil
      getter invite_members : Bool | Nil
      getter geo_distance : Int32 | Nil

      def initialize(
        report_spam : Bool | Nil = nil,
        add_contact : Bool | Nil = nil,
        block_contact : Bool | Nil = nil,
        share_contact : Bool | Nil = nil,
        need_contacts_exception : Bool | Nil = nil,
        report_geo : Bool | Nil = nil,
        autoarchived : Bool | Nil = nil,
        invite_members : Bool | Nil = nil,
        geo_distance : Int32 | Nil = nil
      )
        @report_spam = report_spam
        @add_contact = add_contact
        @block_contact = block_contact
        @share_contact = share_contact
        @need_contacts_exception = need_contacts_exception
        @report_geo = report_geo
        @autoarchived = autoarchived
        @invite_members = invite_members
        @geo_distance = geo_distance
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!report_spam.nil? ? 1 : 0) |
            (!add_contact.nil? ? 2 : 0) |
            (!block_contact.nil? ? 4 : 0) |
            (!share_contact.nil? ? 8 : 0) |
            (!need_contacts_exception.nil? ? 16 : 0) |
            (!report_geo.nil? ? 32 : 0) |
            (!autoarchived.nil? ? 128 : 0) |
            (!invite_members.nil? ? 256 : 0) |
            (!geo_distance.nil? ? 64 : 0)
        ).tl_serialize(io)
        @geo_distance.tl_serialize(io, true) unless @geo_distance.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          report_spam: flags & 1 == 1,
          add_contact: flags & 2 == 1,
          block_contact: flags & 4 == 1,
          share_contact: flags & 8 == 1,
          need_contacts_exception: flags & 16 == 1,
          report_geo: flags & 32 == 1,
          autoarchived: flags & 128 == 1,
          invite_members: flags & 256 == 1,
          geo_distance: flags & 64 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class WallPaper < TypeWallPaper
      CONSTRUCTOR_ID = 0xA437C3ED

      getter id : Int64
      getter access_hash : Int64
      getter slug : Bytes
      getter document : Root::TypeDocument
      getter creator : Bool | Nil
      getter default : Bool | Nil
      getter pattern : Bool | Nil
      getter dark : Bool | Nil
      getter settings : Root::TypeWallPaperSettings | Nil

      def initialize(
        id : Int64,
        access_hash : Int64,
        slug : Bytes | String | IO,
        document : Root::TypeDocument,
        creator : Bool | Nil = nil,
        default : Bool | Nil = nil,
        pattern : Bool | Nil = nil,
        dark : Bool | Nil = nil,
        settings : Root::TypeWallPaperSettings | Nil = nil
      )
        @id = id
        @access_hash = access_hash
        @slug = slug
        @document = document
        @creator = creator
        @default = default
        @pattern = pattern
        @dark = dark
        @settings = settings
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        (
          (!creator.nil? ? 1 : 0) |
            (!default.nil? ? 2 : 0) |
            (!pattern.nil? ? 8 : 0) |
            (!dark.nil? ? 16 : 0) |
            (!settings.nil? ? 4 : 0)
        ).tl_serialize(io)
        @access_hash.tl_serialize(io, true)
        @slug.tl_serialize(io, true)
        @document.tl_serialize(io, false)
        @settings.tl_serialize(io, false) unless @settings.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          id: Int64.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
          slug: Bytes.tl_deserialize(io, true),
          document: Root::TypeDocument.tl_deserialize(io, false),
          creator: flags & 1 == 1,
          default: flags & 2 == 1,
          pattern: flags & 8 == 1,
          dark: flags & 16 == 1,
          settings: flags & 4 == 1 ? Root::TypeWallPaperSettings.tl_deserialize(io, false) : nil,
        )
      end
    end

    class WallPaperNoFile < TypeWallPaper
      CONSTRUCTOR_ID = 0xE0804116

      getter id : Int64
      getter default : Bool | Nil
      getter dark : Bool | Nil
      getter settings : Root::TypeWallPaperSettings | Nil

      def initialize(
        id : Int64,
        default : Bool | Nil = nil,
        dark : Bool | Nil = nil,
        settings : Root::TypeWallPaperSettings | Nil = nil
      )
        @id = id
        @default = default
        @dark = dark
        @settings = settings
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        (
          (!default.nil? ? 2 : 0) |
            (!dark.nil? ? 16 : 0) |
            (!settings.nil? ? 4 : 0)
        ).tl_serialize(io)
        @settings.tl_serialize(io, false) unless @settings.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          id: Int64.tl_deserialize(io, true),
          default: flags & 2 == 1,
          dark: flags & 16 == 1,
          settings: flags & 4 == 1 ? Root::TypeWallPaperSettings.tl_deserialize(io, false) : nil,
        )
      end
    end

    class InputReportReasonSpam < TypeReportReason
      CONSTRUCTOR_ID = 0x58DBCAB8

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputReportReasonViolence < TypeReportReason
      CONSTRUCTOR_ID = 0x1E22C78D

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputReportReasonPornography < TypeReportReason
      CONSTRUCTOR_ID = 0x2E59D922

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputReportReasonChildAbuse < TypeReportReason
      CONSTRUCTOR_ID = 0xADF44EE3

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputReportReasonOther < TypeReportReason
      CONSTRUCTOR_ID = 0xC1E4A2B1

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputReportReasonCopyright < TypeReportReason
      CONSTRUCTOR_ID = 0x9B89F93A

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputReportReasonGeoIrrelevant < TypeReportReason
      CONSTRUCTOR_ID = 0xDBD4FEED

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputReportReasonFake < TypeReportReason
      CONSTRUCTOR_ID = 0xF5DDD6E7

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class UserFull < TypeUserFull
      CONSTRUCTOR_ID = 0xD697FF05

      getter user : Root::TypeUser
      getter settings : Root::TypePeerSettings
      getter notify_settings : Root::TypePeerNotifySettings
      getter common_chats_count : Int32
      getter blocked : Bool | Nil
      getter phone_calls_available : Bool | Nil
      getter phone_calls_private : Bool | Nil
      getter can_pin_message : Bool | Nil
      getter has_scheduled : Bool | Nil
      getter video_calls_available : Bool | Nil
      getter about : Bytes | Nil
      getter profile_photo : Root::TypePhoto | Nil
      getter bot_info : Root::TypeBotInfo | Nil
      getter pinned_msg_id : Int32 | Nil
      getter folder_id : Int32 | Nil
      getter ttl_period : Int32 | Nil
      getter theme_emoticon : Bytes | Nil

      def initialize(
        user : Root::TypeUser,
        settings : Root::TypePeerSettings,
        notify_settings : Root::TypePeerNotifySettings,
        common_chats_count : Int32,
        blocked : Bool | Nil = nil,
        phone_calls_available : Bool | Nil = nil,
        phone_calls_private : Bool | Nil = nil,
        can_pin_message : Bool | Nil = nil,
        has_scheduled : Bool | Nil = nil,
        video_calls_available : Bool | Nil = nil,
        about : Bytes | Nil = nil,
        profile_photo : Root::TypePhoto | Nil = nil,
        bot_info : Root::TypeBotInfo | Nil = nil,
        pinned_msg_id : Int32 | Nil = nil,
        folder_id : Int32 | Nil = nil,
        ttl_period : Int32 | Nil = nil,
        theme_emoticon : Bytes | Nil = nil
      )
        @user = user
        @settings = settings
        @notify_settings = notify_settings
        @common_chats_count = common_chats_count
        @blocked = blocked
        @phone_calls_available = phone_calls_available
        @phone_calls_private = phone_calls_private
        @can_pin_message = can_pin_message
        @has_scheduled = has_scheduled
        @video_calls_available = video_calls_available
        @about = about
        @profile_photo = profile_photo
        @bot_info = bot_info
        @pinned_msg_id = pinned_msg_id
        @folder_id = folder_id
        @ttl_period = ttl_period
        @theme_emoticon = theme_emoticon
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!blocked.nil? ? 1 : 0) |
            (!phone_calls_available.nil? ? 16 : 0) |
            (!phone_calls_private.nil? ? 32 : 0) |
            (!can_pin_message.nil? ? 128 : 0) |
            (!has_scheduled.nil? ? 4096 : 0) |
            (!video_calls_available.nil? ? 8192 : 0) |
            (!about.nil? ? 2 : 0) |
            (!profile_photo.nil? ? 4 : 0) |
            (!bot_info.nil? ? 8 : 0) |
            (!pinned_msg_id.nil? ? 64 : 0) |
            (!folder_id.nil? ? 2048 : 0) |
            (!ttl_period.nil? ? 16384 : 0) |
            (!theme_emoticon.nil? ? 32768 : 0)
        ).tl_serialize(io)
        @user.tl_serialize(io, false)
        @about.tl_serialize(io, true) unless @about.nil?
        @settings.tl_serialize(io, false)
        @profile_photo.tl_serialize(io, false) unless @profile_photo.nil?
        @notify_settings.tl_serialize(io, false)
        @bot_info.tl_serialize(io, false) unless @bot_info.nil?
        @pinned_msg_id.tl_serialize(io, true) unless @pinned_msg_id.nil?
        @common_chats_count.tl_serialize(io, true)
        @folder_id.tl_serialize(io, true) unless @folder_id.nil?
        @ttl_period.tl_serialize(io, true) unless @ttl_period.nil?
        @theme_emoticon.tl_serialize(io, true) unless @theme_emoticon.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          user: Root::TypeUser.tl_deserialize(io, false),
          settings: Root::TypePeerSettings.tl_deserialize(io, false),
          notify_settings: Root::TypePeerNotifySettings.tl_deserialize(io, false),
          common_chats_count: Int32.tl_deserialize(io, true),
          blocked: flags & 1 == 1,
          phone_calls_available: flags & 16 == 1,
          phone_calls_private: flags & 32 == 1,
          can_pin_message: flags & 128 == 1,
          has_scheduled: flags & 4096 == 1,
          video_calls_available: flags & 8192 == 1,
          about: flags & 2 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          profile_photo: flags & 4 == 1 ? Root::TypePhoto.tl_deserialize(io, false) : nil,
          bot_info: flags & 8 == 1 ? Root::TypeBotInfo.tl_deserialize(io, false) : nil,
          pinned_msg_id: flags & 64 == 1 ? Int32.tl_deserialize(io, true) : nil,
          folder_id: flags & 2048 == 1 ? Int32.tl_deserialize(io, true) : nil,
          ttl_period: flags & 16384 == 1 ? Int32.tl_deserialize(io, true) : nil,
          theme_emoticon: flags & 32768 == 1 ? Bytes.tl_deserialize(io, true) : nil,
        )
      end
    end

    class Contact < TypeContact
      CONSTRUCTOR_ID = 0x145ADE0B

      getter user_id : Int64
      getter mutual : Bool

      def initialize(
        user_id : Int64,
        mutual : Bool
      )
        @user_id = user_id
        @mutual = mutual
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @user_id.tl_serialize(io, true)
        @mutual.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          user_id: Int64.tl_deserialize(io, true),
          mutual: Bool.tl_deserialize(io, false),
        )
      end
    end

    class ImportedContact < TypeImportedContact
      CONSTRUCTOR_ID = 0xC13E3C50

      getter user_id : Int64
      getter client_id : Int64

      def initialize(
        user_id : Int64,
        client_id : Int64
      )
        @user_id = user_id
        @client_id = client_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @user_id.tl_serialize(io, true)
        @client_id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          user_id: Int64.tl_deserialize(io, true),
          client_id: Int64.tl_deserialize(io, true),
        )
      end
    end

    class ContactStatus < TypeContactStatus
      CONSTRUCTOR_ID = 0x16D9703B

      getter user_id : Int64
      getter status : Root::TypeUserStatus

      def initialize(
        user_id : Int64,
        status : Root::TypeUserStatus
      )
        @user_id = user_id
        @status = status
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @user_id.tl_serialize(io, true)
        @status.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          user_id: Int64.tl_deserialize(io, true),
          status: Root::TypeUserStatus.tl_deserialize(io, false),
        )
      end
    end

    class InputMessagesFilterEmpty < TypeMessagesFilter
      CONSTRUCTOR_ID = 0x57E2F66C

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputMessagesFilterPhotos < TypeMessagesFilter
      CONSTRUCTOR_ID = 0x9609A51C

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputMessagesFilterVideo < TypeMessagesFilter
      CONSTRUCTOR_ID = 0x9FC00E65

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputMessagesFilterPhotoVideo < TypeMessagesFilter
      CONSTRUCTOR_ID = 0x56E9F0E4

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputMessagesFilterDocument < TypeMessagesFilter
      CONSTRUCTOR_ID = 0x9EDDF188

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputMessagesFilterUrl < TypeMessagesFilter
      CONSTRUCTOR_ID = 0x7EF0DD87

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputMessagesFilterGif < TypeMessagesFilter
      CONSTRUCTOR_ID = 0xFFC86587

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputMessagesFilterVoice < TypeMessagesFilter
      CONSTRUCTOR_ID = 0x50F5C392

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputMessagesFilterMusic < TypeMessagesFilter
      CONSTRUCTOR_ID = 0x3751B49E

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputMessagesFilterChatPhotos < TypeMessagesFilter
      CONSTRUCTOR_ID = 0x3A20ECB8

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputMessagesFilterPhoneCalls < TypeMessagesFilter
      CONSTRUCTOR_ID = 0x80C99768

      getter missed : Bool | Nil

      def initialize(
        missed : Bool | Nil = nil
      )
        @missed = missed
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!missed.nil? ? 1 : 0)
        ).tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          missed: flags & 1 == 1,
        )
      end
    end

    class InputMessagesFilterRoundVoice < TypeMessagesFilter
      CONSTRUCTOR_ID = 0x7A7C17A4

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputMessagesFilterRoundVideo < TypeMessagesFilter
      CONSTRUCTOR_ID = 0xB549DA53

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputMessagesFilterMyMentions < TypeMessagesFilter
      CONSTRUCTOR_ID = 0xC1F8E69A

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputMessagesFilterGeo < TypeMessagesFilter
      CONSTRUCTOR_ID = 0xE7026D0D

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputMessagesFilterContacts < TypeMessagesFilter
      CONSTRUCTOR_ID = 0xE062DB83

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputMessagesFilterPinned < TypeMessagesFilter
      CONSTRUCTOR_ID = 0x1BB00451

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class UpdateNewMessage < TypeUpdate
      CONSTRUCTOR_ID = 0x1F2B0AFD

      getter message : Root::TypeMessage
      getter pts : Int32
      getter pts_count : Int32

      def initialize(
        message : Root::TypeMessage,
        pts : Int32,
        pts_count : Int32
      )
        @message = message
        @pts = pts
        @pts_count = pts_count
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @message.tl_serialize(io, false)
        @pts.tl_serialize(io, true)
        @pts_count.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          message: Root::TypeMessage.tl_deserialize(io, false),
          pts: Int32.tl_deserialize(io, true),
          pts_count: Int32.tl_deserialize(io, true),
        )
      end
    end

    class UpdateMessageID < TypeUpdate
      CONSTRUCTOR_ID = 0x4E90BFD6

      getter id : Int32
      getter random_id : Int64

      def initialize(
        id : Int32,
        random_id : Int64
      )
        @id = id
        @random_id = random_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        @random_id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Int32.tl_deserialize(io, true),
          random_id: Int64.tl_deserialize(io, true),
        )
      end
    end

    class UpdateDeleteMessages < TypeUpdate
      CONSTRUCTOR_ID = 0xA20DB0E5

      getter messages : Array(Int32)
      getter pts : Int32
      getter pts_count : Int32

      def initialize(
        messages : Array(Int32),
        pts : Int32,
        pts_count : Int32
      )
        @messages = messages
        @pts = pts
        @pts_count = pts_count
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @messages.tl_serialize(io, false)
        @pts.tl_serialize(io, true)
        @pts_count.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          messages: Array(Int32).tl_deserialize(io, false),
          pts: Int32.tl_deserialize(io, true),
          pts_count: Int32.tl_deserialize(io, true),
        )
      end
    end

    class UpdateUserTyping < TypeUpdate
      CONSTRUCTOR_ID = 0xC01E857F

      getter user_id : Int64
      getter action : Root::TypeSendMessageAction

      def initialize(
        user_id : Int64,
        action : Root::TypeSendMessageAction
      )
        @user_id = user_id
        @action = action
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @user_id.tl_serialize(io, true)
        @action.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          user_id: Int64.tl_deserialize(io, true),
          action: Root::TypeSendMessageAction.tl_deserialize(io, false),
        )
      end
    end

    class UpdateChatUserTyping < TypeUpdate
      CONSTRUCTOR_ID = 0x83487AF0

      getter chat_id : Int64
      getter from_id : Root::TypePeer
      getter action : Root::TypeSendMessageAction

      def initialize(
        chat_id : Int64,
        from_id : Root::TypePeer,
        action : Root::TypeSendMessageAction
      )
        @chat_id = chat_id
        @from_id = from_id
        @action = action
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @chat_id.tl_serialize(io, true)
        @from_id.tl_serialize(io, false)
        @action.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          chat_id: Int64.tl_deserialize(io, true),
          from_id: Root::TypePeer.tl_deserialize(io, false),
          action: Root::TypeSendMessageAction.tl_deserialize(io, false),
        )
      end
    end

    class UpdateChatParticipants < TypeUpdate
      CONSTRUCTOR_ID = 0x07761198

      getter participants : Root::TypeChatParticipants

      def initialize(
        participants : Root::TypeChatParticipants
      )
        @participants = participants
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @participants.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          participants: Root::TypeChatParticipants.tl_deserialize(io, false),
        )
      end
    end

    class UpdateUserStatus < TypeUpdate
      CONSTRUCTOR_ID = 0xE5BDF8DE

      getter user_id : Int64
      getter status : Root::TypeUserStatus

      def initialize(
        user_id : Int64,
        status : Root::TypeUserStatus
      )
        @user_id = user_id
        @status = status
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @user_id.tl_serialize(io, true)
        @status.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          user_id: Int64.tl_deserialize(io, true),
          status: Root::TypeUserStatus.tl_deserialize(io, false),
        )
      end
    end

    class UpdateUserName < TypeUpdate
      CONSTRUCTOR_ID = 0xC3F202E0

      getter user_id : Int64
      getter first_name : Bytes
      getter last_name : Bytes
      getter username : Bytes

      def initialize(
        user_id : Int64,
        first_name : Bytes | String | IO,
        last_name : Bytes | String | IO,
        username : Bytes | String | IO
      )
        @user_id = user_id
        @first_name = first_name
        @last_name = last_name
        @username = username
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @user_id.tl_serialize(io, true)
        @first_name.tl_serialize(io, true)
        @last_name.tl_serialize(io, true)
        @username.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          user_id: Int64.tl_deserialize(io, true),
          first_name: Bytes.tl_deserialize(io, true),
          last_name: Bytes.tl_deserialize(io, true),
          username: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class UpdateUserPhoto < TypeUpdate
      CONSTRUCTOR_ID = 0xF227868C

      getter user_id : Int64
      getter date : Int32
      getter photo : Root::TypeUserProfilePhoto
      getter previous : Bool

      def initialize(
        user_id : Int64,
        date : Int32,
        photo : Root::TypeUserProfilePhoto,
        previous : Bool
      )
        @user_id = user_id
        @date = date
        @photo = photo
        @previous = previous
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @user_id.tl_serialize(io, true)
        @date.tl_serialize(io, true)
        @photo.tl_serialize(io, false)
        @previous.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          user_id: Int64.tl_deserialize(io, true),
          date: Int32.tl_deserialize(io, true),
          photo: Root::TypeUserProfilePhoto.tl_deserialize(io, false),
          previous: Bool.tl_deserialize(io, false),
        )
      end
    end

    class UpdateNewEncryptedMessage < TypeUpdate
      CONSTRUCTOR_ID = 0x12BCBD9A

      getter message : Root::TypeEncryptedMessage
      getter qts : Int32

      def initialize(
        message : Root::TypeEncryptedMessage,
        qts : Int32
      )
        @message = message
        @qts = qts
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @message.tl_serialize(io, false)
        @qts.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          message: Root::TypeEncryptedMessage.tl_deserialize(io, false),
          qts: Int32.tl_deserialize(io, true),
        )
      end
    end

    class UpdateEncryptedChatTyping < TypeUpdate
      CONSTRUCTOR_ID = 0x1710F156

      getter chat_id : Int32

      def initialize(
        chat_id : Int32
      )
        @chat_id = chat_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @chat_id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          chat_id: Int32.tl_deserialize(io, true),
        )
      end
    end

    class UpdateEncryption < TypeUpdate
      CONSTRUCTOR_ID = 0xB4A2E88D

      getter chat : Root::TypeEncryptedChat
      getter date : Int32

      def initialize(
        chat : Root::TypeEncryptedChat,
        date : Int32
      )
        @chat = chat
        @date = date
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @chat.tl_serialize(io, false)
        @date.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          chat: Root::TypeEncryptedChat.tl_deserialize(io, false),
          date: Int32.tl_deserialize(io, true),
        )
      end
    end

    class UpdateEncryptedMessagesRead < TypeUpdate
      CONSTRUCTOR_ID = 0x38FE25B7

      getter chat_id : Int32
      getter max_date : Int32
      getter date : Int32

      def initialize(
        chat_id : Int32,
        max_date : Int32,
        date : Int32
      )
        @chat_id = chat_id
        @max_date = max_date
        @date = date
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @chat_id.tl_serialize(io, true)
        @max_date.tl_serialize(io, true)
        @date.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          chat_id: Int32.tl_deserialize(io, true),
          max_date: Int32.tl_deserialize(io, true),
          date: Int32.tl_deserialize(io, true),
        )
      end
    end

    class UpdateChatParticipantAdd < TypeUpdate
      CONSTRUCTOR_ID = 0x3DDA5451

      getter chat_id : Int64
      getter user_id : Int64
      getter inviter_id : Int64
      getter date : Int32
      getter version : Int32

      def initialize(
        chat_id : Int64,
        user_id : Int64,
        inviter_id : Int64,
        date : Int32,
        version : Int32
      )
        @chat_id = chat_id
        @user_id = user_id
        @inviter_id = inviter_id
        @date = date
        @version = version
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @chat_id.tl_serialize(io, true)
        @user_id.tl_serialize(io, true)
        @inviter_id.tl_serialize(io, true)
        @date.tl_serialize(io, true)
        @version.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          chat_id: Int64.tl_deserialize(io, true),
          user_id: Int64.tl_deserialize(io, true),
          inviter_id: Int64.tl_deserialize(io, true),
          date: Int32.tl_deserialize(io, true),
          version: Int32.tl_deserialize(io, true),
        )
      end
    end

    class UpdateChatParticipantDelete < TypeUpdate
      CONSTRUCTOR_ID = 0xE32F3D77

      getter chat_id : Int64
      getter user_id : Int64
      getter version : Int32

      def initialize(
        chat_id : Int64,
        user_id : Int64,
        version : Int32
      )
        @chat_id = chat_id
        @user_id = user_id
        @version = version
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @chat_id.tl_serialize(io, true)
        @user_id.tl_serialize(io, true)
        @version.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          chat_id: Int64.tl_deserialize(io, true),
          user_id: Int64.tl_deserialize(io, true),
          version: Int32.tl_deserialize(io, true),
        )
      end
    end

    class UpdateDcOptions < TypeUpdate
      CONSTRUCTOR_ID = 0x8E5E9873

      getter dc_options : Array(Root::TypeDcOption)

      def initialize(
        dc_options : Array(Root::TypeDcOption)
      )
        @dc_options = dc_options
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @dc_options.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          dc_options: Array(Root::TypeDcOption).tl_deserialize(io, false),
        )
      end
    end

    class UpdateNotifySettings < TypeUpdate
      CONSTRUCTOR_ID = 0xBEC268EF

      getter peer : Root::TypeNotifyPeer
      getter notify_settings : Root::TypePeerNotifySettings

      def initialize(
        peer : Root::TypeNotifyPeer,
        notify_settings : Root::TypePeerNotifySettings
      )
        @peer = peer
        @notify_settings = notify_settings
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @peer.tl_serialize(io, false)
        @notify_settings.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          peer: Root::TypeNotifyPeer.tl_deserialize(io, false),
          notify_settings: Root::TypePeerNotifySettings.tl_deserialize(io, false),
        )
      end
    end

    class UpdateServiceNotification < TypeUpdate
      CONSTRUCTOR_ID = 0xEBE46819

      getter type : Bytes
      getter message : Bytes
      getter media : Root::TypeMessageMedia
      getter entities : Array(Root::TypeMessageEntity)
      getter popup : Bool | Nil
      getter inbox_date : Int32 | Nil

      def initialize(
        type : Bytes | String | IO,
        message : Bytes | String | IO,
        media : Root::TypeMessageMedia,
        entities : Array(Root::TypeMessageEntity),
        popup : Bool | Nil = nil,
        inbox_date : Int32 | Nil = nil
      )
        @type = type
        @message = message
        @media = media
        @entities = entities
        @popup = popup
        @inbox_date = inbox_date
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!popup.nil? ? 1 : 0) |
            (!inbox_date.nil? ? 2 : 0)
        ).tl_serialize(io)
        @inbox_date.tl_serialize(io, true) unless @inbox_date.nil?
        @type.tl_serialize(io, true)
        @message.tl_serialize(io, true)
        @media.tl_serialize(io, false)
        @entities.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          type: Bytes.tl_deserialize(io, true),
          message: Bytes.tl_deserialize(io, true),
          media: Root::TypeMessageMedia.tl_deserialize(io, false),
          entities: Array(Root::TypeMessageEntity).tl_deserialize(io, false),
          popup: flags & 1 == 1,
          inbox_date: flags & 2 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class UpdatePrivacy < TypeUpdate
      CONSTRUCTOR_ID = 0xEE3B272A

      getter key : Root::TypePrivacyKey
      getter rules : Array(Root::TypePrivacyRule)

      def initialize(
        key : Root::TypePrivacyKey,
        rules : Array(Root::TypePrivacyRule)
      )
        @key = key
        @rules = rules
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @key.tl_serialize(io, false)
        @rules.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          key: Root::TypePrivacyKey.tl_deserialize(io, false),
          rules: Array(Root::TypePrivacyRule).tl_deserialize(io, false),
        )
      end
    end

    class UpdateUserPhone < TypeUpdate
      CONSTRUCTOR_ID = 0x05492A13

      getter user_id : Int64
      getter phone : Bytes

      def initialize(
        user_id : Int64,
        phone : Bytes | String | IO
      )
        @user_id = user_id
        @phone = phone
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @user_id.tl_serialize(io, true)
        @phone.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          user_id: Int64.tl_deserialize(io, true),
          phone: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class UpdateReadHistoryInbox < TypeUpdate
      CONSTRUCTOR_ID = 0x9C974FDF

      getter peer : Root::TypePeer
      getter max_id : Int32
      getter still_unread_count : Int32
      getter pts : Int32
      getter pts_count : Int32
      getter folder_id : Int32 | Nil

      def initialize(
        peer : Root::TypePeer,
        max_id : Int32,
        still_unread_count : Int32,
        pts : Int32,
        pts_count : Int32,
        folder_id : Int32 | Nil = nil
      )
        @peer = peer
        @max_id = max_id
        @still_unread_count = still_unread_count
        @pts = pts
        @pts_count = pts_count
        @folder_id = folder_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!folder_id.nil? ? 1 : 0)
        ).tl_serialize(io)
        @folder_id.tl_serialize(io, true) unless @folder_id.nil?
        @peer.tl_serialize(io, false)
        @max_id.tl_serialize(io, true)
        @still_unread_count.tl_serialize(io, true)
        @pts.tl_serialize(io, true)
        @pts_count.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          peer: Root::TypePeer.tl_deserialize(io, false),
          max_id: Int32.tl_deserialize(io, true),
          still_unread_count: Int32.tl_deserialize(io, true),
          pts: Int32.tl_deserialize(io, true),
          pts_count: Int32.tl_deserialize(io, true),
          folder_id: flags & 1 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class UpdateReadHistoryOutbox < TypeUpdate
      CONSTRUCTOR_ID = 0x2F2F21BF

      getter peer : Root::TypePeer
      getter max_id : Int32
      getter pts : Int32
      getter pts_count : Int32

      def initialize(
        peer : Root::TypePeer,
        max_id : Int32,
        pts : Int32,
        pts_count : Int32
      )
        @peer = peer
        @max_id = max_id
        @pts = pts
        @pts_count = pts_count
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @peer.tl_serialize(io, false)
        @max_id.tl_serialize(io, true)
        @pts.tl_serialize(io, true)
        @pts_count.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          peer: Root::TypePeer.tl_deserialize(io, false),
          max_id: Int32.tl_deserialize(io, true),
          pts: Int32.tl_deserialize(io, true),
          pts_count: Int32.tl_deserialize(io, true),
        )
      end
    end

    class UpdateWebPage < TypeUpdate
      CONSTRUCTOR_ID = 0x7F891213

      getter webpage : Root::TypeWebPage
      getter pts : Int32
      getter pts_count : Int32

      def initialize(
        webpage : Root::TypeWebPage,
        pts : Int32,
        pts_count : Int32
      )
        @webpage = webpage
        @pts = pts
        @pts_count = pts_count
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @webpage.tl_serialize(io, false)
        @pts.tl_serialize(io, true)
        @pts_count.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          webpage: Root::TypeWebPage.tl_deserialize(io, false),
          pts: Int32.tl_deserialize(io, true),
          pts_count: Int32.tl_deserialize(io, true),
        )
      end
    end

    class UpdateReadMessagesContents < TypeUpdate
      CONSTRUCTOR_ID = 0x68C13933

      getter messages : Array(Int32)
      getter pts : Int32
      getter pts_count : Int32

      def initialize(
        messages : Array(Int32),
        pts : Int32,
        pts_count : Int32
      )
        @messages = messages
        @pts = pts
        @pts_count = pts_count
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @messages.tl_serialize(io, false)
        @pts.tl_serialize(io, true)
        @pts_count.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          messages: Array(Int32).tl_deserialize(io, false),
          pts: Int32.tl_deserialize(io, true),
          pts_count: Int32.tl_deserialize(io, true),
        )
      end
    end

    class UpdateChannelTooLong < TypeUpdate
      CONSTRUCTOR_ID = 0x108D941F

      getter channel_id : Int64
      getter pts : Int32 | Nil

      def initialize(
        channel_id : Int64,
        pts : Int32 | Nil = nil
      )
        @channel_id = channel_id
        @pts = pts
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!pts.nil? ? 1 : 0)
        ).tl_serialize(io)
        @channel_id.tl_serialize(io, true)
        @pts.tl_serialize(io, true) unless @pts.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          channel_id: Int64.tl_deserialize(io, true),
          pts: flags & 1 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class UpdateChannel < TypeUpdate
      CONSTRUCTOR_ID = 0x635B4C09

      getter channel_id : Int64

      def initialize(
        channel_id : Int64
      )
        @channel_id = channel_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel_id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          channel_id: Int64.tl_deserialize(io, true),
        )
      end
    end

    class UpdateNewChannelMessage < TypeUpdate
      CONSTRUCTOR_ID = 0x62BA04D9

      getter message : Root::TypeMessage
      getter pts : Int32
      getter pts_count : Int32

      def initialize(
        message : Root::TypeMessage,
        pts : Int32,
        pts_count : Int32
      )
        @message = message
        @pts = pts
        @pts_count = pts_count
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @message.tl_serialize(io, false)
        @pts.tl_serialize(io, true)
        @pts_count.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          message: Root::TypeMessage.tl_deserialize(io, false),
          pts: Int32.tl_deserialize(io, true),
          pts_count: Int32.tl_deserialize(io, true),
        )
      end
    end

    class UpdateReadChannelInbox < TypeUpdate
      CONSTRUCTOR_ID = 0x922E6E10

      getter channel_id : Int64
      getter max_id : Int32
      getter still_unread_count : Int32
      getter pts : Int32
      getter folder_id : Int32 | Nil

      def initialize(
        channel_id : Int64,
        max_id : Int32,
        still_unread_count : Int32,
        pts : Int32,
        folder_id : Int32 | Nil = nil
      )
        @channel_id = channel_id
        @max_id = max_id
        @still_unread_count = still_unread_count
        @pts = pts
        @folder_id = folder_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!folder_id.nil? ? 1 : 0)
        ).tl_serialize(io)
        @folder_id.tl_serialize(io, true) unless @folder_id.nil?
        @channel_id.tl_serialize(io, true)
        @max_id.tl_serialize(io, true)
        @still_unread_count.tl_serialize(io, true)
        @pts.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          channel_id: Int64.tl_deserialize(io, true),
          max_id: Int32.tl_deserialize(io, true),
          still_unread_count: Int32.tl_deserialize(io, true),
          pts: Int32.tl_deserialize(io, true),
          folder_id: flags & 1 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class UpdateDeleteChannelMessages < TypeUpdate
      CONSTRUCTOR_ID = 0xC32D5B12

      getter channel_id : Int64
      getter messages : Array(Int32)
      getter pts : Int32
      getter pts_count : Int32

      def initialize(
        channel_id : Int64,
        messages : Array(Int32),
        pts : Int32,
        pts_count : Int32
      )
        @channel_id = channel_id
        @messages = messages
        @pts = pts
        @pts_count = pts_count
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel_id.tl_serialize(io, true)
        @messages.tl_serialize(io, false)
        @pts.tl_serialize(io, true)
        @pts_count.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          channel_id: Int64.tl_deserialize(io, true),
          messages: Array(Int32).tl_deserialize(io, false),
          pts: Int32.tl_deserialize(io, true),
          pts_count: Int32.tl_deserialize(io, true),
        )
      end
    end

    class UpdateChannelMessageViews < TypeUpdate
      CONSTRUCTOR_ID = 0xF226AC08

      getter channel_id : Int64
      getter id : Int32
      getter views : Int32

      def initialize(
        channel_id : Int64,
        id : Int32,
        views : Int32
      )
        @channel_id = channel_id
        @id = id
        @views = views
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel_id.tl_serialize(io, true)
        @id.tl_serialize(io, true)
        @views.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          channel_id: Int64.tl_deserialize(io, true),
          id: Int32.tl_deserialize(io, true),
          views: Int32.tl_deserialize(io, true),
        )
      end
    end

    class UpdateChatParticipantAdmin < TypeUpdate
      CONSTRUCTOR_ID = 0xD7CA61A2

      getter chat_id : Int64
      getter user_id : Int64
      getter is_admin : Bool
      getter version : Int32

      def initialize(
        chat_id : Int64,
        user_id : Int64,
        is_admin : Bool,
        version : Int32
      )
        @chat_id = chat_id
        @user_id = user_id
        @is_admin = is_admin
        @version = version
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @chat_id.tl_serialize(io, true)
        @user_id.tl_serialize(io, true)
        @is_admin.tl_serialize(io, false)
        @version.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          chat_id: Int64.tl_deserialize(io, true),
          user_id: Int64.tl_deserialize(io, true),
          is_admin: Bool.tl_deserialize(io, false),
          version: Int32.tl_deserialize(io, true),
        )
      end
    end

    class UpdateNewStickerSet < TypeUpdate
      CONSTRUCTOR_ID = 0x688A30AA

      getter stickerset : Messages::TypeStickerSet

      def initialize(
        stickerset : Messages::TypeStickerSet
      )
        @stickerset = stickerset
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @stickerset.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          stickerset: Messages::TypeStickerSet.tl_deserialize(io, false),
        )
      end
    end

    class UpdateStickerSetsOrder < TypeUpdate
      CONSTRUCTOR_ID = 0x0BB2D201

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

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          order: Array(Int64).tl_deserialize(io, false),
          masks: flags & 1 == 1,
        )
      end
    end

    class UpdateStickerSets < TypeUpdate
      CONSTRUCTOR_ID = 0x43AE3DEC

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class UpdateSavedGifs < TypeUpdate
      CONSTRUCTOR_ID = 0x9375341E

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class UpdateBotInlineQuery < TypeUpdate
      CONSTRUCTOR_ID = 0x496F379C

      getter query_id : Int64
      getter user_id : Int64
      getter query : Bytes
      getter offset : Bytes
      getter geo : Root::TypeGeoPoint | Nil
      getter peer_type : Root::TypeInlineQueryPeerType | Nil

      def initialize(
        query_id : Int64,
        user_id : Int64,
        query : Bytes | String | IO,
        offset : Bytes | String | IO,
        geo : Root::TypeGeoPoint | Nil = nil,
        peer_type : Root::TypeInlineQueryPeerType | Nil = nil
      )
        @query_id = query_id
        @user_id = user_id
        @query = query
        @offset = offset
        @geo = geo
        @peer_type = peer_type
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!geo.nil? ? 1 : 0) |
            (!peer_type.nil? ? 2 : 0)
        ).tl_serialize(io)
        @query_id.tl_serialize(io, true)
        @user_id.tl_serialize(io, true)
        @query.tl_serialize(io, true)
        @geo.tl_serialize(io, false) unless @geo.nil?
        @peer_type.tl_serialize(io, false) unless @peer_type.nil?
        @offset.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          query_id: Int64.tl_deserialize(io, true),
          user_id: Int64.tl_deserialize(io, true),
          query: Bytes.tl_deserialize(io, true),
          offset: Bytes.tl_deserialize(io, true),
          geo: flags & 1 == 1 ? Root::TypeGeoPoint.tl_deserialize(io, false) : nil,
          peer_type: flags & 2 == 1 ? Root::TypeInlineQueryPeerType.tl_deserialize(io, false) : nil,
        )
      end
    end

    class UpdateBotInlineSend < TypeUpdate
      CONSTRUCTOR_ID = 0x12F12A07

      getter user_id : Int64
      getter query : Bytes
      getter id : Bytes
      getter geo : Root::TypeGeoPoint | Nil
      getter msg_id : Root::TypeInputBotInlineMessageID | Nil

      def initialize(
        user_id : Int64,
        query : Bytes | String | IO,
        id : Bytes | String | IO,
        geo : Root::TypeGeoPoint | Nil = nil,
        msg_id : Root::TypeInputBotInlineMessageID | Nil = nil
      )
        @user_id = user_id
        @query = query
        @id = id
        @geo = geo
        @msg_id = msg_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!geo.nil? ? 1 : 0) |
            (!msg_id.nil? ? 2 : 0)
        ).tl_serialize(io)
        @user_id.tl_serialize(io, true)
        @query.tl_serialize(io, true)
        @geo.tl_serialize(io, false) unless @geo.nil?
        @id.tl_serialize(io, true)
        @msg_id.tl_serialize(io, false) unless @msg_id.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          user_id: Int64.tl_deserialize(io, true),
          query: Bytes.tl_deserialize(io, true),
          id: Bytes.tl_deserialize(io, true),
          geo: flags & 1 == 1 ? Root::TypeGeoPoint.tl_deserialize(io, false) : nil,
          msg_id: flags & 2 == 1 ? Root::TypeInputBotInlineMessageID.tl_deserialize(io, false) : nil,
        )
      end
    end

    class UpdateEditChannelMessage < TypeUpdate
      CONSTRUCTOR_ID = 0x1B3F4DF7

      getter message : Root::TypeMessage
      getter pts : Int32
      getter pts_count : Int32

      def initialize(
        message : Root::TypeMessage,
        pts : Int32,
        pts_count : Int32
      )
        @message = message
        @pts = pts
        @pts_count = pts_count
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @message.tl_serialize(io, false)
        @pts.tl_serialize(io, true)
        @pts_count.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          message: Root::TypeMessage.tl_deserialize(io, false),
          pts: Int32.tl_deserialize(io, true),
          pts_count: Int32.tl_deserialize(io, true),
        )
      end
    end

    class UpdateBotCallbackQuery < TypeUpdate
      CONSTRUCTOR_ID = 0xB9CFC48D

      getter query_id : Int64
      getter user_id : Int64
      getter peer : Root::TypePeer
      getter msg_id : Int32
      getter chat_instance : Int64
      getter data : Bytes | Nil
      getter game_short_name : Bytes | Nil

      def initialize(
        query_id : Int64,
        user_id : Int64,
        peer : Root::TypePeer,
        msg_id : Int32,
        chat_instance : Int64,
        data : Bytes | Nil = nil,
        game_short_name : Bytes | Nil = nil
      )
        @query_id = query_id
        @user_id = user_id
        @peer = peer
        @msg_id = msg_id
        @chat_instance = chat_instance
        @data = TL::Utils.parse_bytes(data)
        @game_short_name = game_short_name
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!data.nil? ? 1 : 0) |
            (!game_short_name.nil? ? 2 : 0)
        ).tl_serialize(io)
        @query_id.tl_serialize(io, true)
        @user_id.tl_serialize(io, true)
        @peer.tl_serialize(io, false)
        @msg_id.tl_serialize(io, true)
        @chat_instance.tl_serialize(io, true)
        @data.tl_serialize(io, true) unless @data.nil?
        @game_short_name.tl_serialize(io, true) unless @game_short_name.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          query_id: Int64.tl_deserialize(io, true),
          user_id: Int64.tl_deserialize(io, true),
          peer: Root::TypePeer.tl_deserialize(io, false),
          msg_id: Int32.tl_deserialize(io, true),
          chat_instance: Int64.tl_deserialize(io, true),
          data: flags & 1 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          game_short_name: flags & 2 == 1 ? Bytes.tl_deserialize(io, true) : nil,
        )
      end
    end

    class UpdateEditMessage < TypeUpdate
      CONSTRUCTOR_ID = 0xE40370A3

      getter message : Root::TypeMessage
      getter pts : Int32
      getter pts_count : Int32

      def initialize(
        message : Root::TypeMessage,
        pts : Int32,
        pts_count : Int32
      )
        @message = message
        @pts = pts
        @pts_count = pts_count
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @message.tl_serialize(io, false)
        @pts.tl_serialize(io, true)
        @pts_count.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          message: Root::TypeMessage.tl_deserialize(io, false),
          pts: Int32.tl_deserialize(io, true),
          pts_count: Int32.tl_deserialize(io, true),
        )
      end
    end

    class UpdateInlineBotCallbackQuery < TypeUpdate
      CONSTRUCTOR_ID = 0x691E9052

      getter query_id : Int64
      getter user_id : Int64
      getter msg_id : Root::TypeInputBotInlineMessageID
      getter chat_instance : Int64
      getter data : Bytes | Nil
      getter game_short_name : Bytes | Nil

      def initialize(
        query_id : Int64,
        user_id : Int64,
        msg_id : Root::TypeInputBotInlineMessageID,
        chat_instance : Int64,
        data : Bytes | Nil = nil,
        game_short_name : Bytes | Nil = nil
      )
        @query_id = query_id
        @user_id = user_id
        @msg_id = msg_id
        @chat_instance = chat_instance
        @data = TL::Utils.parse_bytes(data)
        @game_short_name = game_short_name
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!data.nil? ? 1 : 0) |
            (!game_short_name.nil? ? 2 : 0)
        ).tl_serialize(io)
        @query_id.tl_serialize(io, true)
        @user_id.tl_serialize(io, true)
        @msg_id.tl_serialize(io, false)
        @chat_instance.tl_serialize(io, true)
        @data.tl_serialize(io, true) unless @data.nil?
        @game_short_name.tl_serialize(io, true) unless @game_short_name.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          query_id: Int64.tl_deserialize(io, true),
          user_id: Int64.tl_deserialize(io, true),
          msg_id: Root::TypeInputBotInlineMessageID.tl_deserialize(io, false),
          chat_instance: Int64.tl_deserialize(io, true),
          data: flags & 1 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          game_short_name: flags & 2 == 1 ? Bytes.tl_deserialize(io, true) : nil,
        )
      end
    end

    class UpdateReadChannelOutbox < TypeUpdate
      CONSTRUCTOR_ID = 0xB75F99A9

      getter channel_id : Int64
      getter max_id : Int32

      def initialize(
        channel_id : Int64,
        max_id : Int32
      )
        @channel_id = channel_id
        @max_id = max_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel_id.tl_serialize(io, true)
        @max_id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          channel_id: Int64.tl_deserialize(io, true),
          max_id: Int32.tl_deserialize(io, true),
        )
      end
    end

    class UpdateDraftMessage < TypeUpdate
      CONSTRUCTOR_ID = 0xEE2BB969

      getter peer : Root::TypePeer
      getter draft : Root::TypeDraftMessage

      def initialize(
        peer : Root::TypePeer,
        draft : Root::TypeDraftMessage
      )
        @peer = peer
        @draft = draft
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @peer.tl_serialize(io, false)
        @draft.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          peer: Root::TypePeer.tl_deserialize(io, false),
          draft: Root::TypeDraftMessage.tl_deserialize(io, false),
        )
      end
    end

    class UpdateReadFeaturedStickers < TypeUpdate
      CONSTRUCTOR_ID = 0x571D2742

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class UpdateRecentStickers < TypeUpdate
      CONSTRUCTOR_ID = 0x9A422C20

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class UpdateConfig < TypeUpdate
      CONSTRUCTOR_ID = 0xA229DD06

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class UpdatePtsChanged < TypeUpdate
      CONSTRUCTOR_ID = 0x3354678F

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class UpdateChannelWebPage < TypeUpdate
      CONSTRUCTOR_ID = 0x2F2BA99F

      getter channel_id : Int64
      getter webpage : Root::TypeWebPage
      getter pts : Int32
      getter pts_count : Int32

      def initialize(
        channel_id : Int64,
        webpage : Root::TypeWebPage,
        pts : Int32,
        pts_count : Int32
      )
        @channel_id = channel_id
        @webpage = webpage
        @pts = pts
        @pts_count = pts_count
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel_id.tl_serialize(io, true)
        @webpage.tl_serialize(io, false)
        @pts.tl_serialize(io, true)
        @pts_count.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          channel_id: Int64.tl_deserialize(io, true),
          webpage: Root::TypeWebPage.tl_deserialize(io, false),
          pts: Int32.tl_deserialize(io, true),
          pts_count: Int32.tl_deserialize(io, true),
        )
      end
    end

    class UpdateDialogPinned < TypeUpdate
      CONSTRUCTOR_ID = 0x6E6FE51C

      getter peer : Root::TypeDialogPeer
      getter pinned : Bool | Nil
      getter folder_id : Int32 | Nil

      def initialize(
        peer : Root::TypeDialogPeer,
        pinned : Bool | Nil = nil,
        folder_id : Int32 | Nil = nil
      )
        @peer = peer
        @pinned = pinned
        @folder_id = folder_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!pinned.nil? ? 1 : 0) |
            (!folder_id.nil? ? 2 : 0)
        ).tl_serialize(io)
        @folder_id.tl_serialize(io, true) unless @folder_id.nil?
        @peer.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          peer: Root::TypeDialogPeer.tl_deserialize(io, false),
          pinned: flags & 1 == 1,
          folder_id: flags & 2 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class UpdatePinnedDialogs < TypeUpdate
      CONSTRUCTOR_ID = 0xFA0F3CA2

      getter folder_id : Int32 | Nil
      getter order : Array(Root::TypeDialogPeer) | Nil

      def initialize(
        folder_id : Int32 | Nil = nil,
        order : Array(Root::TypeDialogPeer) | Nil = nil
      )
        @folder_id = folder_id
        @order = order
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!folder_id.nil? ? 2 : 0) |
            (!order.nil? ? 1 : 0)
        ).tl_serialize(io)
        @folder_id.tl_serialize(io, true) unless @folder_id.nil?
        @order.tl_serialize(io, false) unless @order.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          folder_id: flags & 2 == 1 ? Int32.tl_deserialize(io, true) : nil,
          order: flags & 1 == 1 ? Array(Root::TypeDialogPeer).tl_deserialize(io, false) : nil,
        )
      end
    end

    class UpdateBotWebhookJSON < TypeUpdate
      CONSTRUCTOR_ID = 0x8317C0C3

      getter data : Root::TypeDataJSON

      def initialize(
        data : Root::TypeDataJSON
      )
        @data = data
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @data.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          data: Root::TypeDataJSON.tl_deserialize(io, false),
        )
      end
    end

    class UpdateBotWebhookJSONQuery < TypeUpdate
      CONSTRUCTOR_ID = 0x9B9240A6

      getter query_id : Int64
      getter data : Root::TypeDataJSON
      getter timeout : Int32

      def initialize(
        query_id : Int64,
        data : Root::TypeDataJSON,
        timeout : Int32
      )
        @query_id = query_id
        @data = data
        @timeout = timeout
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @query_id.tl_serialize(io, true)
        @data.tl_serialize(io, false)
        @timeout.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          query_id: Int64.tl_deserialize(io, true),
          data: Root::TypeDataJSON.tl_deserialize(io, false),
          timeout: Int32.tl_deserialize(io, true),
        )
      end
    end

    class UpdateBotShippingQuery < TypeUpdate
      CONSTRUCTOR_ID = 0xB5AEFD7D

      getter query_id : Int64
      getter user_id : Int64
      getter payload : Bytes
      getter shipping_address : Root::TypePostAddress

      def initialize(
        query_id : Int64,
        user_id : Int64,
        payload : Bytes | String | IO,
        shipping_address : Root::TypePostAddress
      )
        @query_id = query_id
        @user_id = user_id
        @payload = TL::Utils.parse_bytes!(payload)
        @shipping_address = shipping_address
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @query_id.tl_serialize(io, true)
        @user_id.tl_serialize(io, true)
        @payload.tl_serialize(io, true)
        @shipping_address.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          query_id: Int64.tl_deserialize(io, true),
          user_id: Int64.tl_deserialize(io, true),
          payload: Bytes.tl_deserialize(io, true),
          shipping_address: Root::TypePostAddress.tl_deserialize(io, false),
        )
      end
    end

    class UpdateBotPrecheckoutQuery < TypeUpdate
      CONSTRUCTOR_ID = 0x8CAA9A96

      getter query_id : Int64
      getter user_id : Int64
      getter payload : Bytes
      getter currency : Bytes
      getter total_amount : Int64
      getter info : Root::TypePaymentRequestedInfo | Nil
      getter shipping_option_id : Bytes | Nil

      def initialize(
        query_id : Int64,
        user_id : Int64,
        payload : Bytes | String | IO,
        currency : Bytes | String | IO,
        total_amount : Int64,
        info : Root::TypePaymentRequestedInfo | Nil = nil,
        shipping_option_id : Bytes | Nil = nil
      )
        @query_id = query_id
        @user_id = user_id
        @payload = TL::Utils.parse_bytes!(payload)
        @currency = currency
        @total_amount = total_amount
        @info = info
        @shipping_option_id = shipping_option_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!info.nil? ? 1 : 0) |
            (!shipping_option_id.nil? ? 2 : 0)
        ).tl_serialize(io)
        @query_id.tl_serialize(io, true)
        @user_id.tl_serialize(io, true)
        @payload.tl_serialize(io, true)
        @info.tl_serialize(io, false) unless @info.nil?
        @shipping_option_id.tl_serialize(io, true) unless @shipping_option_id.nil?
        @currency.tl_serialize(io, true)
        @total_amount.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          query_id: Int64.tl_deserialize(io, true),
          user_id: Int64.tl_deserialize(io, true),
          payload: Bytes.tl_deserialize(io, true),
          currency: Bytes.tl_deserialize(io, true),
          total_amount: Int64.tl_deserialize(io, true),
          info: flags & 1 == 1 ? Root::TypePaymentRequestedInfo.tl_deserialize(io, false) : nil,
          shipping_option_id: flags & 2 == 1 ? Bytes.tl_deserialize(io, true) : nil,
        )
      end
    end

    class UpdatePhoneCall < TypeUpdate
      CONSTRUCTOR_ID = 0xAB0F6B1E

      getter phone_call : Root::TypePhoneCall

      def initialize(
        phone_call : Root::TypePhoneCall
      )
        @phone_call = phone_call
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @phone_call.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          phone_call: Root::TypePhoneCall.tl_deserialize(io, false),
        )
      end
    end

    class UpdateLangPackTooLong < TypeUpdate
      CONSTRUCTOR_ID = 0x46560264

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

      def self.tl_deserialize(io : IO, bare = false)
        new(
          lang_code: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class UpdateLangPack < TypeUpdate
      CONSTRUCTOR_ID = 0x56022F4D

      getter difference : Root::TypeLangPackDifference

      def initialize(
        difference : Root::TypeLangPackDifference
      )
        @difference = difference
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @difference.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          difference: Root::TypeLangPackDifference.tl_deserialize(io, false),
        )
      end
    end

    class UpdateFavedStickers < TypeUpdate
      CONSTRUCTOR_ID = 0xE511996D

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class UpdateChannelReadMessagesContents < TypeUpdate
      CONSTRUCTOR_ID = 0x44BDD535

      getter channel_id : Int64
      getter messages : Array(Int32)

      def initialize(
        channel_id : Int64,
        messages : Array(Int32)
      )
        @channel_id = channel_id
        @messages = messages
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel_id.tl_serialize(io, true)
        @messages.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          channel_id: Int64.tl_deserialize(io, true),
          messages: Array(Int32).tl_deserialize(io, false),
        )
      end
    end

    class UpdateContactsReset < TypeUpdate
      CONSTRUCTOR_ID = 0x7084A7BE

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class UpdateChannelAvailableMessages < TypeUpdate
      CONSTRUCTOR_ID = 0xB23FC698

      getter channel_id : Int64
      getter available_min_id : Int32

      def initialize(
        channel_id : Int64,
        available_min_id : Int32
      )
        @channel_id = channel_id
        @available_min_id = available_min_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel_id.tl_serialize(io, true)
        @available_min_id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          channel_id: Int64.tl_deserialize(io, true),
          available_min_id: Int32.tl_deserialize(io, true),
        )
      end
    end

    class UpdateDialogUnreadMark < TypeUpdate
      CONSTRUCTOR_ID = 0xE16459C3

      getter peer : Root::TypeDialogPeer
      getter unread : Bool | Nil

      def initialize(
        peer : Root::TypeDialogPeer,
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

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          peer: Root::TypeDialogPeer.tl_deserialize(io, false),
          unread: flags & 1 == 1,
        )
      end
    end

    class UpdateMessagePoll < TypeUpdate
      CONSTRUCTOR_ID = 0xACA1657B

      getter poll_id : Int64
      getter results : Root::TypePollResults
      getter poll : Root::TypePoll | Nil

      def initialize(
        poll_id : Int64,
        results : Root::TypePollResults,
        poll : Root::TypePoll | Nil = nil
      )
        @poll_id = poll_id
        @results = results
        @poll = poll
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!poll.nil? ? 1 : 0)
        ).tl_serialize(io)
        @poll_id.tl_serialize(io, true)
        @poll.tl_serialize(io, false) unless @poll.nil?
        @results.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          poll_id: Int64.tl_deserialize(io, true),
          results: Root::TypePollResults.tl_deserialize(io, false),
          poll: flags & 1 == 1 ? Root::TypePoll.tl_deserialize(io, false) : nil,
        )
      end
    end

    class UpdateChatDefaultBannedRights < TypeUpdate
      CONSTRUCTOR_ID = 0x54C01850

      getter peer : Root::TypePeer
      getter default_banned_rights : Root::TypeChatBannedRights
      getter version : Int32

      def initialize(
        peer : Root::TypePeer,
        default_banned_rights : Root::TypeChatBannedRights,
        version : Int32
      )
        @peer = peer
        @default_banned_rights = default_banned_rights
        @version = version
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @peer.tl_serialize(io, false)
        @default_banned_rights.tl_serialize(io, false)
        @version.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          peer: Root::TypePeer.tl_deserialize(io, false),
          default_banned_rights: Root::TypeChatBannedRights.tl_deserialize(io, false),
          version: Int32.tl_deserialize(io, true),
        )
      end
    end

    class UpdateFolderPeers < TypeUpdate
      CONSTRUCTOR_ID = 0x19360DC0

      getter folder_peers : Array(Root::TypeFolderPeer)
      getter pts : Int32
      getter pts_count : Int32

      def initialize(
        folder_peers : Array(Root::TypeFolderPeer),
        pts : Int32,
        pts_count : Int32
      )
        @folder_peers = folder_peers
        @pts = pts
        @pts_count = pts_count
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @folder_peers.tl_serialize(io, false)
        @pts.tl_serialize(io, true)
        @pts_count.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          folder_peers: Array(Root::TypeFolderPeer).tl_deserialize(io, false),
          pts: Int32.tl_deserialize(io, true),
          pts_count: Int32.tl_deserialize(io, true),
        )
      end
    end

    class UpdatePeerSettings < TypeUpdate
      CONSTRUCTOR_ID = 0x6A7E7366

      getter peer : Root::TypePeer
      getter settings : Root::TypePeerSettings

      def initialize(
        peer : Root::TypePeer,
        settings : Root::TypePeerSettings
      )
        @peer = peer
        @settings = settings
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @peer.tl_serialize(io, false)
        @settings.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          peer: Root::TypePeer.tl_deserialize(io, false),
          settings: Root::TypePeerSettings.tl_deserialize(io, false),
        )
      end
    end

    class UpdatePeerLocated < TypeUpdate
      CONSTRUCTOR_ID = 0xB4AFCFB0

      getter peers : Array(Root::TypePeerLocated)

      def initialize(
        peers : Array(Root::TypePeerLocated)
      )
        @peers = peers
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @peers.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          peers: Array(Root::TypePeerLocated).tl_deserialize(io, false),
        )
      end
    end

    class UpdateNewScheduledMessage < TypeUpdate
      CONSTRUCTOR_ID = 0x39A51DFB

      getter message : Root::TypeMessage

      def initialize(
        message : Root::TypeMessage
      )
        @message = message
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @message.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          message: Root::TypeMessage.tl_deserialize(io, false),
        )
      end
    end

    class UpdateDeleteScheduledMessages < TypeUpdate
      CONSTRUCTOR_ID = 0x90866CEE

      getter peer : Root::TypePeer
      getter messages : Array(Int32)

      def initialize(
        peer : Root::TypePeer,
        messages : Array(Int32)
      )
        @peer = peer
        @messages = messages
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @peer.tl_serialize(io, false)
        @messages.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          peer: Root::TypePeer.tl_deserialize(io, false),
          messages: Array(Int32).tl_deserialize(io, false),
        )
      end
    end

    class UpdateTheme < TypeUpdate
      CONSTRUCTOR_ID = 0x8216FBA3

      getter theme : Root::TypeTheme

      def initialize(
        theme : Root::TypeTheme
      )
        @theme = theme
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @theme.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          theme: Root::TypeTheme.tl_deserialize(io, false),
        )
      end
    end

    class UpdateGeoLiveViewed < TypeUpdate
      CONSTRUCTOR_ID = 0x871FB939

      getter peer : Root::TypePeer
      getter msg_id : Int32

      def initialize(
        peer : Root::TypePeer,
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

      def self.tl_deserialize(io : IO, bare = false)
        new(
          peer: Root::TypePeer.tl_deserialize(io, false),
          msg_id: Int32.tl_deserialize(io, true),
        )
      end
    end

    class UpdateLoginToken < TypeUpdate
      CONSTRUCTOR_ID = 0x564FE691

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class UpdateMessagePollVote < TypeUpdate
      CONSTRUCTOR_ID = 0x106395C9

      getter poll_id : Int64
      getter user_id : Int64
      getter options : Array(Bytes)
      getter qts : Int32

      def initialize(
        poll_id : Int64,
        user_id : Int64,
        options : Array(Bytes),
        qts : Int32
      )
        @poll_id = poll_id
        @user_id = user_id
        @options = options
        @qts = qts
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @poll_id.tl_serialize(io, true)
        @user_id.tl_serialize(io, true)
        @options.tl_serialize(io, false)
        @qts.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          poll_id: Int64.tl_deserialize(io, true),
          user_id: Int64.tl_deserialize(io, true),
          options: Array(Bytes).tl_deserialize(io, false),
          qts: Int32.tl_deserialize(io, true),
        )
      end
    end

    class UpdateDialogFilter < TypeUpdate
      CONSTRUCTOR_ID = 0x26FFDE7D

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

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          id: Int32.tl_deserialize(io, true),
          filter: flags & 1 == 1 ? Root::TypeDialogFilter.tl_deserialize(io, false) : nil,
        )
      end
    end

    class UpdateDialogFilterOrder < TypeUpdate
      CONSTRUCTOR_ID = 0xA5D72105

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

      def self.tl_deserialize(io : IO, bare = false)
        new(
          order: Array(Int32).tl_deserialize(io, false),
        )
      end
    end

    class UpdateDialogFilters < TypeUpdate
      CONSTRUCTOR_ID = 0x3504914F

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class UpdatePhoneCallSignalingData < TypeUpdate
      CONSTRUCTOR_ID = 0x2661BF09

      getter phone_call_id : Int64
      getter data : Bytes

      def initialize(
        phone_call_id : Int64,
        data : Bytes | String | IO
      )
        @phone_call_id = phone_call_id
        @data = TL::Utils.parse_bytes!(data)
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @phone_call_id.tl_serialize(io, true)
        @data.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          phone_call_id: Int64.tl_deserialize(io, true),
          data: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class UpdateChannelMessageForwards < TypeUpdate
      CONSTRUCTOR_ID = 0xD29A27F4

      getter channel_id : Int64
      getter id : Int32
      getter forwards : Int32

      def initialize(
        channel_id : Int64,
        id : Int32,
        forwards : Int32
      )
        @channel_id = channel_id
        @id = id
        @forwards = forwards
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel_id.tl_serialize(io, true)
        @id.tl_serialize(io, true)
        @forwards.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          channel_id: Int64.tl_deserialize(io, true),
          id: Int32.tl_deserialize(io, true),
          forwards: Int32.tl_deserialize(io, true),
        )
      end
    end

    class UpdateReadChannelDiscussionInbox < TypeUpdate
      CONSTRUCTOR_ID = 0xD6B19546

      getter channel_id : Int64
      getter top_msg_id : Int32
      getter read_max_id : Int32
      getter broadcast_id : Int64 | Nil
      getter broadcast_post : Int32 | Nil

      def initialize(
        channel_id : Int64,
        top_msg_id : Int32,
        read_max_id : Int32,
        broadcast_id : Int64 | Nil = nil,
        broadcast_post : Int32 | Nil = nil
      )
        @channel_id = channel_id
        @top_msg_id = top_msg_id
        @read_max_id = read_max_id
        @broadcast_id = broadcast_id
        @broadcast_post = broadcast_post
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!broadcast_id.nil? ? 1 : 0) |
            (!broadcast_post.nil? ? 1 : 0)
        ).tl_serialize(io)
        @channel_id.tl_serialize(io, true)
        @top_msg_id.tl_serialize(io, true)
        @read_max_id.tl_serialize(io, true)
        @broadcast_id.tl_serialize(io, true) unless @broadcast_id.nil?
        @broadcast_post.tl_serialize(io, true) unless @broadcast_post.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          channel_id: Int64.tl_deserialize(io, true),
          top_msg_id: Int32.tl_deserialize(io, true),
          read_max_id: Int32.tl_deserialize(io, true),
          broadcast_id: flags & 1 == 1 ? Int64.tl_deserialize(io, true) : nil,
          broadcast_post: flags & 1 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class UpdateReadChannelDiscussionOutbox < TypeUpdate
      CONSTRUCTOR_ID = 0x695C9E7C

      getter channel_id : Int64
      getter top_msg_id : Int32
      getter read_max_id : Int32

      def initialize(
        channel_id : Int64,
        top_msg_id : Int32,
        read_max_id : Int32
      )
        @channel_id = channel_id
        @top_msg_id = top_msg_id
        @read_max_id = read_max_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel_id.tl_serialize(io, true)
        @top_msg_id.tl_serialize(io, true)
        @read_max_id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          channel_id: Int64.tl_deserialize(io, true),
          top_msg_id: Int32.tl_deserialize(io, true),
          read_max_id: Int32.tl_deserialize(io, true),
        )
      end
    end

    class UpdatePeerBlocked < TypeUpdate
      CONSTRUCTOR_ID = 0x246A4B22

      getter peer_id : Root::TypePeer
      getter blocked : Bool

      def initialize(
        peer_id : Root::TypePeer,
        blocked : Bool
      )
        @peer_id = peer_id
        @blocked = blocked
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @peer_id.tl_serialize(io, false)
        @blocked.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          peer_id: Root::TypePeer.tl_deserialize(io, false),
          blocked: Bool.tl_deserialize(io, false),
        )
      end
    end

    class UpdateChannelUserTyping < TypeUpdate
      CONSTRUCTOR_ID = 0x8C88C923

      getter channel_id : Int64
      getter from_id : Root::TypePeer
      getter action : Root::TypeSendMessageAction
      getter top_msg_id : Int32 | Nil

      def initialize(
        channel_id : Int64,
        from_id : Root::TypePeer,
        action : Root::TypeSendMessageAction,
        top_msg_id : Int32 | Nil = nil
      )
        @channel_id = channel_id
        @from_id = from_id
        @action = action
        @top_msg_id = top_msg_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!top_msg_id.nil? ? 1 : 0)
        ).tl_serialize(io)
        @channel_id.tl_serialize(io, true)
        @top_msg_id.tl_serialize(io, true) unless @top_msg_id.nil?
        @from_id.tl_serialize(io, false)
        @action.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          channel_id: Int64.tl_deserialize(io, true),
          from_id: Root::TypePeer.tl_deserialize(io, false),
          action: Root::TypeSendMessageAction.tl_deserialize(io, false),
          top_msg_id: flags & 1 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class UpdatePinnedMessages < TypeUpdate
      CONSTRUCTOR_ID = 0xED85EAB5

      getter peer : Root::TypePeer
      getter messages : Array(Int32)
      getter pts : Int32
      getter pts_count : Int32
      getter pinned : Bool | Nil

      def initialize(
        peer : Root::TypePeer,
        messages : Array(Int32),
        pts : Int32,
        pts_count : Int32,
        pinned : Bool | Nil = nil
      )
        @peer = peer
        @messages = messages
        @pts = pts
        @pts_count = pts_count
        @pinned = pinned
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!pinned.nil? ? 1 : 0)
        ).tl_serialize(io)
        @peer.tl_serialize(io, false)
        @messages.tl_serialize(io, false)
        @pts.tl_serialize(io, true)
        @pts_count.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          peer: Root::TypePeer.tl_deserialize(io, false),
          messages: Array(Int32).tl_deserialize(io, false),
          pts: Int32.tl_deserialize(io, true),
          pts_count: Int32.tl_deserialize(io, true),
          pinned: flags & 1 == 1,
        )
      end
    end

    class UpdatePinnedChannelMessages < TypeUpdate
      CONSTRUCTOR_ID = 0x5BB98608

      getter channel_id : Int64
      getter messages : Array(Int32)
      getter pts : Int32
      getter pts_count : Int32
      getter pinned : Bool | Nil

      def initialize(
        channel_id : Int64,
        messages : Array(Int32),
        pts : Int32,
        pts_count : Int32,
        pinned : Bool | Nil = nil
      )
        @channel_id = channel_id
        @messages = messages
        @pts = pts
        @pts_count = pts_count
        @pinned = pinned
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!pinned.nil? ? 1 : 0)
        ).tl_serialize(io)
        @channel_id.tl_serialize(io, true)
        @messages.tl_serialize(io, false)
        @pts.tl_serialize(io, true)
        @pts_count.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          channel_id: Int64.tl_deserialize(io, true),
          messages: Array(Int32).tl_deserialize(io, false),
          pts: Int32.tl_deserialize(io, true),
          pts_count: Int32.tl_deserialize(io, true),
          pinned: flags & 1 == 1,
        )
      end
    end

    class UpdateChat < TypeUpdate
      CONSTRUCTOR_ID = 0xF89A6A4E

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

      def self.tl_deserialize(io : IO, bare = false)
        new(
          chat_id: Int64.tl_deserialize(io, true),
        )
      end
    end

    class UpdateGroupCallParticipants < TypeUpdate
      CONSTRUCTOR_ID = 0xF2EBDB4E

      getter call : Root::TypeInputGroupCall
      getter participants : Array(Root::TypeGroupCallParticipant)
      getter version : Int32

      def initialize(
        call : Root::TypeInputGroupCall,
        participants : Array(Root::TypeGroupCallParticipant),
        version : Int32
      )
        @call = call
        @participants = participants
        @version = version
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @call.tl_serialize(io, false)
        @participants.tl_serialize(io, false)
        @version.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          call: Root::TypeInputGroupCall.tl_deserialize(io, false),
          participants: Array(Root::TypeGroupCallParticipant).tl_deserialize(io, false),
          version: Int32.tl_deserialize(io, true),
        )
      end
    end

    class UpdateGroupCall < TypeUpdate
      CONSTRUCTOR_ID = 0x14B24500

      getter chat_id : Int64
      getter call : Root::TypeGroupCall

      def initialize(
        chat_id : Int64,
        call : Root::TypeGroupCall
      )
        @chat_id = chat_id
        @call = call
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @chat_id.tl_serialize(io, true)
        @call.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          chat_id: Int64.tl_deserialize(io, true),
          call: Root::TypeGroupCall.tl_deserialize(io, false),
        )
      end
    end

    class UpdatePeerHistoryTTL < TypeUpdate
      CONSTRUCTOR_ID = 0xBB9BB9A5

      getter peer : Root::TypePeer
      getter ttl_period : Int32 | Nil

      def initialize(
        peer : Root::TypePeer,
        ttl_period : Int32 | Nil = nil
      )
        @peer = peer
        @ttl_period = ttl_period
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!ttl_period.nil? ? 1 : 0)
        ).tl_serialize(io)
        @peer.tl_serialize(io, false)
        @ttl_period.tl_serialize(io, true) unless @ttl_period.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          peer: Root::TypePeer.tl_deserialize(io, false),
          ttl_period: flags & 1 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class UpdateChatParticipant < TypeUpdate
      CONSTRUCTOR_ID = 0xD087663A

      getter chat_id : Int64
      getter date : Int32
      getter actor_id : Int64
      getter user_id : Int64
      getter qts : Int32
      getter prev_participant : Root::TypeChatParticipant | Nil
      getter new_participant : Root::TypeChatParticipant | Nil
      getter invite : Root::TypeExportedChatInvite | Nil

      def initialize(
        chat_id : Int64,
        date : Int32,
        actor_id : Int64,
        user_id : Int64,
        qts : Int32,
        prev_participant : Root::TypeChatParticipant | Nil = nil,
        new_participant : Root::TypeChatParticipant | Nil = nil,
        invite : Root::TypeExportedChatInvite | Nil = nil
      )
        @chat_id = chat_id
        @date = date
        @actor_id = actor_id
        @user_id = user_id
        @qts = qts
        @prev_participant = prev_participant
        @new_participant = new_participant
        @invite = invite
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!prev_participant.nil? ? 1 : 0) |
            (!new_participant.nil? ? 2 : 0) |
            (!invite.nil? ? 4 : 0)
        ).tl_serialize(io)
        @chat_id.tl_serialize(io, true)
        @date.tl_serialize(io, true)
        @actor_id.tl_serialize(io, true)
        @user_id.tl_serialize(io, true)
        @prev_participant.tl_serialize(io, false) unless @prev_participant.nil?
        @new_participant.tl_serialize(io, false) unless @new_participant.nil?
        @invite.tl_serialize(io, false) unless @invite.nil?
        @qts.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          chat_id: Int64.tl_deserialize(io, true),
          date: Int32.tl_deserialize(io, true),
          actor_id: Int64.tl_deserialize(io, true),
          user_id: Int64.tl_deserialize(io, true),
          qts: Int32.tl_deserialize(io, true),
          prev_participant: flags & 1 == 1 ? Root::TypeChatParticipant.tl_deserialize(io, false) : nil,
          new_participant: flags & 2 == 1 ? Root::TypeChatParticipant.tl_deserialize(io, false) : nil,
          invite: flags & 4 == 1 ? Root::TypeExportedChatInvite.tl_deserialize(io, false) : nil,
        )
      end
    end

    class UpdateChannelParticipant < TypeUpdate
      CONSTRUCTOR_ID = 0x985D3ABB

      getter channel_id : Int64
      getter date : Int32
      getter actor_id : Int64
      getter user_id : Int64
      getter qts : Int32
      getter prev_participant : Root::TypeChannelParticipant | Nil
      getter new_participant : Root::TypeChannelParticipant | Nil
      getter invite : Root::TypeExportedChatInvite | Nil

      def initialize(
        channel_id : Int64,
        date : Int32,
        actor_id : Int64,
        user_id : Int64,
        qts : Int32,
        prev_participant : Root::TypeChannelParticipant | Nil = nil,
        new_participant : Root::TypeChannelParticipant | Nil = nil,
        invite : Root::TypeExportedChatInvite | Nil = nil
      )
        @channel_id = channel_id
        @date = date
        @actor_id = actor_id
        @user_id = user_id
        @qts = qts
        @prev_participant = prev_participant
        @new_participant = new_participant
        @invite = invite
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!prev_participant.nil? ? 1 : 0) |
            (!new_participant.nil? ? 2 : 0) |
            (!invite.nil? ? 4 : 0)
        ).tl_serialize(io)
        @channel_id.tl_serialize(io, true)
        @date.tl_serialize(io, true)
        @actor_id.tl_serialize(io, true)
        @user_id.tl_serialize(io, true)
        @prev_participant.tl_serialize(io, false) unless @prev_participant.nil?
        @new_participant.tl_serialize(io, false) unless @new_participant.nil?
        @invite.tl_serialize(io, false) unless @invite.nil?
        @qts.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          channel_id: Int64.tl_deserialize(io, true),
          date: Int32.tl_deserialize(io, true),
          actor_id: Int64.tl_deserialize(io, true),
          user_id: Int64.tl_deserialize(io, true),
          qts: Int32.tl_deserialize(io, true),
          prev_participant: flags & 1 == 1 ? Root::TypeChannelParticipant.tl_deserialize(io, false) : nil,
          new_participant: flags & 2 == 1 ? Root::TypeChannelParticipant.tl_deserialize(io, false) : nil,
          invite: flags & 4 == 1 ? Root::TypeExportedChatInvite.tl_deserialize(io, false) : nil,
        )
      end
    end

    class UpdateBotStopped < TypeUpdate
      CONSTRUCTOR_ID = 0xC4870A49

      getter user_id : Int64
      getter date : Int32
      getter stopped : Bool
      getter qts : Int32

      def initialize(
        user_id : Int64,
        date : Int32,
        stopped : Bool,
        qts : Int32
      )
        @user_id = user_id
        @date = date
        @stopped = stopped
        @qts = qts
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @user_id.tl_serialize(io, true)
        @date.tl_serialize(io, true)
        @stopped.tl_serialize(io, false)
        @qts.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          user_id: Int64.tl_deserialize(io, true),
          date: Int32.tl_deserialize(io, true),
          stopped: Bool.tl_deserialize(io, false),
          qts: Int32.tl_deserialize(io, true),
        )
      end
    end

    class UpdateGroupCallConnection < TypeUpdate
      CONSTRUCTOR_ID = 0x0B783982

      getter params : Root::TypeDataJSON
      getter presentation : Bool | Nil

      def initialize(
        params : Root::TypeDataJSON,
        presentation : Bool | Nil = nil
      )
        @params = params
        @presentation = presentation
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!presentation.nil? ? 1 : 0)
        ).tl_serialize(io)
        @params.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          params: Root::TypeDataJSON.tl_deserialize(io, false),
          presentation: flags & 1 == 1,
        )
      end
    end

    class UpdateBotCommands < TypeUpdate
      CONSTRUCTOR_ID = 0x4D712F2E

      getter peer : Root::TypePeer
      getter bot_id : Int64
      getter commands : Array(Root::TypeBotCommand)

      def initialize(
        peer : Root::TypePeer,
        bot_id : Int64,
        commands : Array(Root::TypeBotCommand)
      )
        @peer = peer
        @bot_id = bot_id
        @commands = commands
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @peer.tl_serialize(io, false)
        @bot_id.tl_serialize(io, true)
        @commands.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          peer: Root::TypePeer.tl_deserialize(io, false),
          bot_id: Int64.tl_deserialize(io, true),
          commands: Array(Root::TypeBotCommand).tl_deserialize(io, false),
        )
      end
    end

    class UpdatesTooLong < TypeUpdates
      CONSTRUCTOR_ID = 0xE317AF7E

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class UpdateShortMessage < TypeUpdates
      CONSTRUCTOR_ID = 0x313BC7F8

      getter id : Int32
      getter user_id : Int64
      getter message : Bytes
      getter pts : Int32
      getter pts_count : Int32
      getter date : Int32
      getter outgoing : Bool | Nil
      getter mentioned : Bool | Nil
      getter media_unread : Bool | Nil
      getter silent : Bool | Nil
      getter fwd_from : Root::TypeMessageFwdHeader | Nil
      getter via_bot_id : Int64 | Nil
      getter reply_to : Root::TypeMessageReplyHeader | Nil
      getter entities : Array(Root::TypeMessageEntity) | Nil
      getter ttl_period : Int32 | Nil

      def initialize(
        id : Int32,
        user_id : Int64,
        message : Bytes | String | IO,
        pts : Int32,
        pts_count : Int32,
        date : Int32,
        outgoing : Bool | Nil = nil,
        mentioned : Bool | Nil = nil,
        media_unread : Bool | Nil = nil,
        silent : Bool | Nil = nil,
        fwd_from : Root::TypeMessageFwdHeader | Nil = nil,
        via_bot_id : Int64 | Nil = nil,
        reply_to : Root::TypeMessageReplyHeader | Nil = nil,
        entities : Array(Root::TypeMessageEntity) | Nil = nil,
        ttl_period : Int32 | Nil = nil
      )
        @id = id
        @user_id = user_id
        @message = message
        @pts = pts
        @pts_count = pts_count
        @date = date
        @outgoing = outgoing
        @mentioned = mentioned
        @media_unread = media_unread
        @silent = silent
        @fwd_from = fwd_from
        @via_bot_id = via_bot_id
        @reply_to = reply_to
        @entities = entities
        @ttl_period = ttl_period
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!outgoing.nil? ? 2 : 0) |
            (!mentioned.nil? ? 16 : 0) |
            (!media_unread.nil? ? 32 : 0) |
            (!silent.nil? ? 8192 : 0) |
            (!fwd_from.nil? ? 4 : 0) |
            (!via_bot_id.nil? ? 2048 : 0) |
            (!reply_to.nil? ? 8 : 0) |
            (!entities.nil? ? 128 : 0) |
            (!ttl_period.nil? ? 33554432 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io, true)
        @user_id.tl_serialize(io, true)
        @message.tl_serialize(io, true)
        @pts.tl_serialize(io, true)
        @pts_count.tl_serialize(io, true)
        @date.tl_serialize(io, true)
        @fwd_from.tl_serialize(io, false) unless @fwd_from.nil?
        @via_bot_id.tl_serialize(io, true) unless @via_bot_id.nil?
        @reply_to.tl_serialize(io, false) unless @reply_to.nil?
        @entities.tl_serialize(io, false) unless @entities.nil?
        @ttl_period.tl_serialize(io, true) unless @ttl_period.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          id: Int32.tl_deserialize(io, true),
          user_id: Int64.tl_deserialize(io, true),
          message: Bytes.tl_deserialize(io, true),
          pts: Int32.tl_deserialize(io, true),
          pts_count: Int32.tl_deserialize(io, true),
          date: Int32.tl_deserialize(io, true),
          outgoing: flags & 2 == 1,
          mentioned: flags & 16 == 1,
          media_unread: flags & 32 == 1,
          silent: flags & 8192 == 1,
          fwd_from: flags & 4 == 1 ? Root::TypeMessageFwdHeader.tl_deserialize(io, false) : nil,
          via_bot_id: flags & 2048 == 1 ? Int64.tl_deserialize(io, true) : nil,
          reply_to: flags & 8 == 1 ? Root::TypeMessageReplyHeader.tl_deserialize(io, false) : nil,
          entities: flags & 128 == 1 ? Array(Root::TypeMessageEntity).tl_deserialize(io, false) : nil,
          ttl_period: flags & 33554432 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class UpdateShortChatMessage < TypeUpdates
      CONSTRUCTOR_ID = 0x4D6DEEA5

      getter id : Int32
      getter from_id : Int64
      getter chat_id : Int64
      getter message : Bytes
      getter pts : Int32
      getter pts_count : Int32
      getter date : Int32
      getter outgoing : Bool | Nil
      getter mentioned : Bool | Nil
      getter media_unread : Bool | Nil
      getter silent : Bool | Nil
      getter fwd_from : Root::TypeMessageFwdHeader | Nil
      getter via_bot_id : Int64 | Nil
      getter reply_to : Root::TypeMessageReplyHeader | Nil
      getter entities : Array(Root::TypeMessageEntity) | Nil
      getter ttl_period : Int32 | Nil

      def initialize(
        id : Int32,
        from_id : Int64,
        chat_id : Int64,
        message : Bytes | String | IO,
        pts : Int32,
        pts_count : Int32,
        date : Int32,
        outgoing : Bool | Nil = nil,
        mentioned : Bool | Nil = nil,
        media_unread : Bool | Nil = nil,
        silent : Bool | Nil = nil,
        fwd_from : Root::TypeMessageFwdHeader | Nil = nil,
        via_bot_id : Int64 | Nil = nil,
        reply_to : Root::TypeMessageReplyHeader | Nil = nil,
        entities : Array(Root::TypeMessageEntity) | Nil = nil,
        ttl_period : Int32 | Nil = nil
      )
        @id = id
        @from_id = from_id
        @chat_id = chat_id
        @message = message
        @pts = pts
        @pts_count = pts_count
        @date = date
        @outgoing = outgoing
        @mentioned = mentioned
        @media_unread = media_unread
        @silent = silent
        @fwd_from = fwd_from
        @via_bot_id = via_bot_id
        @reply_to = reply_to
        @entities = entities
        @ttl_period = ttl_period
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!outgoing.nil? ? 2 : 0) |
            (!mentioned.nil? ? 16 : 0) |
            (!media_unread.nil? ? 32 : 0) |
            (!silent.nil? ? 8192 : 0) |
            (!fwd_from.nil? ? 4 : 0) |
            (!via_bot_id.nil? ? 2048 : 0) |
            (!reply_to.nil? ? 8 : 0) |
            (!entities.nil? ? 128 : 0) |
            (!ttl_period.nil? ? 33554432 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io, true)
        @from_id.tl_serialize(io, true)
        @chat_id.tl_serialize(io, true)
        @message.tl_serialize(io, true)
        @pts.tl_serialize(io, true)
        @pts_count.tl_serialize(io, true)
        @date.tl_serialize(io, true)
        @fwd_from.tl_serialize(io, false) unless @fwd_from.nil?
        @via_bot_id.tl_serialize(io, true) unless @via_bot_id.nil?
        @reply_to.tl_serialize(io, false) unless @reply_to.nil?
        @entities.tl_serialize(io, false) unless @entities.nil?
        @ttl_period.tl_serialize(io, true) unless @ttl_period.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          id: Int32.tl_deserialize(io, true),
          from_id: Int64.tl_deserialize(io, true),
          chat_id: Int64.tl_deserialize(io, true),
          message: Bytes.tl_deserialize(io, true),
          pts: Int32.tl_deserialize(io, true),
          pts_count: Int32.tl_deserialize(io, true),
          date: Int32.tl_deserialize(io, true),
          outgoing: flags & 2 == 1,
          mentioned: flags & 16 == 1,
          media_unread: flags & 32 == 1,
          silent: flags & 8192 == 1,
          fwd_from: flags & 4 == 1 ? Root::TypeMessageFwdHeader.tl_deserialize(io, false) : nil,
          via_bot_id: flags & 2048 == 1 ? Int64.tl_deserialize(io, true) : nil,
          reply_to: flags & 8 == 1 ? Root::TypeMessageReplyHeader.tl_deserialize(io, false) : nil,
          entities: flags & 128 == 1 ? Array(Root::TypeMessageEntity).tl_deserialize(io, false) : nil,
          ttl_period: flags & 33554432 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class UpdateShort < TypeUpdates
      CONSTRUCTOR_ID = 0x78D4DEC1

      getter update : Root::TypeUpdate
      getter date : Int32

      def initialize(
        update : Root::TypeUpdate,
        date : Int32
      )
        @update = update
        @date = date
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @update.tl_serialize(io, false)
        @date.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          update: Root::TypeUpdate.tl_deserialize(io, false),
          date: Int32.tl_deserialize(io, true),
        )
      end
    end

    class UpdatesCombined < TypeUpdates
      CONSTRUCTOR_ID = 0x725B04C3

      getter updates : Array(Root::TypeUpdate)
      getter users : Array(Root::TypeUser)
      getter chats : Array(Root::TypeChat)
      getter date : Int32
      getter seq_start : Int32
      getter seq : Int32

      def initialize(
        updates : Array(Root::TypeUpdate),
        users : Array(Root::TypeUser),
        chats : Array(Root::TypeChat),
        date : Int32,
        seq_start : Int32,
        seq : Int32
      )
        @updates = updates
        @users = users
        @chats = chats
        @date = date
        @seq_start = seq_start
        @seq = seq
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @updates.tl_serialize(io, false)
        @users.tl_serialize(io, false)
        @chats.tl_serialize(io, false)
        @date.tl_serialize(io, true)
        @seq_start.tl_serialize(io, true)
        @seq.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          updates: Array(Root::TypeUpdate).tl_deserialize(io, false),
          users: Array(Root::TypeUser).tl_deserialize(io, false),
          chats: Array(Root::TypeChat).tl_deserialize(io, false),
          date: Int32.tl_deserialize(io, true),
          seq_start: Int32.tl_deserialize(io, true),
          seq: Int32.tl_deserialize(io, true),
        )
      end
    end

    class Updates < TypeUpdates
      CONSTRUCTOR_ID = 0x74AE4240

      getter updates : Array(Root::TypeUpdate)
      getter users : Array(Root::TypeUser)
      getter chats : Array(Root::TypeChat)
      getter date : Int32
      getter seq : Int32

      def initialize(
        updates : Array(Root::TypeUpdate),
        users : Array(Root::TypeUser),
        chats : Array(Root::TypeChat),
        date : Int32,
        seq : Int32
      )
        @updates = updates
        @users = users
        @chats = chats
        @date = date
        @seq = seq
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @updates.tl_serialize(io, false)
        @users.tl_serialize(io, false)
        @chats.tl_serialize(io, false)
        @date.tl_serialize(io, true)
        @seq.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          updates: Array(Root::TypeUpdate).tl_deserialize(io, false),
          users: Array(Root::TypeUser).tl_deserialize(io, false),
          chats: Array(Root::TypeChat).tl_deserialize(io, false),
          date: Int32.tl_deserialize(io, true),
          seq: Int32.tl_deserialize(io, true),
        )
      end
    end

    class UpdateShortSentMessage < TypeUpdates
      CONSTRUCTOR_ID = 0x9015E101

      getter id : Int32
      getter pts : Int32
      getter pts_count : Int32
      getter date : Int32
      getter outgoing : Bool | Nil
      getter media : Root::TypeMessageMedia | Nil
      getter entities : Array(Root::TypeMessageEntity) | Nil
      getter ttl_period : Int32 | Nil

      def initialize(
        id : Int32,
        pts : Int32,
        pts_count : Int32,
        date : Int32,
        outgoing : Bool | Nil = nil,
        media : Root::TypeMessageMedia | Nil = nil,
        entities : Array(Root::TypeMessageEntity) | Nil = nil,
        ttl_period : Int32 | Nil = nil
      )
        @id = id
        @pts = pts
        @pts_count = pts_count
        @date = date
        @outgoing = outgoing
        @media = media
        @entities = entities
        @ttl_period = ttl_period
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!outgoing.nil? ? 2 : 0) |
            (!media.nil? ? 512 : 0) |
            (!entities.nil? ? 128 : 0) |
            (!ttl_period.nil? ? 33554432 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io, true)
        @pts.tl_serialize(io, true)
        @pts_count.tl_serialize(io, true)
        @date.tl_serialize(io, true)
        @media.tl_serialize(io, false) unless @media.nil?
        @entities.tl_serialize(io, false) unless @entities.nil?
        @ttl_period.tl_serialize(io, true) unless @ttl_period.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          id: Int32.tl_deserialize(io, true),
          pts: Int32.tl_deserialize(io, true),
          pts_count: Int32.tl_deserialize(io, true),
          date: Int32.tl_deserialize(io, true),
          outgoing: flags & 2 == 1,
          media: flags & 512 == 1 ? Root::TypeMessageMedia.tl_deserialize(io, false) : nil,
          entities: flags & 128 == 1 ? Array(Root::TypeMessageEntity).tl_deserialize(io, false) : nil,
          ttl_period: flags & 33554432 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class DcOption < TypeDcOption
      CONSTRUCTOR_ID = 0x18B7A10D

      getter id : Int32
      getter ip_address : Bytes
      getter port : Int32
      getter ipv6 : Bool | Nil
      getter media_only : Bool | Nil
      getter tcpo_only : Bool | Nil
      getter cdn : Bool | Nil
      getter static : Bool | Nil
      getter secret : Bytes | Nil

      def initialize(
        id : Int32,
        ip_address : Bytes | String | IO,
        port : Int32,
        ipv6 : Bool | Nil = nil,
        media_only : Bool | Nil = nil,
        tcpo_only : Bool | Nil = nil,
        cdn : Bool | Nil = nil,
        static : Bool | Nil = nil,
        secret : Bytes | Nil = nil
      )
        @id = id
        @ip_address = ip_address
        @port = port
        @ipv6 = ipv6
        @media_only = media_only
        @tcpo_only = tcpo_only
        @cdn = cdn
        @static = static
        @secret = TL::Utils.parse_bytes(secret)
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!ipv6.nil? ? 1 : 0) |
            (!media_only.nil? ? 2 : 0) |
            (!tcpo_only.nil? ? 4 : 0) |
            (!cdn.nil? ? 8 : 0) |
            (!static.nil? ? 16 : 0) |
            (!secret.nil? ? 1024 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io, true)
        @ip_address.tl_serialize(io, true)
        @port.tl_serialize(io, true)
        @secret.tl_serialize(io, true) unless @secret.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          id: Int32.tl_deserialize(io, true),
          ip_address: Bytes.tl_deserialize(io, true),
          port: Int32.tl_deserialize(io, true),
          ipv6: flags & 1 == 1,
          media_only: flags & 2 == 1,
          tcpo_only: flags & 4 == 1,
          cdn: flags & 8 == 1,
          static: flags & 16 == 1,
          secret: flags & 1024 == 1 ? Bytes.tl_deserialize(io, true) : nil,
        )
      end
    end

    class Config < TypeConfig
      CONSTRUCTOR_ID = 0x330B4067

      getter date : Int32
      getter expires : Int32
      getter test_mode : Bool
      getter this_dc : Int32
      getter dc_options : Array(Root::TypeDcOption)
      getter dc_txt_domain_name : Bytes
      getter chat_size_max : Int32
      getter megagroup_size_max : Int32
      getter forwarded_count_max : Int32
      getter online_update_period_ms : Int32
      getter offline_blur_timeout_ms : Int32
      getter offline_idle_timeout_ms : Int32
      getter online_cloud_timeout_ms : Int32
      getter notify_cloud_delay_ms : Int32
      getter notify_default_delay_ms : Int32
      getter push_chat_period_ms : Int32
      getter push_chat_limit : Int32
      getter saved_gifs_limit : Int32
      getter edit_time_limit : Int32
      getter revoke_time_limit : Int32
      getter revoke_pm_time_limit : Int32
      getter rating_e_decay : Int32
      getter stickers_recent_limit : Int32
      getter stickers_faved_limit : Int32
      getter channels_read_media_period : Int32
      getter pinned_dialogs_count_max : Int32
      getter pinned_infolder_count_max : Int32
      getter call_receive_timeout_ms : Int32
      getter call_ring_timeout_ms : Int32
      getter call_connect_timeout_ms : Int32
      getter call_packet_timeout_ms : Int32
      getter me_url_prefix : Bytes
      getter caption_length_max : Int32
      getter message_length_max : Int32
      getter webfile_dc_id : Int32
      getter phonecalls_enabled : Bool | Nil
      getter default_p2p_contacts : Bool | Nil
      getter preload_featured_stickers : Bool | Nil
      getter ignore_phone_entities : Bool | Nil
      getter revoke_pm_inbox : Bool | Nil
      getter blocked_mode : Bool | Nil
      getter pfs_enabled : Bool | Nil
      getter tmp_sessions : Int32 | Nil
      getter autoupdate_url_prefix : Bytes | Nil
      getter gif_search_username : Bytes | Nil
      getter venue_search_username : Bytes | Nil
      getter img_search_username : Bytes | Nil
      getter static_maps_provider : Bytes | Nil
      getter suggested_lang_code : Bytes | Nil
      getter lang_pack_version : Int32 | Nil
      getter base_lang_pack_version : Int32 | Nil

      def initialize(
        date : Int32,
        expires : Int32,
        test_mode : Bool,
        this_dc : Int32,
        dc_options : Array(Root::TypeDcOption),
        dc_txt_domain_name : Bytes | String | IO,
        chat_size_max : Int32,
        megagroup_size_max : Int32,
        forwarded_count_max : Int32,
        online_update_period_ms : Int32,
        offline_blur_timeout_ms : Int32,
        offline_idle_timeout_ms : Int32,
        online_cloud_timeout_ms : Int32,
        notify_cloud_delay_ms : Int32,
        notify_default_delay_ms : Int32,
        push_chat_period_ms : Int32,
        push_chat_limit : Int32,
        saved_gifs_limit : Int32,
        edit_time_limit : Int32,
        revoke_time_limit : Int32,
        revoke_pm_time_limit : Int32,
        rating_e_decay : Int32,
        stickers_recent_limit : Int32,
        stickers_faved_limit : Int32,
        channels_read_media_period : Int32,
        pinned_dialogs_count_max : Int32,
        pinned_infolder_count_max : Int32,
        call_receive_timeout_ms : Int32,
        call_ring_timeout_ms : Int32,
        call_connect_timeout_ms : Int32,
        call_packet_timeout_ms : Int32,
        me_url_prefix : Bytes | String | IO,
        caption_length_max : Int32,
        message_length_max : Int32,
        webfile_dc_id : Int32,
        phonecalls_enabled : Bool | Nil = nil,
        default_p2p_contacts : Bool | Nil = nil,
        preload_featured_stickers : Bool | Nil = nil,
        ignore_phone_entities : Bool | Nil = nil,
        revoke_pm_inbox : Bool | Nil = nil,
        blocked_mode : Bool | Nil = nil,
        pfs_enabled : Bool | Nil = nil,
        tmp_sessions : Int32 | Nil = nil,
        autoupdate_url_prefix : Bytes | Nil = nil,
        gif_search_username : Bytes | Nil = nil,
        venue_search_username : Bytes | Nil = nil,
        img_search_username : Bytes | Nil = nil,
        static_maps_provider : Bytes | Nil = nil,
        suggested_lang_code : Bytes | Nil = nil,
        lang_pack_version : Int32 | Nil = nil,
        base_lang_pack_version : Int32 | Nil = nil
      )
        @date = date
        @expires = expires
        @test_mode = test_mode
        @this_dc = this_dc
        @dc_options = dc_options
        @dc_txt_domain_name = dc_txt_domain_name
        @chat_size_max = chat_size_max
        @megagroup_size_max = megagroup_size_max
        @forwarded_count_max = forwarded_count_max
        @online_update_period_ms = online_update_period_ms
        @offline_blur_timeout_ms = offline_blur_timeout_ms
        @offline_idle_timeout_ms = offline_idle_timeout_ms
        @online_cloud_timeout_ms = online_cloud_timeout_ms
        @notify_cloud_delay_ms = notify_cloud_delay_ms
        @notify_default_delay_ms = notify_default_delay_ms
        @push_chat_period_ms = push_chat_period_ms
        @push_chat_limit = push_chat_limit
        @saved_gifs_limit = saved_gifs_limit
        @edit_time_limit = edit_time_limit
        @revoke_time_limit = revoke_time_limit
        @revoke_pm_time_limit = revoke_pm_time_limit
        @rating_e_decay = rating_e_decay
        @stickers_recent_limit = stickers_recent_limit
        @stickers_faved_limit = stickers_faved_limit
        @channels_read_media_period = channels_read_media_period
        @pinned_dialogs_count_max = pinned_dialogs_count_max
        @pinned_infolder_count_max = pinned_infolder_count_max
        @call_receive_timeout_ms = call_receive_timeout_ms
        @call_ring_timeout_ms = call_ring_timeout_ms
        @call_connect_timeout_ms = call_connect_timeout_ms
        @call_packet_timeout_ms = call_packet_timeout_ms
        @me_url_prefix = me_url_prefix
        @caption_length_max = caption_length_max
        @message_length_max = message_length_max
        @webfile_dc_id = webfile_dc_id
        @phonecalls_enabled = phonecalls_enabled
        @default_p2p_contacts = default_p2p_contacts
        @preload_featured_stickers = preload_featured_stickers
        @ignore_phone_entities = ignore_phone_entities
        @revoke_pm_inbox = revoke_pm_inbox
        @blocked_mode = blocked_mode
        @pfs_enabled = pfs_enabled
        @tmp_sessions = tmp_sessions
        @autoupdate_url_prefix = autoupdate_url_prefix
        @gif_search_username = gif_search_username
        @venue_search_username = venue_search_username
        @img_search_username = img_search_username
        @static_maps_provider = static_maps_provider
        @suggested_lang_code = suggested_lang_code
        @lang_pack_version = lang_pack_version
        @base_lang_pack_version = base_lang_pack_version
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!phonecalls_enabled.nil? ? 2 : 0) |
            (!default_p2p_contacts.nil? ? 8 : 0) |
            (!preload_featured_stickers.nil? ? 16 : 0) |
            (!ignore_phone_entities.nil? ? 32 : 0) |
            (!revoke_pm_inbox.nil? ? 64 : 0) |
            (!blocked_mode.nil? ? 256 : 0) |
            (!pfs_enabled.nil? ? 8192 : 0) |
            (!tmp_sessions.nil? ? 1 : 0) |
            (!autoupdate_url_prefix.nil? ? 128 : 0) |
            (!gif_search_username.nil? ? 512 : 0) |
            (!venue_search_username.nil? ? 1024 : 0) |
            (!img_search_username.nil? ? 2048 : 0) |
            (!static_maps_provider.nil? ? 4096 : 0) |
            (!suggested_lang_code.nil? ? 4 : 0) |
            (!lang_pack_version.nil? ? 4 : 0) |
            (!base_lang_pack_version.nil? ? 4 : 0)
        ).tl_serialize(io)
        @date.tl_serialize(io, true)
        @expires.tl_serialize(io, true)
        @test_mode.tl_serialize(io, false)
        @this_dc.tl_serialize(io, true)
        @dc_options.tl_serialize(io, false)
        @dc_txt_domain_name.tl_serialize(io, true)
        @chat_size_max.tl_serialize(io, true)
        @megagroup_size_max.tl_serialize(io, true)
        @forwarded_count_max.tl_serialize(io, true)
        @online_update_period_ms.tl_serialize(io, true)
        @offline_blur_timeout_ms.tl_serialize(io, true)
        @offline_idle_timeout_ms.tl_serialize(io, true)
        @online_cloud_timeout_ms.tl_serialize(io, true)
        @notify_cloud_delay_ms.tl_serialize(io, true)
        @notify_default_delay_ms.tl_serialize(io, true)
        @push_chat_period_ms.tl_serialize(io, true)
        @push_chat_limit.tl_serialize(io, true)
        @saved_gifs_limit.tl_serialize(io, true)
        @edit_time_limit.tl_serialize(io, true)
        @revoke_time_limit.tl_serialize(io, true)
        @revoke_pm_time_limit.tl_serialize(io, true)
        @rating_e_decay.tl_serialize(io, true)
        @stickers_recent_limit.tl_serialize(io, true)
        @stickers_faved_limit.tl_serialize(io, true)
        @channels_read_media_period.tl_serialize(io, true)
        @tmp_sessions.tl_serialize(io, true) unless @tmp_sessions.nil?
        @pinned_dialogs_count_max.tl_serialize(io, true)
        @pinned_infolder_count_max.tl_serialize(io, true)
        @call_receive_timeout_ms.tl_serialize(io, true)
        @call_ring_timeout_ms.tl_serialize(io, true)
        @call_connect_timeout_ms.tl_serialize(io, true)
        @call_packet_timeout_ms.tl_serialize(io, true)
        @me_url_prefix.tl_serialize(io, true)
        @autoupdate_url_prefix.tl_serialize(io, true) unless @autoupdate_url_prefix.nil?
        @gif_search_username.tl_serialize(io, true) unless @gif_search_username.nil?
        @venue_search_username.tl_serialize(io, true) unless @venue_search_username.nil?
        @img_search_username.tl_serialize(io, true) unless @img_search_username.nil?
        @static_maps_provider.tl_serialize(io, true) unless @static_maps_provider.nil?
        @caption_length_max.tl_serialize(io, true)
        @message_length_max.tl_serialize(io, true)
        @webfile_dc_id.tl_serialize(io, true)
        @suggested_lang_code.tl_serialize(io, true) unless @suggested_lang_code.nil?
        @lang_pack_version.tl_serialize(io, true) unless @lang_pack_version.nil?
        @base_lang_pack_version.tl_serialize(io, true) unless @base_lang_pack_version.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          date: Int32.tl_deserialize(io, true),
          expires: Int32.tl_deserialize(io, true),
          test_mode: Bool.tl_deserialize(io, false),
          this_dc: Int32.tl_deserialize(io, true),
          dc_options: Array(Root::TypeDcOption).tl_deserialize(io, false),
          dc_txt_domain_name: Bytes.tl_deserialize(io, true),
          chat_size_max: Int32.tl_deserialize(io, true),
          megagroup_size_max: Int32.tl_deserialize(io, true),
          forwarded_count_max: Int32.tl_deserialize(io, true),
          online_update_period_ms: Int32.tl_deserialize(io, true),
          offline_blur_timeout_ms: Int32.tl_deserialize(io, true),
          offline_idle_timeout_ms: Int32.tl_deserialize(io, true),
          online_cloud_timeout_ms: Int32.tl_deserialize(io, true),
          notify_cloud_delay_ms: Int32.tl_deserialize(io, true),
          notify_default_delay_ms: Int32.tl_deserialize(io, true),
          push_chat_period_ms: Int32.tl_deserialize(io, true),
          push_chat_limit: Int32.tl_deserialize(io, true),
          saved_gifs_limit: Int32.tl_deserialize(io, true),
          edit_time_limit: Int32.tl_deserialize(io, true),
          revoke_time_limit: Int32.tl_deserialize(io, true),
          revoke_pm_time_limit: Int32.tl_deserialize(io, true),
          rating_e_decay: Int32.tl_deserialize(io, true),
          stickers_recent_limit: Int32.tl_deserialize(io, true),
          stickers_faved_limit: Int32.tl_deserialize(io, true),
          channels_read_media_period: Int32.tl_deserialize(io, true),
          pinned_dialogs_count_max: Int32.tl_deserialize(io, true),
          pinned_infolder_count_max: Int32.tl_deserialize(io, true),
          call_receive_timeout_ms: Int32.tl_deserialize(io, true),
          call_ring_timeout_ms: Int32.tl_deserialize(io, true),
          call_connect_timeout_ms: Int32.tl_deserialize(io, true),
          call_packet_timeout_ms: Int32.tl_deserialize(io, true),
          me_url_prefix: Bytes.tl_deserialize(io, true),
          caption_length_max: Int32.tl_deserialize(io, true),
          message_length_max: Int32.tl_deserialize(io, true),
          webfile_dc_id: Int32.tl_deserialize(io, true),
          phonecalls_enabled: flags & 2 == 1,
          default_p2p_contacts: flags & 8 == 1,
          preload_featured_stickers: flags & 16 == 1,
          ignore_phone_entities: flags & 32 == 1,
          revoke_pm_inbox: flags & 64 == 1,
          blocked_mode: flags & 256 == 1,
          pfs_enabled: flags & 8192 == 1,
          tmp_sessions: flags & 1 == 1 ? Int32.tl_deserialize(io, true) : nil,
          autoupdate_url_prefix: flags & 128 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          gif_search_username: flags & 512 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          venue_search_username: flags & 1024 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          img_search_username: flags & 2048 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          static_maps_provider: flags & 4096 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          suggested_lang_code: flags & 4 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          lang_pack_version: flags & 4 == 1 ? Int32.tl_deserialize(io, true) : nil,
          base_lang_pack_version: flags & 4 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class NearestDc < TypeNearestDc
      CONSTRUCTOR_ID = 0x8E1A1775

      getter country : Bytes
      getter this_dc : Int32
      getter nearest_dc : Int32

      def initialize(
        country : Bytes | String | IO,
        this_dc : Int32,
        nearest_dc : Int32
      )
        @country = country
        @this_dc = this_dc
        @nearest_dc = nearest_dc
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @country.tl_serialize(io, true)
        @this_dc.tl_serialize(io, true)
        @nearest_dc.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          country: Bytes.tl_deserialize(io, true),
          this_dc: Int32.tl_deserialize(io, true),
          nearest_dc: Int32.tl_deserialize(io, true),
        )
      end
    end

    class EncryptedChatEmpty < TypeEncryptedChat
      CONSTRUCTOR_ID = 0xAB7EC0A0

      getter id : Int32

      def initialize(
        id : Int32
      )
        @id = id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Int32.tl_deserialize(io, true),
        )
      end
    end

    class EncryptedChatWaiting < TypeEncryptedChat
      CONSTRUCTOR_ID = 0x66B25953

      getter id : Int32
      getter access_hash : Int64
      getter date : Int32
      getter admin_id : Int64
      getter participant_id : Int64

      def initialize(
        id : Int32,
        access_hash : Int64,
        date : Int32,
        admin_id : Int64,
        participant_id : Int64
      )
        @id = id
        @access_hash = access_hash
        @date = date
        @admin_id = admin_id
        @participant_id = participant_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true)
        @date.tl_serialize(io, true)
        @admin_id.tl_serialize(io, true)
        @participant_id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Int32.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
          date: Int32.tl_deserialize(io, true),
          admin_id: Int64.tl_deserialize(io, true),
          participant_id: Int64.tl_deserialize(io, true),
        )
      end
    end

    class EncryptedChatRequested < TypeEncryptedChat
      CONSTRUCTOR_ID = 0x48F1D94C

      getter id : Int32
      getter access_hash : Int64
      getter date : Int32
      getter admin_id : Int64
      getter participant_id : Int64
      getter g_a : Bytes
      getter folder_id : Int32 | Nil

      def initialize(
        id : Int32,
        access_hash : Int64,
        date : Int32,
        admin_id : Int64,
        participant_id : Int64,
        g_a : Bytes | String | IO,
        folder_id : Int32 | Nil = nil
      )
        @id = id
        @access_hash = access_hash
        @date = date
        @admin_id = admin_id
        @participant_id = participant_id
        @g_a = TL::Utils.parse_bytes!(g_a)
        @folder_id = folder_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!folder_id.nil? ? 1 : 0)
        ).tl_serialize(io)
        @folder_id.tl_serialize(io, true) unless @folder_id.nil?
        @id.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true)
        @date.tl_serialize(io, true)
        @admin_id.tl_serialize(io, true)
        @participant_id.tl_serialize(io, true)
        @g_a.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          id: Int32.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
          date: Int32.tl_deserialize(io, true),
          admin_id: Int64.tl_deserialize(io, true),
          participant_id: Int64.tl_deserialize(io, true),
          g_a: Bytes.tl_deserialize(io, true),
          folder_id: flags & 1 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class EncryptedChat < TypeEncryptedChat
      CONSTRUCTOR_ID = 0x61F0D4C7

      getter id : Int32
      getter access_hash : Int64
      getter date : Int32
      getter admin_id : Int64
      getter participant_id : Int64
      getter g_a_or_b : Bytes
      getter key_fingerprint : Int64

      def initialize(
        id : Int32,
        access_hash : Int64,
        date : Int32,
        admin_id : Int64,
        participant_id : Int64,
        g_a_or_b : Bytes | String | IO,
        key_fingerprint : Int64
      )
        @id = id
        @access_hash = access_hash
        @date = date
        @admin_id = admin_id
        @participant_id = participant_id
        @g_a_or_b = TL::Utils.parse_bytes!(g_a_or_b)
        @key_fingerprint = key_fingerprint
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true)
        @date.tl_serialize(io, true)
        @admin_id.tl_serialize(io, true)
        @participant_id.tl_serialize(io, true)
        @g_a_or_b.tl_serialize(io, true)
        @key_fingerprint.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Int32.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
          date: Int32.tl_deserialize(io, true),
          admin_id: Int64.tl_deserialize(io, true),
          participant_id: Int64.tl_deserialize(io, true),
          g_a_or_b: Bytes.tl_deserialize(io, true),
          key_fingerprint: Int64.tl_deserialize(io, true),
        )
      end
    end

    class EncryptedChatDiscarded < TypeEncryptedChat
      CONSTRUCTOR_ID = 0x1E1C7C45

      getter id : Int32
      getter history_deleted : Bool | Nil

      def initialize(
        id : Int32,
        history_deleted : Bool | Nil = nil
      )
        @id = id
        @history_deleted = history_deleted
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!history_deleted.nil? ? 1 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          id: Int32.tl_deserialize(io, true),
          history_deleted: flags & 1 == 1,
        )
      end
    end

    class InputEncryptedChat < TypeInputEncryptedChat
      CONSTRUCTOR_ID = 0xF141B5E1

      getter chat_id : Int32
      getter access_hash : Int64

      def initialize(
        chat_id : Int32,
        access_hash : Int64
      )
        @chat_id = chat_id
        @access_hash = access_hash
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @chat_id.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          chat_id: Int32.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
        )
      end
    end

    class EncryptedFileEmpty < TypeEncryptedFile
      CONSTRUCTOR_ID = 0xC21F497E

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class EncryptedFile < TypeEncryptedFile
      CONSTRUCTOR_ID = 0x4A70994C

      getter id : Int64
      getter access_hash : Int64
      getter size : Int32
      getter dc_id : Int32
      getter key_fingerprint : Int32

      def initialize(
        id : Int64,
        access_hash : Int64,
        size : Int32,
        dc_id : Int32,
        key_fingerprint : Int32
      )
        @id = id
        @access_hash = access_hash
        @size = size
        @dc_id = dc_id
        @key_fingerprint = key_fingerprint
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true)
        @size.tl_serialize(io, true)
        @dc_id.tl_serialize(io, true)
        @key_fingerprint.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Int64.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
          size: Int32.tl_deserialize(io, true),
          dc_id: Int32.tl_deserialize(io, true),
          key_fingerprint: Int32.tl_deserialize(io, true),
        )
      end
    end

    class InputEncryptedFileEmpty < TypeInputEncryptedFile
      CONSTRUCTOR_ID = 0x1837C364

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputEncryptedFileUploaded < TypeInputEncryptedFile
      CONSTRUCTOR_ID = 0x64BD0306

      getter id : Int64
      getter parts : Int32
      getter md5_checksum : Bytes
      getter key_fingerprint : Int32

      def initialize(
        id : Int64,
        parts : Int32,
        md5_checksum : Bytes | String | IO,
        key_fingerprint : Int32
      )
        @id = id
        @parts = parts
        @md5_checksum = md5_checksum
        @key_fingerprint = key_fingerprint
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        @parts.tl_serialize(io, true)
        @md5_checksum.tl_serialize(io, true)
        @key_fingerprint.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Int64.tl_deserialize(io, true),
          parts: Int32.tl_deserialize(io, true),
          md5_checksum: Bytes.tl_deserialize(io, true),
          key_fingerprint: Int32.tl_deserialize(io, true),
        )
      end
    end

    class InputEncryptedFile < TypeInputEncryptedFile
      CONSTRUCTOR_ID = 0x5A17B5E5

      getter id : Int64
      getter access_hash : Int64

      def initialize(
        id : Int64,
        access_hash : Int64
      )
        @id = id
        @access_hash = access_hash
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Int64.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
        )
      end
    end

    class InputEncryptedFileBigUploaded < TypeInputEncryptedFile
      CONSTRUCTOR_ID = 0x2DC173C8

      getter id : Int64
      getter parts : Int32
      getter key_fingerprint : Int32

      def initialize(
        id : Int64,
        parts : Int32,
        key_fingerprint : Int32
      )
        @id = id
        @parts = parts
        @key_fingerprint = key_fingerprint
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        @parts.tl_serialize(io, true)
        @key_fingerprint.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Int64.tl_deserialize(io, true),
          parts: Int32.tl_deserialize(io, true),
          key_fingerprint: Int32.tl_deserialize(io, true),
        )
      end
    end

    class EncryptedMessage < TypeEncryptedMessage
      CONSTRUCTOR_ID = 0xED18C118

      getter random_id : Int64
      getter chat_id : Int32
      getter date : Int32
      getter bytes : Bytes
      getter file : Root::TypeEncryptedFile

      def initialize(
        random_id : Int64,
        chat_id : Int32,
        date : Int32,
        bytes : Bytes | String | IO,
        file : Root::TypeEncryptedFile
      )
        @random_id = random_id
        @chat_id = chat_id
        @date = date
        @bytes = TL::Utils.parse_bytes!(bytes)
        @file = file
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @random_id.tl_serialize(io, true)
        @chat_id.tl_serialize(io, true)
        @date.tl_serialize(io, true)
        @bytes.tl_serialize(io, true)
        @file.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          random_id: Int64.tl_deserialize(io, true),
          chat_id: Int32.tl_deserialize(io, true),
          date: Int32.tl_deserialize(io, true),
          bytes: Bytes.tl_deserialize(io, true),
          file: Root::TypeEncryptedFile.tl_deserialize(io, false),
        )
      end
    end

    class EncryptedMessageService < TypeEncryptedMessage
      CONSTRUCTOR_ID = 0x23734B06

      getter random_id : Int64
      getter chat_id : Int32
      getter date : Int32
      getter bytes : Bytes

      def initialize(
        random_id : Int64,
        chat_id : Int32,
        date : Int32,
        bytes : Bytes | String | IO
      )
        @random_id = random_id
        @chat_id = chat_id
        @date = date
        @bytes = TL::Utils.parse_bytes!(bytes)
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @random_id.tl_serialize(io, true)
        @chat_id.tl_serialize(io, true)
        @date.tl_serialize(io, true)
        @bytes.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          random_id: Int64.tl_deserialize(io, true),
          chat_id: Int32.tl_deserialize(io, true),
          date: Int32.tl_deserialize(io, true),
          bytes: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class InputDocumentEmpty < TypeInputDocument
      CONSTRUCTOR_ID = 0x72F0EAAE

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputDocument < TypeInputDocument
      CONSTRUCTOR_ID = 0x1ABFB575

      getter id : Int64
      getter access_hash : Int64
      getter file_reference : Bytes

      def initialize(
        id : Int64,
        access_hash : Int64,
        file_reference : Bytes | String | IO
      )
        @id = id
        @access_hash = access_hash
        @file_reference = TL::Utils.parse_bytes!(file_reference)
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true)
        @file_reference.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Int64.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
          file_reference: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class DocumentEmpty < TypeDocument
      CONSTRUCTOR_ID = 0x36F8C871

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
          id: Int64.tl_deserialize(io, true),
        )
      end
    end

    class Document < TypeDocument
      CONSTRUCTOR_ID = 0x1E87342B

      getter id : Int64
      getter access_hash : Int64
      getter file_reference : Bytes
      getter date : Int32
      getter mime_type : Bytes
      getter size : Int32
      getter dc_id : Int32
      getter attributes : Array(Root::TypeDocumentAttribute)
      getter thumbs : Array(Root::TypePhotoSize) | Nil
      getter video_thumbs : Array(Root::TypeVideoSize) | Nil

      def initialize(
        id : Int64,
        access_hash : Int64,
        file_reference : Bytes | String | IO,
        date : Int32,
        mime_type : Bytes | String | IO,
        size : Int32,
        dc_id : Int32,
        attributes : Array(Root::TypeDocumentAttribute),
        thumbs : Array(Root::TypePhotoSize) | Nil = nil,
        video_thumbs : Array(Root::TypeVideoSize) | Nil = nil
      )
        @id = id
        @access_hash = access_hash
        @file_reference = TL::Utils.parse_bytes!(file_reference)
        @date = date
        @mime_type = mime_type
        @size = size
        @dc_id = dc_id
        @attributes = attributes
        @thumbs = thumbs
        @video_thumbs = video_thumbs
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!thumbs.nil? ? 1 : 0) |
            (!video_thumbs.nil? ? 2 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true)
        @file_reference.tl_serialize(io, true)
        @date.tl_serialize(io, true)
        @mime_type.tl_serialize(io, true)
        @size.tl_serialize(io, true)
        @thumbs.tl_serialize(io, false) unless @thumbs.nil?
        @video_thumbs.tl_serialize(io, false) unless @video_thumbs.nil?
        @dc_id.tl_serialize(io, true)
        @attributes.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          id: Int64.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
          file_reference: Bytes.tl_deserialize(io, true),
          date: Int32.tl_deserialize(io, true),
          mime_type: Bytes.tl_deserialize(io, true),
          size: Int32.tl_deserialize(io, true),
          dc_id: Int32.tl_deserialize(io, true),
          attributes: Array(Root::TypeDocumentAttribute).tl_deserialize(io, false),
          thumbs: flags & 1 == 1 ? Array(Root::TypePhotoSize).tl_deserialize(io, false) : nil,
          video_thumbs: flags & 2 == 1 ? Array(Root::TypeVideoSize).tl_deserialize(io, false) : nil,
        )
      end
    end

    class NotifyPeer < TypeNotifyPeer
      CONSTRUCTOR_ID = 0x9FD40BD8

      getter peer : Root::TypePeer

      def initialize(
        peer : Root::TypePeer
      )
        @peer = peer
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @peer.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          peer: Root::TypePeer.tl_deserialize(io, false),
        )
      end
    end

    class NotifyUsers < TypeNotifyPeer
      CONSTRUCTOR_ID = 0xB4C83B4C

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class NotifyChats < TypeNotifyPeer
      CONSTRUCTOR_ID = 0xC007CEC3

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class NotifyBroadcasts < TypeNotifyPeer
      CONSTRUCTOR_ID = 0xD612E8EF

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class SendMessageTypingAction < TypeSendMessageAction
      CONSTRUCTOR_ID = 0x16BF744E

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class SendMessageCancelAction < TypeSendMessageAction
      CONSTRUCTOR_ID = 0xFD5EC8F5

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class SendMessageRecordVideoAction < TypeSendMessageAction
      CONSTRUCTOR_ID = 0xA187D66F

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class SendMessageUploadVideoAction < TypeSendMessageAction
      CONSTRUCTOR_ID = 0xE9763AEC

      getter progress : Int32

      def initialize(
        progress : Int32
      )
        @progress = progress
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @progress.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          progress: Int32.tl_deserialize(io, true),
        )
      end
    end

    class SendMessageRecordAudioAction < TypeSendMessageAction
      CONSTRUCTOR_ID = 0xD52F73F7

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class SendMessageUploadAudioAction < TypeSendMessageAction
      CONSTRUCTOR_ID = 0xF351D7AB

      getter progress : Int32

      def initialize(
        progress : Int32
      )
        @progress = progress
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @progress.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          progress: Int32.tl_deserialize(io, true),
        )
      end
    end

    class SendMessageUploadPhotoAction < TypeSendMessageAction
      CONSTRUCTOR_ID = 0xD1D34A26

      getter progress : Int32

      def initialize(
        progress : Int32
      )
        @progress = progress
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @progress.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          progress: Int32.tl_deserialize(io, true),
        )
      end
    end

    class SendMessageUploadDocumentAction < TypeSendMessageAction
      CONSTRUCTOR_ID = 0xAA0CD9E4

      getter progress : Int32

      def initialize(
        progress : Int32
      )
        @progress = progress
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @progress.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          progress: Int32.tl_deserialize(io, true),
        )
      end
    end

    class SendMessageGeoLocationAction < TypeSendMessageAction
      CONSTRUCTOR_ID = 0x176F8BA1

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class SendMessageChooseContactAction < TypeSendMessageAction
      CONSTRUCTOR_ID = 0x628CBC6F

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class SendMessageGamePlayAction < TypeSendMessageAction
      CONSTRUCTOR_ID = 0xDD6A8F48

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class SendMessageRecordRoundAction < TypeSendMessageAction
      CONSTRUCTOR_ID = 0x88F27FBC

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class SendMessageUploadRoundAction < TypeSendMessageAction
      CONSTRUCTOR_ID = 0x243E1C66

      getter progress : Int32

      def initialize(
        progress : Int32
      )
        @progress = progress
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @progress.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          progress: Int32.tl_deserialize(io, true),
        )
      end
    end

    class SpeakingInGroupCallAction < TypeSendMessageAction
      CONSTRUCTOR_ID = 0xD92C2285

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class SendMessageHistoryImportAction < TypeSendMessageAction
      CONSTRUCTOR_ID = 0xDBDA9246

      getter progress : Int32

      def initialize(
        progress : Int32
      )
        @progress = progress
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @progress.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          progress: Int32.tl_deserialize(io, true),
        )
      end
    end

    class SendMessageChooseStickerAction < TypeSendMessageAction
      CONSTRUCTOR_ID = 0xB05AC6B1

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class SendMessageEmojiInteraction < TypeSendMessageAction
      CONSTRUCTOR_ID = 0x6A3233B6

      getter emoticon : Bytes
      getter interaction : Root::TypeDataJSON

      def initialize(
        emoticon : Bytes | String | IO,
        interaction : Root::TypeDataJSON
      )
        @emoticon = emoticon
        @interaction = interaction
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @emoticon.tl_serialize(io, true)
        @interaction.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          emoticon: Bytes.tl_deserialize(io, true),
          interaction: Root::TypeDataJSON.tl_deserialize(io, false),
        )
      end
    end

    class SendMessageEmojiInteractionSeen < TypeSendMessageAction
      CONSTRUCTOR_ID = 0xB665902E

      getter emoticon : Bytes

      def initialize(
        emoticon : Bytes | String | IO
      )
        @emoticon = emoticon
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @emoticon.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          emoticon: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class InputPrivacyKeyStatusTimestamp < TypeInputPrivacyKey
      CONSTRUCTOR_ID = 0x4F96CB18

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputPrivacyKeyChatInvite < TypeInputPrivacyKey
      CONSTRUCTOR_ID = 0xBDFB0426

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputPrivacyKeyPhoneCall < TypeInputPrivacyKey
      CONSTRUCTOR_ID = 0xFABADC5F

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputPrivacyKeyPhoneP2P < TypeInputPrivacyKey
      CONSTRUCTOR_ID = 0xDB9E70D2

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputPrivacyKeyForwards < TypeInputPrivacyKey
      CONSTRUCTOR_ID = 0xA4DD4C08

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputPrivacyKeyProfilePhoto < TypeInputPrivacyKey
      CONSTRUCTOR_ID = 0x5719BACC

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputPrivacyKeyPhoneNumber < TypeInputPrivacyKey
      CONSTRUCTOR_ID = 0x0352DAFA

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputPrivacyKeyAddedByPhone < TypeInputPrivacyKey
      CONSTRUCTOR_ID = 0xD1219BDD

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class PrivacyKeyStatusTimestamp < TypePrivacyKey
      CONSTRUCTOR_ID = 0xBC2EAB30

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class PrivacyKeyChatInvite < TypePrivacyKey
      CONSTRUCTOR_ID = 0x500E6DFA

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class PrivacyKeyPhoneCall < TypePrivacyKey
      CONSTRUCTOR_ID = 0x3D662B7B

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class PrivacyKeyPhoneP2P < TypePrivacyKey
      CONSTRUCTOR_ID = 0x39491CC8

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class PrivacyKeyForwards < TypePrivacyKey
      CONSTRUCTOR_ID = 0x69EC56A3

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class PrivacyKeyProfilePhoto < TypePrivacyKey
      CONSTRUCTOR_ID = 0x96151FED

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class PrivacyKeyPhoneNumber < TypePrivacyKey
      CONSTRUCTOR_ID = 0xD19AE46D

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class PrivacyKeyAddedByPhone < TypePrivacyKey
      CONSTRUCTOR_ID = 0x42FFD42B

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputPrivacyValueAllowContacts < TypeInputPrivacyRule
      CONSTRUCTOR_ID = 0x0D09E07B

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputPrivacyValueAllowAll < TypeInputPrivacyRule
      CONSTRUCTOR_ID = 0x184B35CE

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputPrivacyValueAllowUsers < TypeInputPrivacyRule
      CONSTRUCTOR_ID = 0x131CC67F

      getter users : Array(Root::TypeInputUser)

      def initialize(
        users : Array(Root::TypeInputUser)
      )
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @users.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          users: Array(Root::TypeInputUser).tl_deserialize(io, false),
        )
      end
    end

    class InputPrivacyValueDisallowContacts < TypeInputPrivacyRule
      CONSTRUCTOR_ID = 0x0BA52007

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputPrivacyValueDisallowAll < TypeInputPrivacyRule
      CONSTRUCTOR_ID = 0xD66B66C9

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputPrivacyValueDisallowUsers < TypeInputPrivacyRule
      CONSTRUCTOR_ID = 0x90110467

      getter users : Array(Root::TypeInputUser)

      def initialize(
        users : Array(Root::TypeInputUser)
      )
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @users.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          users: Array(Root::TypeInputUser).tl_deserialize(io, false),
        )
      end
    end

    class InputPrivacyValueAllowChatParticipants < TypeInputPrivacyRule
      CONSTRUCTOR_ID = 0x840649CF

      getter chats : Array(Int64)

      def initialize(
        chats : Array(Int64)
      )
        @chats = chats
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @chats.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          chats: Array(Int64).tl_deserialize(io, false),
        )
      end
    end

    class InputPrivacyValueDisallowChatParticipants < TypeInputPrivacyRule
      CONSTRUCTOR_ID = 0xE94F0F86

      getter chats : Array(Int64)

      def initialize(
        chats : Array(Int64)
      )
        @chats = chats
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @chats.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          chats: Array(Int64).tl_deserialize(io, false),
        )
      end
    end

    class PrivacyValueAllowContacts < TypePrivacyRule
      CONSTRUCTOR_ID = 0xFFFE1BAC

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class PrivacyValueAllowAll < TypePrivacyRule
      CONSTRUCTOR_ID = 0x65427B82

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class PrivacyValueAllowUsers < TypePrivacyRule
      CONSTRUCTOR_ID = 0xB8905FB2

      getter users : Array(Int64)

      def initialize(
        users : Array(Int64)
      )
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @users.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          users: Array(Int64).tl_deserialize(io, false),
        )
      end
    end

    class PrivacyValueDisallowContacts < TypePrivacyRule
      CONSTRUCTOR_ID = 0xF888FA1A

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class PrivacyValueDisallowAll < TypePrivacyRule
      CONSTRUCTOR_ID = 0x8B73E763

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class PrivacyValueDisallowUsers < TypePrivacyRule
      CONSTRUCTOR_ID = 0xE4621141

      getter users : Array(Int64)

      def initialize(
        users : Array(Int64)
      )
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @users.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          users: Array(Int64).tl_deserialize(io, false),
        )
      end
    end

    class PrivacyValueAllowChatParticipants < TypePrivacyRule
      CONSTRUCTOR_ID = 0x6B134E8E

      getter chats : Array(Int64)

      def initialize(
        chats : Array(Int64)
      )
        @chats = chats
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @chats.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          chats: Array(Int64).tl_deserialize(io, false),
        )
      end
    end

    class PrivacyValueDisallowChatParticipants < TypePrivacyRule
      CONSTRUCTOR_ID = 0x41C87565

      getter chats : Array(Int64)

      def initialize(
        chats : Array(Int64)
      )
        @chats = chats
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @chats.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          chats: Array(Int64).tl_deserialize(io, false),
        )
      end
    end

    class AccountDaysTTL < TypeAccountDaysTTL
      CONSTRUCTOR_ID = 0xB8D0AFDF

      getter days : Int32

      def initialize(
        days : Int32
      )
        @days = days
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @days.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          days: Int32.tl_deserialize(io, true),
        )
      end
    end

    class DocumentAttributeImageSize < TypeDocumentAttribute
      CONSTRUCTOR_ID = 0x6C37C15C

      getter w : Int32
      getter h : Int32

      def initialize(
        w : Int32,
        h : Int32
      )
        @w = w
        @h = h
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @w.tl_serialize(io, true)
        @h.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          w: Int32.tl_deserialize(io, true),
          h: Int32.tl_deserialize(io, true),
        )
      end
    end

    class DocumentAttributeAnimated < TypeDocumentAttribute
      CONSTRUCTOR_ID = 0x11B58939

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class DocumentAttributeSticker < TypeDocumentAttribute
      CONSTRUCTOR_ID = 0x6319D612

      getter alt : Bytes
      getter stickerset : Root::TypeInputStickerSet
      getter mask : Bool | Nil
      getter mask_coords : Root::TypeMaskCoords | Nil

      def initialize(
        alt : Bytes | String | IO,
        stickerset : Root::TypeInputStickerSet,
        mask : Bool | Nil = nil,
        mask_coords : Root::TypeMaskCoords | Nil = nil
      )
        @alt = alt
        @stickerset = stickerset
        @mask = mask
        @mask_coords = mask_coords
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!mask.nil? ? 2 : 0) |
            (!mask_coords.nil? ? 1 : 0)
        ).tl_serialize(io)
        @alt.tl_serialize(io, true)
        @stickerset.tl_serialize(io, false)
        @mask_coords.tl_serialize(io, false) unless @mask_coords.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          alt: Bytes.tl_deserialize(io, true),
          stickerset: Root::TypeInputStickerSet.tl_deserialize(io, false),
          mask: flags & 2 == 1,
          mask_coords: flags & 1 == 1 ? Root::TypeMaskCoords.tl_deserialize(io, false) : nil,
        )
      end
    end

    class DocumentAttributeVideo < TypeDocumentAttribute
      CONSTRUCTOR_ID = 0x0EF02CE6

      getter duration : Int32
      getter w : Int32
      getter h : Int32
      getter round_message : Bool | Nil
      getter supports_streaming : Bool | Nil

      def initialize(
        duration : Int32,
        w : Int32,
        h : Int32,
        round_message : Bool | Nil = nil,
        supports_streaming : Bool | Nil = nil
      )
        @duration = duration
        @w = w
        @h = h
        @round_message = round_message
        @supports_streaming = supports_streaming
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!round_message.nil? ? 1 : 0) |
            (!supports_streaming.nil? ? 2 : 0)
        ).tl_serialize(io)
        @duration.tl_serialize(io, true)
        @w.tl_serialize(io, true)
        @h.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          duration: Int32.tl_deserialize(io, true),
          w: Int32.tl_deserialize(io, true),
          h: Int32.tl_deserialize(io, true),
          round_message: flags & 1 == 1,
          supports_streaming: flags & 2 == 1,
        )
      end
    end

    class DocumentAttributeAudio < TypeDocumentAttribute
      CONSTRUCTOR_ID = 0x9852F9C6

      getter duration : Int32
      getter voice : Bool | Nil
      getter title : Bytes | Nil
      getter performer : Bytes | Nil
      getter waveform : Bytes | Nil

      def initialize(
        duration : Int32,
        voice : Bool | Nil = nil,
        title : Bytes | Nil = nil,
        performer : Bytes | Nil = nil,
        waveform : Bytes | Nil = nil
      )
        @duration = duration
        @voice = voice
        @title = title
        @performer = performer
        @waveform = TL::Utils.parse_bytes(waveform)
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!voice.nil? ? 1024 : 0) |
            (!title.nil? ? 1 : 0) |
            (!performer.nil? ? 2 : 0) |
            (!waveform.nil? ? 4 : 0)
        ).tl_serialize(io)
        @duration.tl_serialize(io, true)
        @title.tl_serialize(io, true) unless @title.nil?
        @performer.tl_serialize(io, true) unless @performer.nil?
        @waveform.tl_serialize(io, true) unless @waveform.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          duration: Int32.tl_deserialize(io, true),
          voice: flags & 1024 == 1,
          title: flags & 1 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          performer: flags & 2 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          waveform: flags & 4 == 1 ? Bytes.tl_deserialize(io, true) : nil,
        )
      end
    end

    class DocumentAttributeFilename < TypeDocumentAttribute
      CONSTRUCTOR_ID = 0x15590068

      getter file_name : Bytes

      def initialize(
        file_name : Bytes | String | IO
      )
        @file_name = file_name
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @file_name.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          file_name: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class DocumentAttributeHasStickers < TypeDocumentAttribute
      CONSTRUCTOR_ID = 0x9801D2F7

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class StickerPack < TypeStickerPack
      CONSTRUCTOR_ID = 0x12B299D4

      getter emoticon : Bytes
      getter documents : Array(Int64)

      def initialize(
        emoticon : Bytes | String | IO,
        documents : Array(Int64)
      )
        @emoticon = emoticon
        @documents = documents
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @emoticon.tl_serialize(io, true)
        @documents.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          emoticon: Bytes.tl_deserialize(io, true),
          documents: Array(Int64).tl_deserialize(io, false),
        )
      end
    end

    class WebPageEmpty < TypeWebPage
      CONSTRUCTOR_ID = 0xEB1477E8

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
          id: Int64.tl_deserialize(io, true),
        )
      end
    end

    class WebPagePending < TypeWebPage
      CONSTRUCTOR_ID = 0xC586DA1C

      getter id : Int64
      getter date : Int32

      def initialize(
        id : Int64,
        date : Int32
      )
        @id = id
        @date = date
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        @date.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Int64.tl_deserialize(io, true),
          date: Int32.tl_deserialize(io, true),
        )
      end
    end

    class WebPage < TypeWebPage
      CONSTRUCTOR_ID = 0xE89C45B2

      getter id : Int64
      getter url : Bytes
      getter display_url : Bytes
      getter hash : Int32
      getter type : Bytes | Nil
      getter site_name : Bytes | Nil
      getter title : Bytes | Nil
      getter description : Bytes | Nil
      getter photo : Root::TypePhoto | Nil
      getter embed_url : Bytes | Nil
      getter embed_type : Bytes | Nil
      getter embed_width : Int32 | Nil
      getter embed_height : Int32 | Nil
      getter duration : Int32 | Nil
      getter author : Bytes | Nil
      getter document : Root::TypeDocument | Nil
      getter cached_page : Root::TypePage | Nil
      getter attributes : Array(Root::TypeWebPageAttribute) | Nil

      def initialize(
        id : Int64,
        url : Bytes | String | IO,
        display_url : Bytes | String | IO,
        hash : Int32,
        type : Bytes | Nil = nil,
        site_name : Bytes | Nil = nil,
        title : Bytes | Nil = nil,
        description : Bytes | Nil = nil,
        photo : Root::TypePhoto | Nil = nil,
        embed_url : Bytes | Nil = nil,
        embed_type : Bytes | Nil = nil,
        embed_width : Int32 | Nil = nil,
        embed_height : Int32 | Nil = nil,
        duration : Int32 | Nil = nil,
        author : Bytes | Nil = nil,
        document : Root::TypeDocument | Nil = nil,
        cached_page : Root::TypePage | Nil = nil,
        attributes : Array(Root::TypeWebPageAttribute) | Nil = nil
      )
        @id = id
        @url = url
        @display_url = display_url
        @hash = hash
        @type = type
        @site_name = site_name
        @title = title
        @description = description
        @photo = photo
        @embed_url = embed_url
        @embed_type = embed_type
        @embed_width = embed_width
        @embed_height = embed_height
        @duration = duration
        @author = author
        @document = document
        @cached_page = cached_page
        @attributes = attributes
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!type.nil? ? 1 : 0) |
            (!site_name.nil? ? 2 : 0) |
            (!title.nil? ? 4 : 0) |
            (!description.nil? ? 8 : 0) |
            (!photo.nil? ? 16 : 0) |
            (!embed_url.nil? ? 32 : 0) |
            (!embed_type.nil? ? 32 : 0) |
            (!embed_width.nil? ? 64 : 0) |
            (!embed_height.nil? ? 64 : 0) |
            (!duration.nil? ? 128 : 0) |
            (!author.nil? ? 256 : 0) |
            (!document.nil? ? 512 : 0) |
            (!cached_page.nil? ? 1024 : 0) |
            (!attributes.nil? ? 4096 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io, true)
        @url.tl_serialize(io, true)
        @display_url.tl_serialize(io, true)
        @hash.tl_serialize(io, true)
        @type.tl_serialize(io, true) unless @type.nil?
        @site_name.tl_serialize(io, true) unless @site_name.nil?
        @title.tl_serialize(io, true) unless @title.nil?
        @description.tl_serialize(io, true) unless @description.nil?
        @photo.tl_serialize(io, false) unless @photo.nil?
        @embed_url.tl_serialize(io, true) unless @embed_url.nil?
        @embed_type.tl_serialize(io, true) unless @embed_type.nil?
        @embed_width.tl_serialize(io, true) unless @embed_width.nil?
        @embed_height.tl_serialize(io, true) unless @embed_height.nil?
        @duration.tl_serialize(io, true) unless @duration.nil?
        @author.tl_serialize(io, true) unless @author.nil?
        @document.tl_serialize(io, false) unless @document.nil?
        @cached_page.tl_serialize(io, false) unless @cached_page.nil?
        @attributes.tl_serialize(io, false) unless @attributes.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          id: Int64.tl_deserialize(io, true),
          url: Bytes.tl_deserialize(io, true),
          display_url: Bytes.tl_deserialize(io, true),
          hash: Int32.tl_deserialize(io, true),
          type: flags & 1 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          site_name: flags & 2 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          title: flags & 4 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          description: flags & 8 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          photo: flags & 16 == 1 ? Root::TypePhoto.tl_deserialize(io, false) : nil,
          embed_url: flags & 32 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          embed_type: flags & 32 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          embed_width: flags & 64 == 1 ? Int32.tl_deserialize(io, true) : nil,
          embed_height: flags & 64 == 1 ? Int32.tl_deserialize(io, true) : nil,
          duration: flags & 128 == 1 ? Int32.tl_deserialize(io, true) : nil,
          author: flags & 256 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          document: flags & 512 == 1 ? Root::TypeDocument.tl_deserialize(io, false) : nil,
          cached_page: flags & 1024 == 1 ? Root::TypePage.tl_deserialize(io, false) : nil,
          attributes: flags & 4096 == 1 ? Array(Root::TypeWebPageAttribute).tl_deserialize(io, false) : nil,
        )
      end
    end

    class WebPageNotModified < TypeWebPage
      CONSTRUCTOR_ID = 0x7311CA11

      getter cached_page_views : Int32 | Nil

      def initialize(
        cached_page_views : Int32 | Nil = nil
      )
        @cached_page_views = cached_page_views
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!cached_page_views.nil? ? 1 : 0)
        ).tl_serialize(io)
        @cached_page_views.tl_serialize(io, true) unless @cached_page_views.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          cached_page_views: flags & 1 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class Authorization < TypeAuthorization
      CONSTRUCTOR_ID = 0xAD01D61D

      getter hash : Int64
      getter device_model : Bytes
      getter platform : Bytes
      getter system_version : Bytes
      getter api_id : Int32
      getter app_name : Bytes
      getter app_version : Bytes
      getter date_created : Int32
      getter date_active : Int32
      getter ip : Bytes
      getter country : Bytes
      getter region : Bytes
      getter current : Bool | Nil
      getter official_app : Bool | Nil
      getter password_pending : Bool | Nil

      def initialize(
        hash : Int64,
        device_model : Bytes | String | IO,
        platform : Bytes | String | IO,
        system_version : Bytes | String | IO,
        api_id : Int32,
        app_name : Bytes | String | IO,
        app_version : Bytes | String | IO,
        date_created : Int32,
        date_active : Int32,
        ip : Bytes | String | IO,
        country : Bytes | String | IO,
        region : Bytes | String | IO,
        current : Bool | Nil = nil,
        official_app : Bool | Nil = nil,
        password_pending : Bool | Nil = nil
      )
        @hash = hash
        @device_model = device_model
        @platform = platform
        @system_version = system_version
        @api_id = api_id
        @app_name = app_name
        @app_version = app_version
        @date_created = date_created
        @date_active = date_active
        @ip = ip
        @country = country
        @region = region
        @current = current
        @official_app = official_app
        @password_pending = password_pending
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!current.nil? ? 1 : 0) |
            (!official_app.nil? ? 2 : 0) |
            (!password_pending.nil? ? 4 : 0)
        ).tl_serialize(io)
        @hash.tl_serialize(io, true)
        @device_model.tl_serialize(io, true)
        @platform.tl_serialize(io, true)
        @system_version.tl_serialize(io, true)
        @api_id.tl_serialize(io, true)
        @app_name.tl_serialize(io, true)
        @app_version.tl_serialize(io, true)
        @date_created.tl_serialize(io, true)
        @date_active.tl_serialize(io, true)
        @ip.tl_serialize(io, true)
        @country.tl_serialize(io, true)
        @region.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          hash: Int64.tl_deserialize(io, true),
          device_model: Bytes.tl_deserialize(io, true),
          platform: Bytes.tl_deserialize(io, true),
          system_version: Bytes.tl_deserialize(io, true),
          api_id: Int32.tl_deserialize(io, true),
          app_name: Bytes.tl_deserialize(io, true),
          app_version: Bytes.tl_deserialize(io, true),
          date_created: Int32.tl_deserialize(io, true),
          date_active: Int32.tl_deserialize(io, true),
          ip: Bytes.tl_deserialize(io, true),
          country: Bytes.tl_deserialize(io, true),
          region: Bytes.tl_deserialize(io, true),
          current: flags & 1 == 1,
          official_app: flags & 2 == 1,
          password_pending: flags & 4 == 1,
        )
      end
    end

    class ReceivedNotifyMessage < TypeReceivedNotifyMessage
      CONSTRUCTOR_ID = 0xA384B779

      getter id : Int32
      getter flags : Int32

      def initialize(
        id : Int32,
        flags : Int32
      )
        @id = id
        @flags = flags
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        @flags.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Int32.tl_deserialize(io, true),
          flags: Int32.tl_deserialize(io, true),
        )
      end
    end

    class ChatInviteExported < TypeExportedChatInvite
      CONSTRUCTOR_ID = 0xB18105E8

      getter link : Bytes
      getter admin_id : Int64
      getter date : Int32
      getter revoked : Bool | Nil
      getter permanent : Bool | Nil
      getter start_date : Int32 | Nil
      getter expire_date : Int32 | Nil
      getter usage_limit : Int32 | Nil
      getter usage : Int32 | Nil

      def initialize(
        link : Bytes | String | IO,
        admin_id : Int64,
        date : Int32,
        revoked : Bool | Nil = nil,
        permanent : Bool | Nil = nil,
        start_date : Int32 | Nil = nil,
        expire_date : Int32 | Nil = nil,
        usage_limit : Int32 | Nil = nil,
        usage : Int32 | Nil = nil
      )
        @link = link
        @admin_id = admin_id
        @date = date
        @revoked = revoked
        @permanent = permanent
        @start_date = start_date
        @expire_date = expire_date
        @usage_limit = usage_limit
        @usage = usage
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!revoked.nil? ? 1 : 0) |
            (!permanent.nil? ? 32 : 0) |
            (!start_date.nil? ? 16 : 0) |
            (!expire_date.nil? ? 2 : 0) |
            (!usage_limit.nil? ? 4 : 0) |
            (!usage.nil? ? 8 : 0)
        ).tl_serialize(io)
        @link.tl_serialize(io, true)
        @admin_id.tl_serialize(io, true)
        @date.tl_serialize(io, true)
        @start_date.tl_serialize(io, true) unless @start_date.nil?
        @expire_date.tl_serialize(io, true) unless @expire_date.nil?
        @usage_limit.tl_serialize(io, true) unless @usage_limit.nil?
        @usage.tl_serialize(io, true) unless @usage.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          link: Bytes.tl_deserialize(io, true),
          admin_id: Int64.tl_deserialize(io, true),
          date: Int32.tl_deserialize(io, true),
          revoked: flags & 1 == 1,
          permanent: flags & 32 == 1,
          start_date: flags & 16 == 1 ? Int32.tl_deserialize(io, true) : nil,
          expire_date: flags & 2 == 1 ? Int32.tl_deserialize(io, true) : nil,
          usage_limit: flags & 4 == 1 ? Int32.tl_deserialize(io, true) : nil,
          usage: flags & 8 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class ChatInviteAlready < TypeChatInvite
      CONSTRUCTOR_ID = 0x5A686D7C

      getter chat : Root::TypeChat

      def initialize(
        chat : Root::TypeChat
      )
        @chat = chat
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @chat.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          chat: Root::TypeChat.tl_deserialize(io, false),
        )
      end
    end

    class ChatInvite < TypeChatInvite
      CONSTRUCTOR_ID = 0xDFC2F58E

      getter title : Bytes
      getter photo : Root::TypePhoto
      getter participants_count : Int32
      getter channel : Bool | Nil
      getter broadcast : Bool | Nil
      getter public : Bool | Nil
      getter megagroup : Bool | Nil
      getter participants : Array(Root::TypeUser) | Nil

      def initialize(
        title : Bytes | String | IO,
        photo : Root::TypePhoto,
        participants_count : Int32,
        channel : Bool | Nil = nil,
        broadcast : Bool | Nil = nil,
        public : Bool | Nil = nil,
        megagroup : Bool | Nil = nil,
        participants : Array(Root::TypeUser) | Nil = nil
      )
        @title = title
        @photo = photo
        @participants_count = participants_count
        @channel = channel
        @broadcast = broadcast
        @public = public
        @megagroup = megagroup
        @participants = participants
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!channel.nil? ? 1 : 0) |
            (!broadcast.nil? ? 2 : 0) |
            (!public.nil? ? 4 : 0) |
            (!megagroup.nil? ? 8 : 0) |
            (!participants.nil? ? 16 : 0)
        ).tl_serialize(io)
        @title.tl_serialize(io, true)
        @photo.tl_serialize(io, false)
        @participants_count.tl_serialize(io, true)
        @participants.tl_serialize(io, false) unless @participants.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          title: Bytes.tl_deserialize(io, true),
          photo: Root::TypePhoto.tl_deserialize(io, false),
          participants_count: Int32.tl_deserialize(io, true),
          channel: flags & 1 == 1,
          broadcast: flags & 2 == 1,
          public: flags & 4 == 1,
          megagroup: flags & 8 == 1,
          participants: flags & 16 == 1 ? Array(Root::TypeUser).tl_deserialize(io, false) : nil,
        )
      end
    end

    class ChatInvitePeek < TypeChatInvite
      CONSTRUCTOR_ID = 0x61695CB0

      getter chat : Root::TypeChat
      getter expires : Int32

      def initialize(
        chat : Root::TypeChat,
        expires : Int32
      )
        @chat = chat
        @expires = expires
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @chat.tl_serialize(io, false)
        @expires.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          chat: Root::TypeChat.tl_deserialize(io, false),
          expires: Int32.tl_deserialize(io, true),
        )
      end
    end

    class InputStickerSetEmpty < TypeInputStickerSet
      CONSTRUCTOR_ID = 0xFFB62B95

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputStickerSetID < TypeInputStickerSet
      CONSTRUCTOR_ID = 0x9DE7A269

      getter id : Int64
      getter access_hash : Int64

      def initialize(
        id : Int64,
        access_hash : Int64
      )
        @id = id
        @access_hash = access_hash
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Int64.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
        )
      end
    end

    class InputStickerSetShortName < TypeInputStickerSet
      CONSTRUCTOR_ID = 0x861CC8A0

      getter short_name : Bytes

      def initialize(
        short_name : Bytes | String | IO
      )
        @short_name = short_name
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @short_name.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          short_name: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class InputStickerSetAnimatedEmoji < TypeInputStickerSet
      CONSTRUCTOR_ID = 0x028703C8

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputStickerSetDice < TypeInputStickerSet
      CONSTRUCTOR_ID = 0xE67F520E

      getter emoticon : Bytes

      def initialize(
        emoticon : Bytes | String | IO
      )
        @emoticon = emoticon
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @emoticon.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          emoticon: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class StickerSet < TypeStickerSet
      CONSTRUCTOR_ID = 0xD7DF217A

      getter id : Int64
      getter access_hash : Int64
      getter title : Bytes
      getter short_name : Bytes
      getter count : Int32
      getter hash : Int32
      getter archived : Bool | Nil
      getter official : Bool | Nil
      getter masks : Bool | Nil
      getter animated : Bool | Nil
      getter installed_date : Int32 | Nil
      getter thumbs : Array(Root::TypePhotoSize) | Nil
      getter thumb_dc_id : Int32 | Nil
      getter thumb_version : Int32 | Nil

      def initialize(
        id : Int64,
        access_hash : Int64,
        title : Bytes | String | IO,
        short_name : Bytes | String | IO,
        count : Int32,
        hash : Int32,
        archived : Bool | Nil = nil,
        official : Bool | Nil = nil,
        masks : Bool | Nil = nil,
        animated : Bool | Nil = nil,
        installed_date : Int32 | Nil = nil,
        thumbs : Array(Root::TypePhotoSize) | Nil = nil,
        thumb_dc_id : Int32 | Nil = nil,
        thumb_version : Int32 | Nil = nil
      )
        @id = id
        @access_hash = access_hash
        @title = title
        @short_name = short_name
        @count = count
        @hash = hash
        @archived = archived
        @official = official
        @masks = masks
        @animated = animated
        @installed_date = installed_date
        @thumbs = thumbs
        @thumb_dc_id = thumb_dc_id
        @thumb_version = thumb_version
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!archived.nil? ? 2 : 0) |
            (!official.nil? ? 4 : 0) |
            (!masks.nil? ? 8 : 0) |
            (!animated.nil? ? 32 : 0) |
            (!installed_date.nil? ? 1 : 0) |
            (!thumbs.nil? ? 16 : 0) |
            (!thumb_dc_id.nil? ? 16 : 0) |
            (!thumb_version.nil? ? 16 : 0)
        ).tl_serialize(io)
        @installed_date.tl_serialize(io, true) unless @installed_date.nil?
        @id.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true)
        @title.tl_serialize(io, true)
        @short_name.tl_serialize(io, true)
        @thumbs.tl_serialize(io, false) unless @thumbs.nil?
        @thumb_dc_id.tl_serialize(io, true) unless @thumb_dc_id.nil?
        @thumb_version.tl_serialize(io, true) unless @thumb_version.nil?
        @count.tl_serialize(io, true)
        @hash.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          id: Int64.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
          title: Bytes.tl_deserialize(io, true),
          short_name: Bytes.tl_deserialize(io, true),
          count: Int32.tl_deserialize(io, true),
          hash: Int32.tl_deserialize(io, true),
          archived: flags & 2 == 1,
          official: flags & 4 == 1,
          masks: flags & 8 == 1,
          animated: flags & 32 == 1,
          installed_date: flags & 1 == 1 ? Int32.tl_deserialize(io, true) : nil,
          thumbs: flags & 16 == 1 ? Array(Root::TypePhotoSize).tl_deserialize(io, false) : nil,
          thumb_dc_id: flags & 16 == 1 ? Int32.tl_deserialize(io, true) : nil,
          thumb_version: flags & 16 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class BotCommand < TypeBotCommand
      CONSTRUCTOR_ID = 0xC27AC8C7

      getter command : Bytes
      getter description : Bytes

      def initialize(
        command : Bytes | String | IO,
        description : Bytes | String | IO
      )
        @command = command
        @description = description
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @command.tl_serialize(io, true)
        @description.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          command: Bytes.tl_deserialize(io, true),
          description: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class BotInfo < TypeBotInfo
      CONSTRUCTOR_ID = 0x1B74B335

      getter user_id : Int64
      getter description : Bytes
      getter commands : Array(Root::TypeBotCommand)

      def initialize(
        user_id : Int64,
        description : Bytes | String | IO,
        commands : Array(Root::TypeBotCommand)
      )
        @user_id = user_id
        @description = description
        @commands = commands
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @user_id.tl_serialize(io, true)
        @description.tl_serialize(io, true)
        @commands.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          user_id: Int64.tl_deserialize(io, true),
          description: Bytes.tl_deserialize(io, true),
          commands: Array(Root::TypeBotCommand).tl_deserialize(io, false),
        )
      end
    end

    class KeyboardButton < TypeKeyboardButton
      CONSTRUCTOR_ID = 0xA2FA4880

      getter text : Bytes

      def initialize(
        text : Bytes | String | IO
      )
        @text = text
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @text.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          text: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class KeyboardButtonUrl < TypeKeyboardButton
      CONSTRUCTOR_ID = 0x258AFF05

      getter text : Bytes
      getter url : Bytes

      def initialize(
        text : Bytes | String | IO,
        url : Bytes | String | IO
      )
        @text = text
        @url = url
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @text.tl_serialize(io, true)
        @url.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          text: Bytes.tl_deserialize(io, true),
          url: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class KeyboardButtonCallback < TypeKeyboardButton
      CONSTRUCTOR_ID = 0x35BBDB6B

      getter text : Bytes
      getter data : Bytes
      getter requires_password : Bool | Nil

      def initialize(
        text : Bytes | String | IO,
        data : Bytes | String | IO,
        requires_password : Bool | Nil = nil
      )
        @text = text
        @data = TL::Utils.parse_bytes!(data)
        @requires_password = requires_password
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!requires_password.nil? ? 1 : 0)
        ).tl_serialize(io)
        @text.tl_serialize(io, true)
        @data.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          text: Bytes.tl_deserialize(io, true),
          data: Bytes.tl_deserialize(io, true),
          requires_password: flags & 1 == 1,
        )
      end
    end

    class KeyboardButtonRequestPhone < TypeKeyboardButton
      CONSTRUCTOR_ID = 0xB16A6C29

      getter text : Bytes

      def initialize(
        text : Bytes | String | IO
      )
        @text = text
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @text.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          text: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class KeyboardButtonRequestGeoLocation < TypeKeyboardButton
      CONSTRUCTOR_ID = 0xFC796B3F

      getter text : Bytes

      def initialize(
        text : Bytes | String | IO
      )
        @text = text
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @text.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          text: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class KeyboardButtonSwitchInline < TypeKeyboardButton
      CONSTRUCTOR_ID = 0x0568A748

      getter text : Bytes
      getter query : Bytes
      getter same_peer : Bool | Nil

      def initialize(
        text : Bytes | String | IO,
        query : Bytes | String | IO,
        same_peer : Bool | Nil = nil
      )
        @text = text
        @query = query
        @same_peer = same_peer
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!same_peer.nil? ? 1 : 0)
        ).tl_serialize(io)
        @text.tl_serialize(io, true)
        @query.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          text: Bytes.tl_deserialize(io, true),
          query: Bytes.tl_deserialize(io, true),
          same_peer: flags & 1 == 1,
        )
      end
    end

    class KeyboardButtonGame < TypeKeyboardButton
      CONSTRUCTOR_ID = 0x50F41CCF

      getter text : Bytes

      def initialize(
        text : Bytes | String | IO
      )
        @text = text
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @text.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          text: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class KeyboardButtonBuy < TypeKeyboardButton
      CONSTRUCTOR_ID = 0xAFD93FBB

      getter text : Bytes

      def initialize(
        text : Bytes | String | IO
      )
        @text = text
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @text.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          text: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class KeyboardButtonUrlAuth < TypeKeyboardButton
      CONSTRUCTOR_ID = 0x10B78D29

      getter text : Bytes
      getter url : Bytes
      getter button_id : Int32
      getter fwd_text : Bytes | Nil

      def initialize(
        text : Bytes | String | IO,
        url : Bytes | String | IO,
        button_id : Int32,
        fwd_text : Bytes | Nil = nil
      )
        @text = text
        @url = url
        @button_id = button_id
        @fwd_text = fwd_text
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!fwd_text.nil? ? 1 : 0)
        ).tl_serialize(io)
        @text.tl_serialize(io, true)
        @fwd_text.tl_serialize(io, true) unless @fwd_text.nil?
        @url.tl_serialize(io, true)
        @button_id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          text: Bytes.tl_deserialize(io, true),
          url: Bytes.tl_deserialize(io, true),
          button_id: Int32.tl_deserialize(io, true),
          fwd_text: flags & 1 == 1 ? Bytes.tl_deserialize(io, true) : nil,
        )
      end
    end

    class InputKeyboardButtonUrlAuth < TypeKeyboardButton
      CONSTRUCTOR_ID = 0xD02E7FD4

      getter text : Bytes
      getter url : Bytes
      getter bot : Root::TypeInputUser
      getter request_write_access : Bool | Nil
      getter fwd_text : Bytes | Nil

      def initialize(
        text : Bytes | String | IO,
        url : Bytes | String | IO,
        bot : Root::TypeInputUser,
        request_write_access : Bool | Nil = nil,
        fwd_text : Bytes | Nil = nil
      )
        @text = text
        @url = url
        @bot = bot
        @request_write_access = request_write_access
        @fwd_text = fwd_text
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!request_write_access.nil? ? 1 : 0) |
            (!fwd_text.nil? ? 2 : 0)
        ).tl_serialize(io)
        @text.tl_serialize(io, true)
        @fwd_text.tl_serialize(io, true) unless @fwd_text.nil?
        @url.tl_serialize(io, true)
        @bot.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          text: Bytes.tl_deserialize(io, true),
          url: Bytes.tl_deserialize(io, true),
          bot: Root::TypeInputUser.tl_deserialize(io, false),
          request_write_access: flags & 1 == 1,
          fwd_text: flags & 2 == 1 ? Bytes.tl_deserialize(io, true) : nil,
        )
      end
    end

    class KeyboardButtonRequestPoll < TypeKeyboardButton
      CONSTRUCTOR_ID = 0xBBC7515D

      getter text : Bytes
      getter quiz : Bool | Nil

      def initialize(
        text : Bytes | String | IO,
        quiz : Bool | Nil = nil
      )
        @text = text
        @quiz = quiz
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!quiz.nil? ? 1 : 0)
        ).tl_serialize(io)
        @quiz.tl_serialize(io, false) unless @quiz.nil?
        @text.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          text: Bytes.tl_deserialize(io, true),
          quiz: flags & 1 == 1 ? Bool.tl_deserialize(io, false) : nil,
        )
      end
    end

    class KeyboardButtonRow < TypeKeyboardButtonRow
      CONSTRUCTOR_ID = 0x77608B83

      getter buttons : Array(Root::TypeKeyboardButton)

      def initialize(
        buttons : Array(Root::TypeKeyboardButton)
      )
        @buttons = buttons
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @buttons.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          buttons: Array(Root::TypeKeyboardButton).tl_deserialize(io, false),
        )
      end
    end

    class ReplyKeyboardHide < TypeReplyMarkup
      CONSTRUCTOR_ID = 0xA03E5B85

      getter selective : Bool | Nil

      def initialize(
        selective : Bool | Nil = nil
      )
        @selective = selective
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!selective.nil? ? 4 : 0)
        ).tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          selective: flags & 4 == 1,
        )
      end
    end

    class ReplyKeyboardForceReply < TypeReplyMarkup
      CONSTRUCTOR_ID = 0x86B40B08

      getter single_use : Bool | Nil
      getter selective : Bool | Nil
      getter placeholder : Bytes | Nil

      def initialize(
        single_use : Bool | Nil = nil,
        selective : Bool | Nil = nil,
        placeholder : Bytes | Nil = nil
      )
        @single_use = single_use
        @selective = selective
        @placeholder = placeholder
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!single_use.nil? ? 2 : 0) |
            (!selective.nil? ? 4 : 0) |
            (!placeholder.nil? ? 8 : 0)
        ).tl_serialize(io)
        @placeholder.tl_serialize(io, true) unless @placeholder.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          single_use: flags & 2 == 1,
          selective: flags & 4 == 1,
          placeholder: flags & 8 == 1 ? Bytes.tl_deserialize(io, true) : nil,
        )
      end
    end

    class ReplyKeyboardMarkup < TypeReplyMarkup
      CONSTRUCTOR_ID = 0x85DD99D1

      getter rows : Array(Root::TypeKeyboardButtonRow)
      getter resize : Bool | Nil
      getter single_use : Bool | Nil
      getter selective : Bool | Nil
      getter placeholder : Bytes | Nil

      def initialize(
        rows : Array(Root::TypeKeyboardButtonRow),
        resize : Bool | Nil = nil,
        single_use : Bool | Nil = nil,
        selective : Bool | Nil = nil,
        placeholder : Bytes | Nil = nil
      )
        @rows = rows
        @resize = resize
        @single_use = single_use
        @selective = selective
        @placeholder = placeholder
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!resize.nil? ? 1 : 0) |
            (!single_use.nil? ? 2 : 0) |
            (!selective.nil? ? 4 : 0) |
            (!placeholder.nil? ? 8 : 0)
        ).tl_serialize(io)
        @rows.tl_serialize(io, false)
        @placeholder.tl_serialize(io, true) unless @placeholder.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          rows: Array(Root::TypeKeyboardButtonRow).tl_deserialize(io, false),
          resize: flags & 1 == 1,
          single_use: flags & 2 == 1,
          selective: flags & 4 == 1,
          placeholder: flags & 8 == 1 ? Bytes.tl_deserialize(io, true) : nil,
        )
      end
    end

    class ReplyInlineMarkup < TypeReplyMarkup
      CONSTRUCTOR_ID = 0x48A30254

      getter rows : Array(Root::TypeKeyboardButtonRow)

      def initialize(
        rows : Array(Root::TypeKeyboardButtonRow)
      )
        @rows = rows
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @rows.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          rows: Array(Root::TypeKeyboardButtonRow).tl_deserialize(io, false),
        )
      end
    end

    class MessageEntityUnknown < TypeMessageEntity
      CONSTRUCTOR_ID = 0xBB92BA95

      getter offset : Int32
      getter length : Int32

      def initialize(
        offset : Int32,
        length : Int32
      )
        @offset = offset
        @length = length
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @offset.tl_serialize(io, true)
        @length.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          offset: Int32.tl_deserialize(io, true),
          length: Int32.tl_deserialize(io, true),
        )
      end
    end

    class MessageEntityMention < TypeMessageEntity
      CONSTRUCTOR_ID = 0xFA04579D

      getter offset : Int32
      getter length : Int32

      def initialize(
        offset : Int32,
        length : Int32
      )
        @offset = offset
        @length = length
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @offset.tl_serialize(io, true)
        @length.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          offset: Int32.tl_deserialize(io, true),
          length: Int32.tl_deserialize(io, true),
        )
      end
    end

    class MessageEntityHashtag < TypeMessageEntity
      CONSTRUCTOR_ID = 0x6F635B0D

      getter offset : Int32
      getter length : Int32

      def initialize(
        offset : Int32,
        length : Int32
      )
        @offset = offset
        @length = length
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @offset.tl_serialize(io, true)
        @length.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          offset: Int32.tl_deserialize(io, true),
          length: Int32.tl_deserialize(io, true),
        )
      end
    end

    class MessageEntityBotCommand < TypeMessageEntity
      CONSTRUCTOR_ID = 0x6CEF8AC7

      getter offset : Int32
      getter length : Int32

      def initialize(
        offset : Int32,
        length : Int32
      )
        @offset = offset
        @length = length
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @offset.tl_serialize(io, true)
        @length.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          offset: Int32.tl_deserialize(io, true),
          length: Int32.tl_deserialize(io, true),
        )
      end
    end

    class MessageEntityUrl < TypeMessageEntity
      CONSTRUCTOR_ID = 0x6ED02538

      getter offset : Int32
      getter length : Int32

      def initialize(
        offset : Int32,
        length : Int32
      )
        @offset = offset
        @length = length
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @offset.tl_serialize(io, true)
        @length.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          offset: Int32.tl_deserialize(io, true),
          length: Int32.tl_deserialize(io, true),
        )
      end
    end

    class MessageEntityEmail < TypeMessageEntity
      CONSTRUCTOR_ID = 0x64E475C2

      getter offset : Int32
      getter length : Int32

      def initialize(
        offset : Int32,
        length : Int32
      )
        @offset = offset
        @length = length
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @offset.tl_serialize(io, true)
        @length.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          offset: Int32.tl_deserialize(io, true),
          length: Int32.tl_deserialize(io, true),
        )
      end
    end

    class MessageEntityBold < TypeMessageEntity
      CONSTRUCTOR_ID = 0xBD610BC9

      getter offset : Int32
      getter length : Int32

      def initialize(
        offset : Int32,
        length : Int32
      )
        @offset = offset
        @length = length
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @offset.tl_serialize(io, true)
        @length.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          offset: Int32.tl_deserialize(io, true),
          length: Int32.tl_deserialize(io, true),
        )
      end
    end

    class MessageEntityItalic < TypeMessageEntity
      CONSTRUCTOR_ID = 0x826F8B60

      getter offset : Int32
      getter length : Int32

      def initialize(
        offset : Int32,
        length : Int32
      )
        @offset = offset
        @length = length
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @offset.tl_serialize(io, true)
        @length.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          offset: Int32.tl_deserialize(io, true),
          length: Int32.tl_deserialize(io, true),
        )
      end
    end

    class MessageEntityCode < TypeMessageEntity
      CONSTRUCTOR_ID = 0x28A20571

      getter offset : Int32
      getter length : Int32

      def initialize(
        offset : Int32,
        length : Int32
      )
        @offset = offset
        @length = length
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @offset.tl_serialize(io, true)
        @length.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          offset: Int32.tl_deserialize(io, true),
          length: Int32.tl_deserialize(io, true),
        )
      end
    end

    class MessageEntityPre < TypeMessageEntity
      CONSTRUCTOR_ID = 0x73924BE0

      getter offset : Int32
      getter length : Int32
      getter language : Bytes

      def initialize(
        offset : Int32,
        length : Int32,
        language : Bytes | String | IO
      )
        @offset = offset
        @length = length
        @language = language
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @offset.tl_serialize(io, true)
        @length.tl_serialize(io, true)
        @language.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          offset: Int32.tl_deserialize(io, true),
          length: Int32.tl_deserialize(io, true),
          language: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class MessageEntityTextUrl < TypeMessageEntity
      CONSTRUCTOR_ID = 0x76A6D327

      getter offset : Int32
      getter length : Int32
      getter url : Bytes

      def initialize(
        offset : Int32,
        length : Int32,
        url : Bytes | String | IO
      )
        @offset = offset
        @length = length
        @url = url
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @offset.tl_serialize(io, true)
        @length.tl_serialize(io, true)
        @url.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          offset: Int32.tl_deserialize(io, true),
          length: Int32.tl_deserialize(io, true),
          url: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class MessageEntityMentionName < TypeMessageEntity
      CONSTRUCTOR_ID = 0xDC7B1140

      getter offset : Int32
      getter length : Int32
      getter user_id : Int64

      def initialize(
        offset : Int32,
        length : Int32,
        user_id : Int64
      )
        @offset = offset
        @length = length
        @user_id = user_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @offset.tl_serialize(io, true)
        @length.tl_serialize(io, true)
        @user_id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          offset: Int32.tl_deserialize(io, true),
          length: Int32.tl_deserialize(io, true),
          user_id: Int64.tl_deserialize(io, true),
        )
      end
    end

    class InputMessageEntityMentionName < TypeMessageEntity
      CONSTRUCTOR_ID = 0x208E68C9

      getter offset : Int32
      getter length : Int32
      getter user_id : Root::TypeInputUser

      def initialize(
        offset : Int32,
        length : Int32,
        user_id : Root::TypeInputUser
      )
        @offset = offset
        @length = length
        @user_id = user_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @offset.tl_serialize(io, true)
        @length.tl_serialize(io, true)
        @user_id.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          offset: Int32.tl_deserialize(io, true),
          length: Int32.tl_deserialize(io, true),
          user_id: Root::TypeInputUser.tl_deserialize(io, false),
        )
      end
    end

    class MessageEntityPhone < TypeMessageEntity
      CONSTRUCTOR_ID = 0x9B69E34B

      getter offset : Int32
      getter length : Int32

      def initialize(
        offset : Int32,
        length : Int32
      )
        @offset = offset
        @length = length
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @offset.tl_serialize(io, true)
        @length.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          offset: Int32.tl_deserialize(io, true),
          length: Int32.tl_deserialize(io, true),
        )
      end
    end

    class MessageEntityCashtag < TypeMessageEntity
      CONSTRUCTOR_ID = 0x4C4E743F

      getter offset : Int32
      getter length : Int32

      def initialize(
        offset : Int32,
        length : Int32
      )
        @offset = offset
        @length = length
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @offset.tl_serialize(io, true)
        @length.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          offset: Int32.tl_deserialize(io, true),
          length: Int32.tl_deserialize(io, true),
        )
      end
    end

    class MessageEntityUnderline < TypeMessageEntity
      CONSTRUCTOR_ID = 0x9C4E7E8B

      getter offset : Int32
      getter length : Int32

      def initialize(
        offset : Int32,
        length : Int32
      )
        @offset = offset
        @length = length
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @offset.tl_serialize(io, true)
        @length.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          offset: Int32.tl_deserialize(io, true),
          length: Int32.tl_deserialize(io, true),
        )
      end
    end

    class MessageEntityStrike < TypeMessageEntity
      CONSTRUCTOR_ID = 0xBF0693D4

      getter offset : Int32
      getter length : Int32

      def initialize(
        offset : Int32,
        length : Int32
      )
        @offset = offset
        @length = length
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @offset.tl_serialize(io, true)
        @length.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          offset: Int32.tl_deserialize(io, true),
          length: Int32.tl_deserialize(io, true),
        )
      end
    end

    class MessageEntityBlockquote < TypeMessageEntity
      CONSTRUCTOR_ID = 0x020DF5D0

      getter offset : Int32
      getter length : Int32

      def initialize(
        offset : Int32,
        length : Int32
      )
        @offset = offset
        @length = length
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @offset.tl_serialize(io, true)
        @length.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          offset: Int32.tl_deserialize(io, true),
          length: Int32.tl_deserialize(io, true),
        )
      end
    end

    class MessageEntityBankCard < TypeMessageEntity
      CONSTRUCTOR_ID = 0x761E6AF4

      getter offset : Int32
      getter length : Int32

      def initialize(
        offset : Int32,
        length : Int32
      )
        @offset = offset
        @length = length
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @offset.tl_serialize(io, true)
        @length.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          offset: Int32.tl_deserialize(io, true),
          length: Int32.tl_deserialize(io, true),
        )
      end
    end

    class InputChannelEmpty < TypeInputChannel
      CONSTRUCTOR_ID = 0xEE8C1E86

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputChannel < TypeInputChannel
      CONSTRUCTOR_ID = 0xF35AEC28

      getter channel_id : Int64
      getter access_hash : Int64

      def initialize(
        channel_id : Int64,
        access_hash : Int64
      )
        @channel_id = channel_id
        @access_hash = access_hash
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel_id.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          channel_id: Int64.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
        )
      end
    end

    class InputChannelFromMessage < TypeInputChannel
      CONSTRUCTOR_ID = 0x5B934F9D

      getter peer : Root::TypeInputPeer
      getter msg_id : Int32
      getter channel_id : Int64

      def initialize(
        peer : Root::TypeInputPeer,
        msg_id : Int32,
        channel_id : Int64
      )
        @peer = peer
        @msg_id = msg_id
        @channel_id = channel_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @peer.tl_serialize(io, false)
        @msg_id.tl_serialize(io, true)
        @channel_id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          peer: Root::TypeInputPeer.tl_deserialize(io, false),
          msg_id: Int32.tl_deserialize(io, true),
          channel_id: Int64.tl_deserialize(io, true),
        )
      end
    end

    class MessageRange < TypeMessageRange
      CONSTRUCTOR_ID = 0x0AE30253

      getter min_id : Int32
      getter max_id : Int32

      def initialize(
        min_id : Int32,
        max_id : Int32
      )
        @min_id = min_id
        @max_id = max_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @min_id.tl_serialize(io, true)
        @max_id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          min_id: Int32.tl_deserialize(io, true),
          max_id: Int32.tl_deserialize(io, true),
        )
      end
    end

    class ChannelMessagesFilterEmpty < TypeChannelMessagesFilter
      CONSTRUCTOR_ID = 0x94D42EE7

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class ChannelMessagesFilter < TypeChannelMessagesFilter
      CONSTRUCTOR_ID = 0xCD77D957

      getter ranges : Array(Root::TypeMessageRange)
      getter exclude_new_messages : Bool | Nil

      def initialize(
        ranges : Array(Root::TypeMessageRange),
        exclude_new_messages : Bool | Nil = nil
      )
        @ranges = ranges
        @exclude_new_messages = exclude_new_messages
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!exclude_new_messages.nil? ? 2 : 0)
        ).tl_serialize(io)
        @ranges.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          ranges: Array(Root::TypeMessageRange).tl_deserialize(io, false),
          exclude_new_messages: flags & 2 == 1,
        )
      end
    end

    class ChannelParticipant < TypeChannelParticipant
      CONSTRUCTOR_ID = 0xC00C07C0

      getter user_id : Int64
      getter date : Int32

      def initialize(
        user_id : Int64,
        date : Int32
      )
        @user_id = user_id
        @date = date
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @user_id.tl_serialize(io, true)
        @date.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          user_id: Int64.tl_deserialize(io, true),
          date: Int32.tl_deserialize(io, true),
        )
      end
    end

    class ChannelParticipantSelf < TypeChannelParticipant
      CONSTRUCTOR_ID = 0x28A8BC67

      getter user_id : Int64
      getter inviter_id : Int64
      getter date : Int32

      def initialize(
        user_id : Int64,
        inviter_id : Int64,
        date : Int32
      )
        @user_id = user_id
        @inviter_id = inviter_id
        @date = date
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @user_id.tl_serialize(io, true)
        @inviter_id.tl_serialize(io, true)
        @date.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          user_id: Int64.tl_deserialize(io, true),
          inviter_id: Int64.tl_deserialize(io, true),
          date: Int32.tl_deserialize(io, true),
        )
      end
    end

    class ChannelParticipantCreator < TypeChannelParticipant
      CONSTRUCTOR_ID = 0x2FE601D3

      getter user_id : Int64
      getter admin_rights : Root::TypeChatAdminRights
      getter rank : Bytes | Nil

      def initialize(
        user_id : Int64,
        admin_rights : Root::TypeChatAdminRights,
        rank : Bytes | Nil = nil
      )
        @user_id = user_id
        @admin_rights = admin_rights
        @rank = rank
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!rank.nil? ? 1 : 0)
        ).tl_serialize(io)
        @user_id.tl_serialize(io, true)
        @admin_rights.tl_serialize(io, false)
        @rank.tl_serialize(io, true) unless @rank.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          user_id: Int64.tl_deserialize(io, true),
          admin_rights: Root::TypeChatAdminRights.tl_deserialize(io, false),
          rank: flags & 1 == 1 ? Bytes.tl_deserialize(io, true) : nil,
        )
      end
    end

    class ChannelParticipantAdmin < TypeChannelParticipant
      CONSTRUCTOR_ID = 0x34C3BB53

      getter user_id : Int64
      getter promoted_by : Int64
      getter date : Int32
      getter admin_rights : Root::TypeChatAdminRights
      getter can_edit : Bool | Nil
      getter is_self : Bool | Nil
      getter inviter_id : Int64 | Nil
      getter rank : Bytes | Nil

      def initialize(
        user_id : Int64,
        promoted_by : Int64,
        date : Int32,
        admin_rights : Root::TypeChatAdminRights,
        can_edit : Bool | Nil = nil,
        is_self : Bool | Nil = nil,
        inviter_id : Int64 | Nil = nil,
        rank : Bytes | Nil = nil
      )
        @user_id = user_id
        @promoted_by = promoted_by
        @date = date
        @admin_rights = admin_rights
        @can_edit = can_edit
        @is_self = is_self
        @inviter_id = inviter_id
        @rank = rank
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!can_edit.nil? ? 1 : 0) |
            (!is_self.nil? ? 2 : 0) |
            (!inviter_id.nil? ? 2 : 0) |
            (!rank.nil? ? 4 : 0)
        ).tl_serialize(io)
        @user_id.tl_serialize(io, true)
        @inviter_id.tl_serialize(io, true) unless @inviter_id.nil?
        @promoted_by.tl_serialize(io, true)
        @date.tl_serialize(io, true)
        @admin_rights.tl_serialize(io, false)
        @rank.tl_serialize(io, true) unless @rank.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          user_id: Int64.tl_deserialize(io, true),
          promoted_by: Int64.tl_deserialize(io, true),
          date: Int32.tl_deserialize(io, true),
          admin_rights: Root::TypeChatAdminRights.tl_deserialize(io, false),
          can_edit: flags & 1 == 1,
          is_self: flags & 2 == 1,
          inviter_id: flags & 2 == 1 ? Int64.tl_deserialize(io, true) : nil,
          rank: flags & 4 == 1 ? Bytes.tl_deserialize(io, true) : nil,
        )
      end
    end

    class ChannelParticipantBanned < TypeChannelParticipant
      CONSTRUCTOR_ID = 0x6DF8014E

      getter peer : Root::TypePeer
      getter kicked_by : Int64
      getter date : Int32
      getter banned_rights : Root::TypeChatBannedRights
      getter left : Bool | Nil

      def initialize(
        peer : Root::TypePeer,
        kicked_by : Int64,
        date : Int32,
        banned_rights : Root::TypeChatBannedRights,
        left : Bool | Nil = nil
      )
        @peer = peer
        @kicked_by = kicked_by
        @date = date
        @banned_rights = banned_rights
        @left = left
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!left.nil? ? 1 : 0)
        ).tl_serialize(io)
        @peer.tl_serialize(io, false)
        @kicked_by.tl_serialize(io, true)
        @date.tl_serialize(io, true)
        @banned_rights.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          peer: Root::TypePeer.tl_deserialize(io, false),
          kicked_by: Int64.tl_deserialize(io, true),
          date: Int32.tl_deserialize(io, true),
          banned_rights: Root::TypeChatBannedRights.tl_deserialize(io, false),
          left: flags & 1 == 1,
        )
      end
    end

    class ChannelParticipantLeft < TypeChannelParticipant
      CONSTRUCTOR_ID = 0x1B03F006

      getter peer : Root::TypePeer

      def initialize(
        peer : Root::TypePeer
      )
        @peer = peer
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @peer.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          peer: Root::TypePeer.tl_deserialize(io, false),
        )
      end
    end

    class ChannelParticipantsRecent < TypeChannelParticipantsFilter
      CONSTRUCTOR_ID = 0xDE3F3C79

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class ChannelParticipantsAdmins < TypeChannelParticipantsFilter
      CONSTRUCTOR_ID = 0xB4608969

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class ChannelParticipantsKicked < TypeChannelParticipantsFilter
      CONSTRUCTOR_ID = 0xA3B54985

      getter q : Bytes

      def initialize(
        q : Bytes | String | IO
      )
        @q = q
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @q.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          q: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class ChannelParticipantsBots < TypeChannelParticipantsFilter
      CONSTRUCTOR_ID = 0xB0D1865B

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class ChannelParticipantsBanned < TypeChannelParticipantsFilter
      CONSTRUCTOR_ID = 0x1427A5E1

      getter q : Bytes

      def initialize(
        q : Bytes | String | IO
      )
        @q = q
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @q.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          q: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class ChannelParticipantsSearch < TypeChannelParticipantsFilter
      CONSTRUCTOR_ID = 0x0656AC4B

      getter q : Bytes

      def initialize(
        q : Bytes | String | IO
      )
        @q = q
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @q.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          q: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class ChannelParticipantsContacts < TypeChannelParticipantsFilter
      CONSTRUCTOR_ID = 0xBB6AE88D

      getter q : Bytes

      def initialize(
        q : Bytes | String | IO
      )
        @q = q
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @q.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          q: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class ChannelParticipantsMentions < TypeChannelParticipantsFilter
      CONSTRUCTOR_ID = 0xE04B5CEB

      getter q : Bytes | Nil
      getter top_msg_id : Int32 | Nil

      def initialize(
        q : Bytes | Nil = nil,
        top_msg_id : Int32 | Nil = nil
      )
        @q = q
        @top_msg_id = top_msg_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!q.nil? ? 1 : 0) |
            (!top_msg_id.nil? ? 2 : 0)
        ).tl_serialize(io)
        @q.tl_serialize(io, true) unless @q.nil?
        @top_msg_id.tl_serialize(io, true) unless @top_msg_id.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          q: flags & 1 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          top_msg_id: flags & 2 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class InputBotInlineMessageMediaAuto < TypeInputBotInlineMessage
      CONSTRUCTOR_ID = 0x3380C786

      getter message : Bytes
      getter entities : Array(Root::TypeMessageEntity) | Nil
      getter reply_markup : Root::TypeReplyMarkup | Nil

      def initialize(
        message : Bytes | String | IO,
        entities : Array(Root::TypeMessageEntity) | Nil = nil,
        reply_markup : Root::TypeReplyMarkup | Nil = nil
      )
        @message = message
        @entities = entities
        @reply_markup = reply_markup
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!entities.nil? ? 2 : 0) |
            (!reply_markup.nil? ? 4 : 0)
        ).tl_serialize(io)
        @message.tl_serialize(io, true)
        @entities.tl_serialize(io, false) unless @entities.nil?
        @reply_markup.tl_serialize(io, false) unless @reply_markup.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          message: Bytes.tl_deserialize(io, true),
          entities: flags & 2 == 1 ? Array(Root::TypeMessageEntity).tl_deserialize(io, false) : nil,
          reply_markup: flags & 4 == 1 ? Root::TypeReplyMarkup.tl_deserialize(io, false) : nil,
        )
      end
    end

    class InputBotInlineMessageText < TypeInputBotInlineMessage
      CONSTRUCTOR_ID = 0x3DCD7A87

      getter message : Bytes
      getter no_webpage : Bool | Nil
      getter entities : Array(Root::TypeMessageEntity) | Nil
      getter reply_markup : Root::TypeReplyMarkup | Nil

      def initialize(
        message : Bytes | String | IO,
        no_webpage : Bool | Nil = nil,
        entities : Array(Root::TypeMessageEntity) | Nil = nil,
        reply_markup : Root::TypeReplyMarkup | Nil = nil
      )
        @message = message
        @no_webpage = no_webpage
        @entities = entities
        @reply_markup = reply_markup
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!no_webpage.nil? ? 1 : 0) |
            (!entities.nil? ? 2 : 0) |
            (!reply_markup.nil? ? 4 : 0)
        ).tl_serialize(io)
        @message.tl_serialize(io, true)
        @entities.tl_serialize(io, false) unless @entities.nil?
        @reply_markup.tl_serialize(io, false) unless @reply_markup.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          message: Bytes.tl_deserialize(io, true),
          no_webpage: flags & 1 == 1,
          entities: flags & 2 == 1 ? Array(Root::TypeMessageEntity).tl_deserialize(io, false) : nil,
          reply_markup: flags & 4 == 1 ? Root::TypeReplyMarkup.tl_deserialize(io, false) : nil,
        )
      end
    end

    class InputBotInlineMessageMediaGeo < TypeInputBotInlineMessage
      CONSTRUCTOR_ID = 0x96929A85

      getter geo_point : Root::TypeInputGeoPoint
      getter heading : Int32 | Nil
      getter period : Int32 | Nil
      getter proximity_notification_radius : Int32 | Nil
      getter reply_markup : Root::TypeReplyMarkup | Nil

      def initialize(
        geo_point : Root::TypeInputGeoPoint,
        heading : Int32 | Nil = nil,
        period : Int32 | Nil = nil,
        proximity_notification_radius : Int32 | Nil = nil,
        reply_markup : Root::TypeReplyMarkup | Nil = nil
      )
        @geo_point = geo_point
        @heading = heading
        @period = period
        @proximity_notification_radius = proximity_notification_radius
        @reply_markup = reply_markup
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!heading.nil? ? 1 : 0) |
            (!period.nil? ? 2 : 0) |
            (!proximity_notification_radius.nil? ? 8 : 0) |
            (!reply_markup.nil? ? 4 : 0)
        ).tl_serialize(io)
        @geo_point.tl_serialize(io, false)
        @heading.tl_serialize(io, true) unless @heading.nil?
        @period.tl_serialize(io, true) unless @period.nil?
        @proximity_notification_radius.tl_serialize(io, true) unless @proximity_notification_radius.nil?
        @reply_markup.tl_serialize(io, false) unless @reply_markup.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          geo_point: Root::TypeInputGeoPoint.tl_deserialize(io, false),
          heading: flags & 1 == 1 ? Int32.tl_deserialize(io, true) : nil,
          period: flags & 2 == 1 ? Int32.tl_deserialize(io, true) : nil,
          proximity_notification_radius: flags & 8 == 1 ? Int32.tl_deserialize(io, true) : nil,
          reply_markup: flags & 4 == 1 ? Root::TypeReplyMarkup.tl_deserialize(io, false) : nil,
        )
      end
    end

    class InputBotInlineMessageMediaVenue < TypeInputBotInlineMessage
      CONSTRUCTOR_ID = 0x417BBF11

      getter geo_point : Root::TypeInputGeoPoint
      getter title : Bytes
      getter address : Bytes
      getter provider : Bytes
      getter venue_id : Bytes
      getter venue_type : Bytes
      getter reply_markup : Root::TypeReplyMarkup | Nil

      def initialize(
        geo_point : Root::TypeInputGeoPoint,
        title : Bytes | String | IO,
        address : Bytes | String | IO,
        provider : Bytes | String | IO,
        venue_id : Bytes | String | IO,
        venue_type : Bytes | String | IO,
        reply_markup : Root::TypeReplyMarkup | Nil = nil
      )
        @geo_point = geo_point
        @title = title
        @address = address
        @provider = provider
        @venue_id = venue_id
        @venue_type = venue_type
        @reply_markup = reply_markup
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!reply_markup.nil? ? 4 : 0)
        ).tl_serialize(io)
        @geo_point.tl_serialize(io, false)
        @title.tl_serialize(io, true)
        @address.tl_serialize(io, true)
        @provider.tl_serialize(io, true)
        @venue_id.tl_serialize(io, true)
        @venue_type.tl_serialize(io, true)
        @reply_markup.tl_serialize(io, false) unless @reply_markup.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          geo_point: Root::TypeInputGeoPoint.tl_deserialize(io, false),
          title: Bytes.tl_deserialize(io, true),
          address: Bytes.tl_deserialize(io, true),
          provider: Bytes.tl_deserialize(io, true),
          venue_id: Bytes.tl_deserialize(io, true),
          venue_type: Bytes.tl_deserialize(io, true),
          reply_markup: flags & 4 == 1 ? Root::TypeReplyMarkup.tl_deserialize(io, false) : nil,
        )
      end
    end

    class InputBotInlineMessageMediaContact < TypeInputBotInlineMessage
      CONSTRUCTOR_ID = 0xA6EDBFFD

      getter phone_number : Bytes
      getter first_name : Bytes
      getter last_name : Bytes
      getter vcard : Bytes
      getter reply_markup : Root::TypeReplyMarkup | Nil

      def initialize(
        phone_number : Bytes | String | IO,
        first_name : Bytes | String | IO,
        last_name : Bytes | String | IO,
        vcard : Bytes | String | IO,
        reply_markup : Root::TypeReplyMarkup | Nil = nil
      )
        @phone_number = phone_number
        @first_name = first_name
        @last_name = last_name
        @vcard = vcard
        @reply_markup = reply_markup
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!reply_markup.nil? ? 4 : 0)
        ).tl_serialize(io)
        @phone_number.tl_serialize(io, true)
        @first_name.tl_serialize(io, true)
        @last_name.tl_serialize(io, true)
        @vcard.tl_serialize(io, true)
        @reply_markup.tl_serialize(io, false) unless @reply_markup.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          phone_number: Bytes.tl_deserialize(io, true),
          first_name: Bytes.tl_deserialize(io, true),
          last_name: Bytes.tl_deserialize(io, true),
          vcard: Bytes.tl_deserialize(io, true),
          reply_markup: flags & 4 == 1 ? Root::TypeReplyMarkup.tl_deserialize(io, false) : nil,
        )
      end
    end

    class InputBotInlineMessageGame < TypeInputBotInlineMessage
      CONSTRUCTOR_ID = 0x4B425864

      getter reply_markup : Root::TypeReplyMarkup | Nil

      def initialize(
        reply_markup : Root::TypeReplyMarkup | Nil = nil
      )
        @reply_markup = reply_markup
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!reply_markup.nil? ? 4 : 0)
        ).tl_serialize(io)
        @reply_markup.tl_serialize(io, false) unless @reply_markup.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          reply_markup: flags & 4 == 1 ? Root::TypeReplyMarkup.tl_deserialize(io, false) : nil,
        )
      end
    end

    class InputBotInlineMessageMediaInvoice < TypeInputBotInlineMessage
      CONSTRUCTOR_ID = 0xD7E78225

      getter title : Bytes
      getter description : Bytes
      getter invoice : Root::TypeInvoice
      getter payload : Bytes
      getter provider : Bytes
      getter provider_data : Root::TypeDataJSON
      getter photo : Root::TypeInputWebDocument | Nil
      getter reply_markup : Root::TypeReplyMarkup | Nil

      def initialize(
        title : Bytes | String | IO,
        description : Bytes | String | IO,
        invoice : Root::TypeInvoice,
        payload : Bytes | String | IO,
        provider : Bytes | String | IO,
        provider_data : Root::TypeDataJSON,
        photo : Root::TypeInputWebDocument | Nil = nil,
        reply_markup : Root::TypeReplyMarkup | Nil = nil
      )
        @title = title
        @description = description
        @invoice = invoice
        @payload = TL::Utils.parse_bytes!(payload)
        @provider = provider
        @provider_data = provider_data
        @photo = photo
        @reply_markup = reply_markup
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!photo.nil? ? 1 : 0) |
            (!reply_markup.nil? ? 4 : 0)
        ).tl_serialize(io)
        @title.tl_serialize(io, true)
        @description.tl_serialize(io, true)
        @photo.tl_serialize(io, false) unless @photo.nil?
        @invoice.tl_serialize(io, false)
        @payload.tl_serialize(io, true)
        @provider.tl_serialize(io, true)
        @provider_data.tl_serialize(io, false)
        @reply_markup.tl_serialize(io, false) unless @reply_markup.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          title: Bytes.tl_deserialize(io, true),
          description: Bytes.tl_deserialize(io, true),
          invoice: Root::TypeInvoice.tl_deserialize(io, false),
          payload: Bytes.tl_deserialize(io, true),
          provider: Bytes.tl_deserialize(io, true),
          provider_data: Root::TypeDataJSON.tl_deserialize(io, false),
          photo: flags & 1 == 1 ? Root::TypeInputWebDocument.tl_deserialize(io, false) : nil,
          reply_markup: flags & 4 == 1 ? Root::TypeReplyMarkup.tl_deserialize(io, false) : nil,
        )
      end
    end

    class InputBotInlineResult < TypeInputBotInlineResult
      CONSTRUCTOR_ID = 0x88BF9319

      getter id : Bytes
      getter type : Bytes
      getter send_message : Root::TypeInputBotInlineMessage
      getter title : Bytes | Nil
      getter description : Bytes | Nil
      getter url : Bytes | Nil
      getter thumb : Root::TypeInputWebDocument | Nil
      getter content : Root::TypeInputWebDocument | Nil

      def initialize(
        id : Bytes | String | IO,
        type : Bytes | String | IO,
        send_message : Root::TypeInputBotInlineMessage,
        title : Bytes | Nil = nil,
        description : Bytes | Nil = nil,
        url : Bytes | Nil = nil,
        thumb : Root::TypeInputWebDocument | Nil = nil,
        content : Root::TypeInputWebDocument | Nil = nil
      )
        @id = id
        @type = type
        @send_message = send_message
        @title = title
        @description = description
        @url = url
        @thumb = thumb
        @content = content
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!title.nil? ? 2 : 0) |
            (!description.nil? ? 4 : 0) |
            (!url.nil? ? 8 : 0) |
            (!thumb.nil? ? 16 : 0) |
            (!content.nil? ? 32 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io, true)
        @type.tl_serialize(io, true)
        @title.tl_serialize(io, true) unless @title.nil?
        @description.tl_serialize(io, true) unless @description.nil?
        @url.tl_serialize(io, true) unless @url.nil?
        @thumb.tl_serialize(io, false) unless @thumb.nil?
        @content.tl_serialize(io, false) unless @content.nil?
        @send_message.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          id: Bytes.tl_deserialize(io, true),
          type: Bytes.tl_deserialize(io, true),
          send_message: Root::TypeInputBotInlineMessage.tl_deserialize(io, false),
          title: flags & 2 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          description: flags & 4 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          url: flags & 8 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          thumb: flags & 16 == 1 ? Root::TypeInputWebDocument.tl_deserialize(io, false) : nil,
          content: flags & 32 == 1 ? Root::TypeInputWebDocument.tl_deserialize(io, false) : nil,
        )
      end
    end

    class InputBotInlineResultPhoto < TypeInputBotInlineResult
      CONSTRUCTOR_ID = 0xA8D864A7

      getter id : Bytes
      getter type : Bytes
      getter photo : Root::TypeInputPhoto
      getter send_message : Root::TypeInputBotInlineMessage

      def initialize(
        id : Bytes | String | IO,
        type : Bytes | String | IO,
        photo : Root::TypeInputPhoto,
        send_message : Root::TypeInputBotInlineMessage
      )
        @id = id
        @type = type
        @photo = photo
        @send_message = send_message
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        @type.tl_serialize(io, true)
        @photo.tl_serialize(io, false)
        @send_message.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Bytes.tl_deserialize(io, true),
          type: Bytes.tl_deserialize(io, true),
          photo: Root::TypeInputPhoto.tl_deserialize(io, false),
          send_message: Root::TypeInputBotInlineMessage.tl_deserialize(io, false),
        )
      end
    end

    class InputBotInlineResultDocument < TypeInputBotInlineResult
      CONSTRUCTOR_ID = 0xFFF8FDC4

      getter id : Bytes
      getter type : Bytes
      getter document : Root::TypeInputDocument
      getter send_message : Root::TypeInputBotInlineMessage
      getter title : Bytes | Nil
      getter description : Bytes | Nil

      def initialize(
        id : Bytes | String | IO,
        type : Bytes | String | IO,
        document : Root::TypeInputDocument,
        send_message : Root::TypeInputBotInlineMessage,
        title : Bytes | Nil = nil,
        description : Bytes | Nil = nil
      )
        @id = id
        @type = type
        @document = document
        @send_message = send_message
        @title = title
        @description = description
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!title.nil? ? 2 : 0) |
            (!description.nil? ? 4 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io, true)
        @type.tl_serialize(io, true)
        @title.tl_serialize(io, true) unless @title.nil?
        @description.tl_serialize(io, true) unless @description.nil?
        @document.tl_serialize(io, false)
        @send_message.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          id: Bytes.tl_deserialize(io, true),
          type: Bytes.tl_deserialize(io, true),
          document: Root::TypeInputDocument.tl_deserialize(io, false),
          send_message: Root::TypeInputBotInlineMessage.tl_deserialize(io, false),
          title: flags & 2 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          description: flags & 4 == 1 ? Bytes.tl_deserialize(io, true) : nil,
        )
      end
    end

    class InputBotInlineResultGame < TypeInputBotInlineResult
      CONSTRUCTOR_ID = 0x4FA417F2

      getter id : Bytes
      getter short_name : Bytes
      getter send_message : Root::TypeInputBotInlineMessage

      def initialize(
        id : Bytes | String | IO,
        short_name : Bytes | String | IO,
        send_message : Root::TypeInputBotInlineMessage
      )
        @id = id
        @short_name = short_name
        @send_message = send_message
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        @short_name.tl_serialize(io, true)
        @send_message.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Bytes.tl_deserialize(io, true),
          short_name: Bytes.tl_deserialize(io, true),
          send_message: Root::TypeInputBotInlineMessage.tl_deserialize(io, false),
        )
      end
    end

    class BotInlineMessageMediaAuto < TypeBotInlineMessage
      CONSTRUCTOR_ID = 0x764CF810

      getter message : Bytes
      getter entities : Array(Root::TypeMessageEntity) | Nil
      getter reply_markup : Root::TypeReplyMarkup | Nil

      def initialize(
        message : Bytes | String | IO,
        entities : Array(Root::TypeMessageEntity) | Nil = nil,
        reply_markup : Root::TypeReplyMarkup | Nil = nil
      )
        @message = message
        @entities = entities
        @reply_markup = reply_markup
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!entities.nil? ? 2 : 0) |
            (!reply_markup.nil? ? 4 : 0)
        ).tl_serialize(io)
        @message.tl_serialize(io, true)
        @entities.tl_serialize(io, false) unless @entities.nil?
        @reply_markup.tl_serialize(io, false) unless @reply_markup.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          message: Bytes.tl_deserialize(io, true),
          entities: flags & 2 == 1 ? Array(Root::TypeMessageEntity).tl_deserialize(io, false) : nil,
          reply_markup: flags & 4 == 1 ? Root::TypeReplyMarkup.tl_deserialize(io, false) : nil,
        )
      end
    end

    class BotInlineMessageText < TypeBotInlineMessage
      CONSTRUCTOR_ID = 0x8C7F65E2

      getter message : Bytes
      getter no_webpage : Bool | Nil
      getter entities : Array(Root::TypeMessageEntity) | Nil
      getter reply_markup : Root::TypeReplyMarkup | Nil

      def initialize(
        message : Bytes | String | IO,
        no_webpage : Bool | Nil = nil,
        entities : Array(Root::TypeMessageEntity) | Nil = nil,
        reply_markup : Root::TypeReplyMarkup | Nil = nil
      )
        @message = message
        @no_webpage = no_webpage
        @entities = entities
        @reply_markup = reply_markup
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!no_webpage.nil? ? 1 : 0) |
            (!entities.nil? ? 2 : 0) |
            (!reply_markup.nil? ? 4 : 0)
        ).tl_serialize(io)
        @message.tl_serialize(io, true)
        @entities.tl_serialize(io, false) unless @entities.nil?
        @reply_markup.tl_serialize(io, false) unless @reply_markup.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          message: Bytes.tl_deserialize(io, true),
          no_webpage: flags & 1 == 1,
          entities: flags & 2 == 1 ? Array(Root::TypeMessageEntity).tl_deserialize(io, false) : nil,
          reply_markup: flags & 4 == 1 ? Root::TypeReplyMarkup.tl_deserialize(io, false) : nil,
        )
      end
    end

    class BotInlineMessageMediaGeo < TypeBotInlineMessage
      CONSTRUCTOR_ID = 0x051846FD

      getter geo : Root::TypeGeoPoint
      getter heading : Int32 | Nil
      getter period : Int32 | Nil
      getter proximity_notification_radius : Int32 | Nil
      getter reply_markup : Root::TypeReplyMarkup | Nil

      def initialize(
        geo : Root::TypeGeoPoint,
        heading : Int32 | Nil = nil,
        period : Int32 | Nil = nil,
        proximity_notification_radius : Int32 | Nil = nil,
        reply_markup : Root::TypeReplyMarkup | Nil = nil
      )
        @geo = geo
        @heading = heading
        @period = period
        @proximity_notification_radius = proximity_notification_radius
        @reply_markup = reply_markup
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!heading.nil? ? 1 : 0) |
            (!period.nil? ? 2 : 0) |
            (!proximity_notification_radius.nil? ? 8 : 0) |
            (!reply_markup.nil? ? 4 : 0)
        ).tl_serialize(io)
        @geo.tl_serialize(io, false)
        @heading.tl_serialize(io, true) unless @heading.nil?
        @period.tl_serialize(io, true) unless @period.nil?
        @proximity_notification_radius.tl_serialize(io, true) unless @proximity_notification_radius.nil?
        @reply_markup.tl_serialize(io, false) unless @reply_markup.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          geo: Root::TypeGeoPoint.tl_deserialize(io, false),
          heading: flags & 1 == 1 ? Int32.tl_deserialize(io, true) : nil,
          period: flags & 2 == 1 ? Int32.tl_deserialize(io, true) : nil,
          proximity_notification_radius: flags & 8 == 1 ? Int32.tl_deserialize(io, true) : nil,
          reply_markup: flags & 4 == 1 ? Root::TypeReplyMarkup.tl_deserialize(io, false) : nil,
        )
      end
    end

    class BotInlineMessageMediaVenue < TypeBotInlineMessage
      CONSTRUCTOR_ID = 0x8A86659C

      getter geo : Root::TypeGeoPoint
      getter title : Bytes
      getter address : Bytes
      getter provider : Bytes
      getter venue_id : Bytes
      getter venue_type : Bytes
      getter reply_markup : Root::TypeReplyMarkup | Nil

      def initialize(
        geo : Root::TypeGeoPoint,
        title : Bytes | String | IO,
        address : Bytes | String | IO,
        provider : Bytes | String | IO,
        venue_id : Bytes | String | IO,
        venue_type : Bytes | String | IO,
        reply_markup : Root::TypeReplyMarkup | Nil = nil
      )
        @geo = geo
        @title = title
        @address = address
        @provider = provider
        @venue_id = venue_id
        @venue_type = venue_type
        @reply_markup = reply_markup
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!reply_markup.nil? ? 4 : 0)
        ).tl_serialize(io)
        @geo.tl_serialize(io, false)
        @title.tl_serialize(io, true)
        @address.tl_serialize(io, true)
        @provider.tl_serialize(io, true)
        @venue_id.tl_serialize(io, true)
        @venue_type.tl_serialize(io, true)
        @reply_markup.tl_serialize(io, false) unless @reply_markup.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          geo: Root::TypeGeoPoint.tl_deserialize(io, false),
          title: Bytes.tl_deserialize(io, true),
          address: Bytes.tl_deserialize(io, true),
          provider: Bytes.tl_deserialize(io, true),
          venue_id: Bytes.tl_deserialize(io, true),
          venue_type: Bytes.tl_deserialize(io, true),
          reply_markup: flags & 4 == 1 ? Root::TypeReplyMarkup.tl_deserialize(io, false) : nil,
        )
      end
    end

    class BotInlineMessageMediaContact < TypeBotInlineMessage
      CONSTRUCTOR_ID = 0x18D1CDC2

      getter phone_number : Bytes
      getter first_name : Bytes
      getter last_name : Bytes
      getter vcard : Bytes
      getter reply_markup : Root::TypeReplyMarkup | Nil

      def initialize(
        phone_number : Bytes | String | IO,
        first_name : Bytes | String | IO,
        last_name : Bytes | String | IO,
        vcard : Bytes | String | IO,
        reply_markup : Root::TypeReplyMarkup | Nil = nil
      )
        @phone_number = phone_number
        @first_name = first_name
        @last_name = last_name
        @vcard = vcard
        @reply_markup = reply_markup
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!reply_markup.nil? ? 4 : 0)
        ).tl_serialize(io)
        @phone_number.tl_serialize(io, true)
        @first_name.tl_serialize(io, true)
        @last_name.tl_serialize(io, true)
        @vcard.tl_serialize(io, true)
        @reply_markup.tl_serialize(io, false) unless @reply_markup.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          phone_number: Bytes.tl_deserialize(io, true),
          first_name: Bytes.tl_deserialize(io, true),
          last_name: Bytes.tl_deserialize(io, true),
          vcard: Bytes.tl_deserialize(io, true),
          reply_markup: flags & 4 == 1 ? Root::TypeReplyMarkup.tl_deserialize(io, false) : nil,
        )
      end
    end

    class BotInlineMessageMediaInvoice < TypeBotInlineMessage
      CONSTRUCTOR_ID = 0x354A9B09

      getter title : Bytes
      getter description : Bytes
      getter currency : Bytes
      getter total_amount : Int64
      getter shipping_address_requested : Bool | Nil
      getter test : Bool | Nil
      getter photo : Root::TypeWebDocument | Nil
      getter reply_markup : Root::TypeReplyMarkup | Nil

      def initialize(
        title : Bytes | String | IO,
        description : Bytes | String | IO,
        currency : Bytes | String | IO,
        total_amount : Int64,
        shipping_address_requested : Bool | Nil = nil,
        test : Bool | Nil = nil,
        photo : Root::TypeWebDocument | Nil = nil,
        reply_markup : Root::TypeReplyMarkup | Nil = nil
      )
        @title = title
        @description = description
        @currency = currency
        @total_amount = total_amount
        @shipping_address_requested = shipping_address_requested
        @test = test
        @photo = photo
        @reply_markup = reply_markup
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!shipping_address_requested.nil? ? 2 : 0) |
            (!test.nil? ? 8 : 0) |
            (!photo.nil? ? 1 : 0) |
            (!reply_markup.nil? ? 4 : 0)
        ).tl_serialize(io)
        @title.tl_serialize(io, true)
        @description.tl_serialize(io, true)
        @photo.tl_serialize(io, false) unless @photo.nil?
        @currency.tl_serialize(io, true)
        @total_amount.tl_serialize(io, true)
        @reply_markup.tl_serialize(io, false) unless @reply_markup.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          title: Bytes.tl_deserialize(io, true),
          description: Bytes.tl_deserialize(io, true),
          currency: Bytes.tl_deserialize(io, true),
          total_amount: Int64.tl_deserialize(io, true),
          shipping_address_requested: flags & 2 == 1,
          test: flags & 8 == 1,
          photo: flags & 1 == 1 ? Root::TypeWebDocument.tl_deserialize(io, false) : nil,
          reply_markup: flags & 4 == 1 ? Root::TypeReplyMarkup.tl_deserialize(io, false) : nil,
        )
      end
    end

    class BotInlineResult < TypeBotInlineResult
      CONSTRUCTOR_ID = 0x11965F3A

      getter id : Bytes
      getter type : Bytes
      getter send_message : Root::TypeBotInlineMessage
      getter title : Bytes | Nil
      getter description : Bytes | Nil
      getter url : Bytes | Nil
      getter thumb : Root::TypeWebDocument | Nil
      getter content : Root::TypeWebDocument | Nil

      def initialize(
        id : Bytes | String | IO,
        type : Bytes | String | IO,
        send_message : Root::TypeBotInlineMessage,
        title : Bytes | Nil = nil,
        description : Bytes | Nil = nil,
        url : Bytes | Nil = nil,
        thumb : Root::TypeWebDocument | Nil = nil,
        content : Root::TypeWebDocument | Nil = nil
      )
        @id = id
        @type = type
        @send_message = send_message
        @title = title
        @description = description
        @url = url
        @thumb = thumb
        @content = content
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!title.nil? ? 2 : 0) |
            (!description.nil? ? 4 : 0) |
            (!url.nil? ? 8 : 0) |
            (!thumb.nil? ? 16 : 0) |
            (!content.nil? ? 32 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io, true)
        @type.tl_serialize(io, true)
        @title.tl_serialize(io, true) unless @title.nil?
        @description.tl_serialize(io, true) unless @description.nil?
        @url.tl_serialize(io, true) unless @url.nil?
        @thumb.tl_serialize(io, false) unless @thumb.nil?
        @content.tl_serialize(io, false) unless @content.nil?
        @send_message.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          id: Bytes.tl_deserialize(io, true),
          type: Bytes.tl_deserialize(io, true),
          send_message: Root::TypeBotInlineMessage.tl_deserialize(io, false),
          title: flags & 2 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          description: flags & 4 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          url: flags & 8 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          thumb: flags & 16 == 1 ? Root::TypeWebDocument.tl_deserialize(io, false) : nil,
          content: flags & 32 == 1 ? Root::TypeWebDocument.tl_deserialize(io, false) : nil,
        )
      end
    end

    class BotInlineMediaResult < TypeBotInlineResult
      CONSTRUCTOR_ID = 0x17DB940B

      getter id : Bytes
      getter type : Bytes
      getter send_message : Root::TypeBotInlineMessage
      getter photo : Root::TypePhoto | Nil
      getter document : Root::TypeDocument | Nil
      getter title : Bytes | Nil
      getter description : Bytes | Nil

      def initialize(
        id : Bytes | String | IO,
        type : Bytes | String | IO,
        send_message : Root::TypeBotInlineMessage,
        photo : Root::TypePhoto | Nil = nil,
        document : Root::TypeDocument | Nil = nil,
        title : Bytes | Nil = nil,
        description : Bytes | Nil = nil
      )
        @id = id
        @type = type
        @send_message = send_message
        @photo = photo
        @document = document
        @title = title
        @description = description
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!photo.nil? ? 1 : 0) |
            (!document.nil? ? 2 : 0) |
            (!title.nil? ? 4 : 0) |
            (!description.nil? ? 8 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io, true)
        @type.tl_serialize(io, true)
        @photo.tl_serialize(io, false) unless @photo.nil?
        @document.tl_serialize(io, false) unless @document.nil?
        @title.tl_serialize(io, true) unless @title.nil?
        @description.tl_serialize(io, true) unless @description.nil?
        @send_message.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          id: Bytes.tl_deserialize(io, true),
          type: Bytes.tl_deserialize(io, true),
          send_message: Root::TypeBotInlineMessage.tl_deserialize(io, false),
          photo: flags & 1 == 1 ? Root::TypePhoto.tl_deserialize(io, false) : nil,
          document: flags & 2 == 1 ? Root::TypeDocument.tl_deserialize(io, false) : nil,
          title: flags & 4 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          description: flags & 8 == 1 ? Bytes.tl_deserialize(io, true) : nil,
        )
      end
    end

    class ExportedMessageLink < TypeExportedMessageLink
      CONSTRUCTOR_ID = 0x5DAB1AF4

      getter link : Bytes
      getter html : Bytes

      def initialize(
        link : Bytes | String | IO,
        html : Bytes | String | IO
      )
        @link = link
        @html = html
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @link.tl_serialize(io, true)
        @html.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          link: Bytes.tl_deserialize(io, true),
          html: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class MessageFwdHeader < TypeMessageFwdHeader
      CONSTRUCTOR_ID = 0x5F777DCE

      getter date : Int32
      getter imported : Bool | Nil
      getter from_id : Root::TypePeer | Nil
      getter from_name : Bytes | Nil
      getter channel_post : Int32 | Nil
      getter post_author : Bytes | Nil
      getter saved_from_peer : Root::TypePeer | Nil
      getter saved_from_msg_id : Int32 | Nil
      getter psa_type : Bytes | Nil

      def initialize(
        date : Int32,
        imported : Bool | Nil = nil,
        from_id : Root::TypePeer | Nil = nil,
        from_name : Bytes | Nil = nil,
        channel_post : Int32 | Nil = nil,
        post_author : Bytes | Nil = nil,
        saved_from_peer : Root::TypePeer | Nil = nil,
        saved_from_msg_id : Int32 | Nil = nil,
        psa_type : Bytes | Nil = nil
      )
        @date = date
        @imported = imported
        @from_id = from_id
        @from_name = from_name
        @channel_post = channel_post
        @post_author = post_author
        @saved_from_peer = saved_from_peer
        @saved_from_msg_id = saved_from_msg_id
        @psa_type = psa_type
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!imported.nil? ? 128 : 0) |
            (!from_id.nil? ? 1 : 0) |
            (!from_name.nil? ? 32 : 0) |
            (!channel_post.nil? ? 4 : 0) |
            (!post_author.nil? ? 8 : 0) |
            (!saved_from_peer.nil? ? 16 : 0) |
            (!saved_from_msg_id.nil? ? 16 : 0) |
            (!psa_type.nil? ? 64 : 0)
        ).tl_serialize(io)
        @from_id.tl_serialize(io, false) unless @from_id.nil?
        @from_name.tl_serialize(io, true) unless @from_name.nil?
        @date.tl_serialize(io, true)
        @channel_post.tl_serialize(io, true) unless @channel_post.nil?
        @post_author.tl_serialize(io, true) unless @post_author.nil?
        @saved_from_peer.tl_serialize(io, false) unless @saved_from_peer.nil?
        @saved_from_msg_id.tl_serialize(io, true) unless @saved_from_msg_id.nil?
        @psa_type.tl_serialize(io, true) unless @psa_type.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          date: Int32.tl_deserialize(io, true),
          imported: flags & 128 == 1,
          from_id: flags & 1 == 1 ? Root::TypePeer.tl_deserialize(io, false) : nil,
          from_name: flags & 32 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          channel_post: flags & 4 == 1 ? Int32.tl_deserialize(io, true) : nil,
          post_author: flags & 8 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          saved_from_peer: flags & 16 == 1 ? Root::TypePeer.tl_deserialize(io, false) : nil,
          saved_from_msg_id: flags & 16 == 1 ? Int32.tl_deserialize(io, true) : nil,
          psa_type: flags & 64 == 1 ? Bytes.tl_deserialize(io, true) : nil,
        )
      end
    end

    class InputBotInlineMessageID < TypeInputBotInlineMessageID
      CONSTRUCTOR_ID = 0x890C3D89

      getter dc_id : Int32
      getter id : Int64
      getter access_hash : Int64

      def initialize(
        dc_id : Int32,
        id : Int64,
        access_hash : Int64
      )
        @dc_id = dc_id
        @id = id
        @access_hash = access_hash
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @dc_id.tl_serialize(io, true)
        @id.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          dc_id: Int32.tl_deserialize(io, true),
          id: Int64.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
        )
      end
    end

    class InputBotInlineMessageID64 < TypeInputBotInlineMessageID
      CONSTRUCTOR_ID = 0xB6D915D7

      getter dc_id : Int32
      getter owner_id : Int64
      getter id : Int32
      getter access_hash : Int64

      def initialize(
        dc_id : Int32,
        owner_id : Int64,
        id : Int32,
        access_hash : Int64
      )
        @dc_id = dc_id
        @owner_id = owner_id
        @id = id
        @access_hash = access_hash
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @dc_id.tl_serialize(io, true)
        @owner_id.tl_serialize(io, true)
        @id.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          dc_id: Int32.tl_deserialize(io, true),
          owner_id: Int64.tl_deserialize(io, true),
          id: Int32.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
        )
      end
    end

    class InlineBotSwitchPM < TypeInlineBotSwitchPM
      CONSTRUCTOR_ID = 0x3C20629F

      getter text : Bytes
      getter start_param : Bytes

      def initialize(
        text : Bytes | String | IO,
        start_param : Bytes | String | IO
      )
        @text = text
        @start_param = start_param
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @text.tl_serialize(io, true)
        @start_param.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          text: Bytes.tl_deserialize(io, true),
          start_param: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class TopPeer < TypeTopPeer
      CONSTRUCTOR_ID = 0xEDCDC05B

      getter peer : Root::TypePeer
      getter rating : Float64

      def initialize(
        peer : Root::TypePeer,
        rating : Float64
      )
        @peer = peer
        @rating = rating
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @peer.tl_serialize(io, false)
        @rating.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          peer: Root::TypePeer.tl_deserialize(io, false),
          rating: Float64.tl_deserialize(io, true),
        )
      end
    end

    class TopPeerCategoryBotsPM < TypeTopPeerCategory
      CONSTRUCTOR_ID = 0xAB661B5B

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class TopPeerCategoryBotsInline < TypeTopPeerCategory
      CONSTRUCTOR_ID = 0x148677E2

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class TopPeerCategoryCorrespondents < TypeTopPeerCategory
      CONSTRUCTOR_ID = 0x0637B7ED

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class TopPeerCategoryGroups < TypeTopPeerCategory
      CONSTRUCTOR_ID = 0xBD17A14A

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class TopPeerCategoryChannels < TypeTopPeerCategory
      CONSTRUCTOR_ID = 0x161D9628

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class TopPeerCategoryPhoneCalls < TypeTopPeerCategory
      CONSTRUCTOR_ID = 0x1E76A78C

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class TopPeerCategoryForwardUsers < TypeTopPeerCategory
      CONSTRUCTOR_ID = 0xA8406CA9

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class TopPeerCategoryForwardChats < TypeTopPeerCategory
      CONSTRUCTOR_ID = 0xFBEEC0F0

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class TopPeerCategoryPeers < TypeTopPeerCategoryPeers
      CONSTRUCTOR_ID = 0xFB834291

      getter category : Root::TypeTopPeerCategory
      getter count : Int32
      getter peers : Array(Root::TypeTopPeer)

      def initialize(
        category : Root::TypeTopPeerCategory,
        count : Int32,
        peers : Array(Root::TypeTopPeer)
      )
        @category = category
        @count = count
        @peers = peers
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @category.tl_serialize(io, false)
        @count.tl_serialize(io, true)
        @peers.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          category: Root::TypeTopPeerCategory.tl_deserialize(io, false),
          count: Int32.tl_deserialize(io, true),
          peers: Array(Root::TypeTopPeer).tl_deserialize(io, false),
        )
      end
    end

    class DraftMessageEmpty < TypeDraftMessage
      CONSTRUCTOR_ID = 0x1B0C841A

      getter date : Int32 | Nil

      def initialize(
        date : Int32 | Nil = nil
      )
        @date = date
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!date.nil? ? 1 : 0)
        ).tl_serialize(io)
        @date.tl_serialize(io, true) unless @date.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          date: flags & 1 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class DraftMessage < TypeDraftMessage
      CONSTRUCTOR_ID = 0xFD8E711F

      getter message : Bytes
      getter date : Int32
      getter no_webpage : Bool | Nil
      getter reply_to_msg_id : Int32 | Nil
      getter entities : Array(Root::TypeMessageEntity) | Nil

      def initialize(
        message : Bytes | String | IO,
        date : Int32,
        no_webpage : Bool | Nil = nil,
        reply_to_msg_id : Int32 | Nil = nil,
        entities : Array(Root::TypeMessageEntity) | Nil = nil
      )
        @message = message
        @date = date
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
        @message.tl_serialize(io, true)
        @entities.tl_serialize(io, false) unless @entities.nil?
        @date.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          message: Bytes.tl_deserialize(io, true),
          date: Int32.tl_deserialize(io, true),
          no_webpage: flags & 2 == 1,
          reply_to_msg_id: flags & 1 == 1 ? Int32.tl_deserialize(io, true) : nil,
          entities: flags & 8 == 1 ? Array(Root::TypeMessageEntity).tl_deserialize(io, false) : nil,
        )
      end
    end

    class StickerSetCovered < TypeStickerSetCovered
      CONSTRUCTOR_ID = 0x6410A5D2

      getter set : Root::TypeStickerSet
      getter cover : Root::TypeDocument

      def initialize(
        set : Root::TypeStickerSet,
        cover : Root::TypeDocument
      )
        @set = set
        @cover = cover
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @set.tl_serialize(io, false)
        @cover.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          set: Root::TypeStickerSet.tl_deserialize(io, false),
          cover: Root::TypeDocument.tl_deserialize(io, false),
        )
      end
    end

    class StickerSetMultiCovered < TypeStickerSetCovered
      CONSTRUCTOR_ID = 0x3407E51B

      getter set : Root::TypeStickerSet
      getter covers : Array(Root::TypeDocument)

      def initialize(
        set : Root::TypeStickerSet,
        covers : Array(Root::TypeDocument)
      )
        @set = set
        @covers = covers
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @set.tl_serialize(io, false)
        @covers.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          set: Root::TypeStickerSet.tl_deserialize(io, false),
          covers: Array(Root::TypeDocument).tl_deserialize(io, false),
        )
      end
    end

    class MaskCoords < TypeMaskCoords
      CONSTRUCTOR_ID = 0xAED6DBB2

      getter n : Int32
      getter x : Float64
      getter y : Float64
      getter zoom : Float64

      def initialize(
        n : Int32,
        x : Float64,
        y : Float64,
        zoom : Float64
      )
        @n = n
        @x = x
        @y = y
        @zoom = zoom
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @n.tl_serialize(io, true)
        @x.tl_serialize(io, true)
        @y.tl_serialize(io, true)
        @zoom.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          n: Int32.tl_deserialize(io, true),
          x: Float64.tl_deserialize(io, true),
          y: Float64.tl_deserialize(io, true),
          zoom: Float64.tl_deserialize(io, true),
        )
      end
    end

    class InputStickeredMediaPhoto < TypeInputStickeredMedia
      CONSTRUCTOR_ID = 0x4A992157

      getter id : Root::TypeInputPhoto

      def initialize(
        id : Root::TypeInputPhoto
      )
        @id = id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Root::TypeInputPhoto.tl_deserialize(io, false),
        )
      end
    end

    class InputStickeredMediaDocument < TypeInputStickeredMedia
      CONSTRUCTOR_ID = 0x0438865B

      getter id : Root::TypeInputDocument

      def initialize(
        id : Root::TypeInputDocument
      )
        @id = id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Root::TypeInputDocument.tl_deserialize(io, false),
        )
      end
    end

    class Game < TypeGame
      CONSTRUCTOR_ID = 0xBDF9653B

      getter id : Int64
      getter access_hash : Int64
      getter short_name : Bytes
      getter title : Bytes
      getter description : Bytes
      getter photo : Root::TypePhoto
      getter document : Root::TypeDocument | Nil

      def initialize(
        id : Int64,
        access_hash : Int64,
        short_name : Bytes | String | IO,
        title : Bytes | String | IO,
        description : Bytes | String | IO,
        photo : Root::TypePhoto,
        document : Root::TypeDocument | Nil = nil
      )
        @id = id
        @access_hash = access_hash
        @short_name = short_name
        @title = title
        @description = description
        @photo = photo
        @document = document
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!document.nil? ? 1 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true)
        @short_name.tl_serialize(io, true)
        @title.tl_serialize(io, true)
        @description.tl_serialize(io, true)
        @photo.tl_serialize(io, false)
        @document.tl_serialize(io, false) unless @document.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          id: Int64.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
          short_name: Bytes.tl_deserialize(io, true),
          title: Bytes.tl_deserialize(io, true),
          description: Bytes.tl_deserialize(io, true),
          photo: Root::TypePhoto.tl_deserialize(io, false),
          document: flags & 1 == 1 ? Root::TypeDocument.tl_deserialize(io, false) : nil,
        )
      end
    end

    class InputGameID < TypeInputGame
      CONSTRUCTOR_ID = 0x032C3E77

      getter id : Int64
      getter access_hash : Int64

      def initialize(
        id : Int64,
        access_hash : Int64
      )
        @id = id
        @access_hash = access_hash
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Int64.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
        )
      end
    end

    class InputGameShortName < TypeInputGame
      CONSTRUCTOR_ID = 0xC331E80A

      getter bot_id : Root::TypeInputUser
      getter short_name : Bytes

      def initialize(
        bot_id : Root::TypeInputUser,
        short_name : Bytes | String | IO
      )
        @bot_id = bot_id
        @short_name = short_name
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @bot_id.tl_serialize(io, false)
        @short_name.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          bot_id: Root::TypeInputUser.tl_deserialize(io, false),
          short_name: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class HighScore < TypeHighScore
      CONSTRUCTOR_ID = 0x73A379EB

      getter pos : Int32
      getter user_id : Int64
      getter score : Int32

      def initialize(
        pos : Int32,
        user_id : Int64,
        score : Int32
      )
        @pos = pos
        @user_id = user_id
        @score = score
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @pos.tl_serialize(io, true)
        @user_id.tl_serialize(io, true)
        @score.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          pos: Int32.tl_deserialize(io, true),
          user_id: Int64.tl_deserialize(io, true),
          score: Int32.tl_deserialize(io, true),
        )
      end
    end

    class TextEmpty < TypeRichText
      CONSTRUCTOR_ID = 0xDC3D824F

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class TextPlain < TypeRichText
      CONSTRUCTOR_ID = 0x744694E0

      getter text : Bytes

      def initialize(
        text : Bytes | String | IO
      )
        @text = text
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @text.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          text: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class TextBold < TypeRichText
      CONSTRUCTOR_ID = 0x6724ABC4

      getter text : Root::TypeRichText

      def initialize(
        text : Root::TypeRichText
      )
        @text = text
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @text.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          text: Root::TypeRichText.tl_deserialize(io, false),
        )
      end
    end

    class TextItalic < TypeRichText
      CONSTRUCTOR_ID = 0xD912A59C

      getter text : Root::TypeRichText

      def initialize(
        text : Root::TypeRichText
      )
        @text = text
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @text.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          text: Root::TypeRichText.tl_deserialize(io, false),
        )
      end
    end

    class TextUnderline < TypeRichText
      CONSTRUCTOR_ID = 0xC12622C4

      getter text : Root::TypeRichText

      def initialize(
        text : Root::TypeRichText
      )
        @text = text
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @text.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          text: Root::TypeRichText.tl_deserialize(io, false),
        )
      end
    end

    class TextStrike < TypeRichText
      CONSTRUCTOR_ID = 0x9BF8BB95

      getter text : Root::TypeRichText

      def initialize(
        text : Root::TypeRichText
      )
        @text = text
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @text.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          text: Root::TypeRichText.tl_deserialize(io, false),
        )
      end
    end

    class TextFixed < TypeRichText
      CONSTRUCTOR_ID = 0x6C3F19B9

      getter text : Root::TypeRichText

      def initialize(
        text : Root::TypeRichText
      )
        @text = text
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @text.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          text: Root::TypeRichText.tl_deserialize(io, false),
        )
      end
    end

    class TextUrl < TypeRichText
      CONSTRUCTOR_ID = 0x3C2884C1

      getter text : Root::TypeRichText
      getter url : Bytes
      getter webpage_id : Int64

      def initialize(
        text : Root::TypeRichText,
        url : Bytes | String | IO,
        webpage_id : Int64
      )
        @text = text
        @url = url
        @webpage_id = webpage_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @text.tl_serialize(io, false)
        @url.tl_serialize(io, true)
        @webpage_id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          text: Root::TypeRichText.tl_deserialize(io, false),
          url: Bytes.tl_deserialize(io, true),
          webpage_id: Int64.tl_deserialize(io, true),
        )
      end
    end

    class TextEmail < TypeRichText
      CONSTRUCTOR_ID = 0xDE5A0DD6

      getter text : Root::TypeRichText
      getter email : Bytes

      def initialize(
        text : Root::TypeRichText,
        email : Bytes | String | IO
      )
        @text = text
        @email = email
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @text.tl_serialize(io, false)
        @email.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          text: Root::TypeRichText.tl_deserialize(io, false),
          email: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class TextConcat < TypeRichText
      CONSTRUCTOR_ID = 0x7E6260D7

      getter texts : Array(Root::TypeRichText)

      def initialize(
        texts : Array(Root::TypeRichText)
      )
        @texts = texts
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @texts.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          texts: Array(Root::TypeRichText).tl_deserialize(io, false),
        )
      end
    end

    class TextSubscript < TypeRichText
      CONSTRUCTOR_ID = 0xED6A8504

      getter text : Root::TypeRichText

      def initialize(
        text : Root::TypeRichText
      )
        @text = text
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @text.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          text: Root::TypeRichText.tl_deserialize(io, false),
        )
      end
    end

    class TextSuperscript < TypeRichText
      CONSTRUCTOR_ID = 0xC7FB5E01

      getter text : Root::TypeRichText

      def initialize(
        text : Root::TypeRichText
      )
        @text = text
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @text.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          text: Root::TypeRichText.tl_deserialize(io, false),
        )
      end
    end

    class TextMarked < TypeRichText
      CONSTRUCTOR_ID = 0x034B8621

      getter text : Root::TypeRichText

      def initialize(
        text : Root::TypeRichText
      )
        @text = text
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @text.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          text: Root::TypeRichText.tl_deserialize(io, false),
        )
      end
    end

    class TextPhone < TypeRichText
      CONSTRUCTOR_ID = 0x1CCB966A

      getter text : Root::TypeRichText
      getter phone : Bytes

      def initialize(
        text : Root::TypeRichText,
        phone : Bytes | String | IO
      )
        @text = text
        @phone = phone
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @text.tl_serialize(io, false)
        @phone.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          text: Root::TypeRichText.tl_deserialize(io, false),
          phone: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class TextImage < TypeRichText
      CONSTRUCTOR_ID = 0x081CCF4F

      getter document_id : Int64
      getter w : Int32
      getter h : Int32

      def initialize(
        document_id : Int64,
        w : Int32,
        h : Int32
      )
        @document_id = document_id
        @w = w
        @h = h
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @document_id.tl_serialize(io, true)
        @w.tl_serialize(io, true)
        @h.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          document_id: Int64.tl_deserialize(io, true),
          w: Int32.tl_deserialize(io, true),
          h: Int32.tl_deserialize(io, true),
        )
      end
    end

    class TextAnchor < TypeRichText
      CONSTRUCTOR_ID = 0x35553762

      getter text : Root::TypeRichText
      getter name : Bytes

      def initialize(
        text : Root::TypeRichText,
        name : Bytes | String | IO
      )
        @text = text
        @name = name
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @text.tl_serialize(io, false)
        @name.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          text: Root::TypeRichText.tl_deserialize(io, false),
          name: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class PageBlockUnsupported < TypePageBlock
      CONSTRUCTOR_ID = 0x13567E8A

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class PageBlockTitle < TypePageBlock
      CONSTRUCTOR_ID = 0x70ABC3FD

      getter text : Root::TypeRichText

      def initialize(
        text : Root::TypeRichText
      )
        @text = text
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @text.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          text: Root::TypeRichText.tl_deserialize(io, false),
        )
      end
    end

    class PageBlockSubtitle < TypePageBlock
      CONSTRUCTOR_ID = 0x8FFA9A1F

      getter text : Root::TypeRichText

      def initialize(
        text : Root::TypeRichText
      )
        @text = text
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @text.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          text: Root::TypeRichText.tl_deserialize(io, false),
        )
      end
    end

    class PageBlockAuthorDate < TypePageBlock
      CONSTRUCTOR_ID = 0xBAAFE5E0

      getter author : Root::TypeRichText
      getter published_date : Int32

      def initialize(
        author : Root::TypeRichText,
        published_date : Int32
      )
        @author = author
        @published_date = published_date
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @author.tl_serialize(io, false)
        @published_date.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          author: Root::TypeRichText.tl_deserialize(io, false),
          published_date: Int32.tl_deserialize(io, true),
        )
      end
    end

    class PageBlockHeader < TypePageBlock
      CONSTRUCTOR_ID = 0xBFD064EC

      getter text : Root::TypeRichText

      def initialize(
        text : Root::TypeRichText
      )
        @text = text
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @text.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          text: Root::TypeRichText.tl_deserialize(io, false),
        )
      end
    end

    class PageBlockSubheader < TypePageBlock
      CONSTRUCTOR_ID = 0xF12BB6E1

      getter text : Root::TypeRichText

      def initialize(
        text : Root::TypeRichText
      )
        @text = text
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @text.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          text: Root::TypeRichText.tl_deserialize(io, false),
        )
      end
    end

    class PageBlockParagraph < TypePageBlock
      CONSTRUCTOR_ID = 0x467A0766

      getter text : Root::TypeRichText

      def initialize(
        text : Root::TypeRichText
      )
        @text = text
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @text.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          text: Root::TypeRichText.tl_deserialize(io, false),
        )
      end
    end

    class PageBlockPreformatted < TypePageBlock
      CONSTRUCTOR_ID = 0xC070D93E

      getter text : Root::TypeRichText
      getter language : Bytes

      def initialize(
        text : Root::TypeRichText,
        language : Bytes | String | IO
      )
        @text = text
        @language = language
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @text.tl_serialize(io, false)
        @language.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          text: Root::TypeRichText.tl_deserialize(io, false),
          language: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class PageBlockFooter < TypePageBlock
      CONSTRUCTOR_ID = 0x48870999

      getter text : Root::TypeRichText

      def initialize(
        text : Root::TypeRichText
      )
        @text = text
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @text.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          text: Root::TypeRichText.tl_deserialize(io, false),
        )
      end
    end

    class PageBlockDivider < TypePageBlock
      CONSTRUCTOR_ID = 0xDB20B188

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class PageBlockAnchor < TypePageBlock
      CONSTRUCTOR_ID = 0xCE0D37B0

      getter name : Bytes

      def initialize(
        name : Bytes | String | IO
      )
        @name = name
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @name.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          name: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class PageBlockList < TypePageBlock
      CONSTRUCTOR_ID = 0xE4E88011

      getter items : Array(Root::TypePageListItem)

      def initialize(
        items : Array(Root::TypePageListItem)
      )
        @items = items
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @items.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          items: Array(Root::TypePageListItem).tl_deserialize(io, false),
        )
      end
    end

    class PageBlockBlockquote < TypePageBlock
      CONSTRUCTOR_ID = 0x263D7C26

      getter text : Root::TypeRichText
      getter caption : Root::TypeRichText

      def initialize(
        text : Root::TypeRichText,
        caption : Root::TypeRichText
      )
        @text = text
        @caption = caption
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @text.tl_serialize(io, false)
        @caption.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          text: Root::TypeRichText.tl_deserialize(io, false),
          caption: Root::TypeRichText.tl_deserialize(io, false),
        )
      end
    end

    class PageBlockPullquote < TypePageBlock
      CONSTRUCTOR_ID = 0x4F4456D3

      getter text : Root::TypeRichText
      getter caption : Root::TypeRichText

      def initialize(
        text : Root::TypeRichText,
        caption : Root::TypeRichText
      )
        @text = text
        @caption = caption
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @text.tl_serialize(io, false)
        @caption.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          text: Root::TypeRichText.tl_deserialize(io, false),
          caption: Root::TypeRichText.tl_deserialize(io, false),
        )
      end
    end

    class PageBlockPhoto < TypePageBlock
      CONSTRUCTOR_ID = 0x1759C560

      getter photo_id : Int64
      getter caption : Root::TypePageCaption
      getter url : Bytes | Nil
      getter webpage_id : Int64 | Nil

      def initialize(
        photo_id : Int64,
        caption : Root::TypePageCaption,
        url : Bytes | Nil = nil,
        webpage_id : Int64 | Nil = nil
      )
        @photo_id = photo_id
        @caption = caption
        @url = url
        @webpage_id = webpage_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!url.nil? ? 1 : 0) |
            (!webpage_id.nil? ? 1 : 0)
        ).tl_serialize(io)
        @photo_id.tl_serialize(io, true)
        @caption.tl_serialize(io, false)
        @url.tl_serialize(io, true) unless @url.nil?
        @webpage_id.tl_serialize(io, true) unless @webpage_id.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          photo_id: Int64.tl_deserialize(io, true),
          caption: Root::TypePageCaption.tl_deserialize(io, false),
          url: flags & 1 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          webpage_id: flags & 1 == 1 ? Int64.tl_deserialize(io, true) : nil,
        )
      end
    end

    class PageBlockVideo < TypePageBlock
      CONSTRUCTOR_ID = 0x7C8FE7B6

      getter video_id : Int64
      getter caption : Root::TypePageCaption
      getter autoplay : Bool | Nil
      getter loop : Bool | Nil

      def initialize(
        video_id : Int64,
        caption : Root::TypePageCaption,
        autoplay : Bool | Nil = nil,
        loop : Bool | Nil = nil
      )
        @video_id = video_id
        @caption = caption
        @autoplay = autoplay
        @loop = loop
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!autoplay.nil? ? 1 : 0) |
            (!loop.nil? ? 2 : 0)
        ).tl_serialize(io)
        @video_id.tl_serialize(io, true)
        @caption.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          video_id: Int64.tl_deserialize(io, true),
          caption: Root::TypePageCaption.tl_deserialize(io, false),
          autoplay: flags & 1 == 1,
          loop: flags & 2 == 1,
        )
      end
    end

    class PageBlockCover < TypePageBlock
      CONSTRUCTOR_ID = 0x39F23300

      getter cover : Root::TypePageBlock

      def initialize(
        cover : Root::TypePageBlock
      )
        @cover = cover
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @cover.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          cover: Root::TypePageBlock.tl_deserialize(io, false),
        )
      end
    end

    class PageBlockEmbed < TypePageBlock
      CONSTRUCTOR_ID = 0xA8718DC5

      getter caption : Root::TypePageCaption
      getter full_width : Bool | Nil
      getter allow_scrolling : Bool | Nil
      getter url : Bytes | Nil
      getter html : Bytes | Nil
      getter poster_photo_id : Int64 | Nil
      getter w : Int32 | Nil
      getter h : Int32 | Nil

      def initialize(
        caption : Root::TypePageCaption,
        full_width : Bool | Nil = nil,
        allow_scrolling : Bool | Nil = nil,
        url : Bytes | Nil = nil,
        html : Bytes | Nil = nil,
        poster_photo_id : Int64 | Nil = nil,
        w : Int32 | Nil = nil,
        h : Int32 | Nil = nil
      )
        @caption = caption
        @full_width = full_width
        @allow_scrolling = allow_scrolling
        @url = url
        @html = html
        @poster_photo_id = poster_photo_id
        @w = w
        @h = h
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!full_width.nil? ? 1 : 0) |
            (!allow_scrolling.nil? ? 8 : 0) |
            (!url.nil? ? 2 : 0) |
            (!html.nil? ? 4 : 0) |
            (!poster_photo_id.nil? ? 16 : 0) |
            (!w.nil? ? 32 : 0) |
            (!h.nil? ? 32 : 0)
        ).tl_serialize(io)
        @url.tl_serialize(io, true) unless @url.nil?
        @html.tl_serialize(io, true) unless @html.nil?
        @poster_photo_id.tl_serialize(io, true) unless @poster_photo_id.nil?
        @w.tl_serialize(io, true) unless @w.nil?
        @h.tl_serialize(io, true) unless @h.nil?
        @caption.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          caption: Root::TypePageCaption.tl_deserialize(io, false),
          full_width: flags & 1 == 1,
          allow_scrolling: flags & 8 == 1,
          url: flags & 2 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          html: flags & 4 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          poster_photo_id: flags & 16 == 1 ? Int64.tl_deserialize(io, true) : nil,
          w: flags & 32 == 1 ? Int32.tl_deserialize(io, true) : nil,
          h: flags & 32 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class PageBlockEmbedPost < TypePageBlock
      CONSTRUCTOR_ID = 0xF259A80B

      getter url : Bytes
      getter webpage_id : Int64
      getter author_photo_id : Int64
      getter author : Bytes
      getter date : Int32
      getter blocks : Array(Root::TypePageBlock)
      getter caption : Root::TypePageCaption

      def initialize(
        url : Bytes | String | IO,
        webpage_id : Int64,
        author_photo_id : Int64,
        author : Bytes | String | IO,
        date : Int32,
        blocks : Array(Root::TypePageBlock),
        caption : Root::TypePageCaption
      )
        @url = url
        @webpage_id = webpage_id
        @author_photo_id = author_photo_id
        @author = author
        @date = date
        @blocks = blocks
        @caption = caption
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @url.tl_serialize(io, true)
        @webpage_id.tl_serialize(io, true)
        @author_photo_id.tl_serialize(io, true)
        @author.tl_serialize(io, true)
        @date.tl_serialize(io, true)
        @blocks.tl_serialize(io, false)
        @caption.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          url: Bytes.tl_deserialize(io, true),
          webpage_id: Int64.tl_deserialize(io, true),
          author_photo_id: Int64.tl_deserialize(io, true),
          author: Bytes.tl_deserialize(io, true),
          date: Int32.tl_deserialize(io, true),
          blocks: Array(Root::TypePageBlock).tl_deserialize(io, false),
          caption: Root::TypePageCaption.tl_deserialize(io, false),
        )
      end
    end

    class PageBlockCollage < TypePageBlock
      CONSTRUCTOR_ID = 0x65A0FA4D

      getter items : Array(Root::TypePageBlock)
      getter caption : Root::TypePageCaption

      def initialize(
        items : Array(Root::TypePageBlock),
        caption : Root::TypePageCaption
      )
        @items = items
        @caption = caption
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @items.tl_serialize(io, false)
        @caption.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          items: Array(Root::TypePageBlock).tl_deserialize(io, false),
          caption: Root::TypePageCaption.tl_deserialize(io, false),
        )
      end
    end

    class PageBlockSlideshow < TypePageBlock
      CONSTRUCTOR_ID = 0x031F9590

      getter items : Array(Root::TypePageBlock)
      getter caption : Root::TypePageCaption

      def initialize(
        items : Array(Root::TypePageBlock),
        caption : Root::TypePageCaption
      )
        @items = items
        @caption = caption
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @items.tl_serialize(io, false)
        @caption.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          items: Array(Root::TypePageBlock).tl_deserialize(io, false),
          caption: Root::TypePageCaption.tl_deserialize(io, false),
        )
      end
    end

    class PageBlockChannel < TypePageBlock
      CONSTRUCTOR_ID = 0xEF1751B5

      getter channel : Root::TypeChat

      def initialize(
        channel : Root::TypeChat
      )
        @channel = channel
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @channel.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          channel: Root::TypeChat.tl_deserialize(io, false),
        )
      end
    end

    class PageBlockAudio < TypePageBlock
      CONSTRUCTOR_ID = 0x804361EA

      getter audio_id : Int64
      getter caption : Root::TypePageCaption

      def initialize(
        audio_id : Int64,
        caption : Root::TypePageCaption
      )
        @audio_id = audio_id
        @caption = caption
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @audio_id.tl_serialize(io, true)
        @caption.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          audio_id: Int64.tl_deserialize(io, true),
          caption: Root::TypePageCaption.tl_deserialize(io, false),
        )
      end
    end

    class PageBlockKicker < TypePageBlock
      CONSTRUCTOR_ID = 0x1E148390

      getter text : Root::TypeRichText

      def initialize(
        text : Root::TypeRichText
      )
        @text = text
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @text.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          text: Root::TypeRichText.tl_deserialize(io, false),
        )
      end
    end

    class PageBlockTable < TypePageBlock
      CONSTRUCTOR_ID = 0xBF4DEA82

      getter title : Root::TypeRichText
      getter rows : Array(Root::TypePageTableRow)
      getter bordered : Bool | Nil
      getter striped : Bool | Nil

      def initialize(
        title : Root::TypeRichText,
        rows : Array(Root::TypePageTableRow),
        bordered : Bool | Nil = nil,
        striped : Bool | Nil = nil
      )
        @title = title
        @rows = rows
        @bordered = bordered
        @striped = striped
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!bordered.nil? ? 1 : 0) |
            (!striped.nil? ? 2 : 0)
        ).tl_serialize(io)
        @title.tl_serialize(io, false)
        @rows.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          title: Root::TypeRichText.tl_deserialize(io, false),
          rows: Array(Root::TypePageTableRow).tl_deserialize(io, false),
          bordered: flags & 1 == 1,
          striped: flags & 2 == 1,
        )
      end
    end

    class PageBlockOrderedList < TypePageBlock
      CONSTRUCTOR_ID = 0x9A8AE1E1

      getter items : Array(Root::TypePageListOrderedItem)

      def initialize(
        items : Array(Root::TypePageListOrderedItem)
      )
        @items = items
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @items.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          items: Array(Root::TypePageListOrderedItem).tl_deserialize(io, false),
        )
      end
    end

    class PageBlockDetails < TypePageBlock
      CONSTRUCTOR_ID = 0x76768BED

      getter blocks : Array(Root::TypePageBlock)
      getter title : Root::TypeRichText
      getter open : Bool | Nil

      def initialize(
        blocks : Array(Root::TypePageBlock),
        title : Root::TypeRichText,
        open : Bool | Nil = nil
      )
        @blocks = blocks
        @title = title
        @open = open
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!open.nil? ? 1 : 0)
        ).tl_serialize(io)
        @blocks.tl_serialize(io, false)
        @title.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          blocks: Array(Root::TypePageBlock).tl_deserialize(io, false),
          title: Root::TypeRichText.tl_deserialize(io, false),
          open: flags & 1 == 1,
        )
      end
    end

    class PageBlockRelatedArticles < TypePageBlock
      CONSTRUCTOR_ID = 0x16115A96

      getter title : Root::TypeRichText
      getter articles : Array(Root::TypePageRelatedArticle)

      def initialize(
        title : Root::TypeRichText,
        articles : Array(Root::TypePageRelatedArticle)
      )
        @title = title
        @articles = articles
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @title.tl_serialize(io, false)
        @articles.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          title: Root::TypeRichText.tl_deserialize(io, false),
          articles: Array(Root::TypePageRelatedArticle).tl_deserialize(io, false),
        )
      end
    end

    class PageBlockMap < TypePageBlock
      CONSTRUCTOR_ID = 0xA44F3EF6

      getter geo : Root::TypeGeoPoint
      getter zoom : Int32
      getter w : Int32
      getter h : Int32
      getter caption : Root::TypePageCaption

      def initialize(
        geo : Root::TypeGeoPoint,
        zoom : Int32,
        w : Int32,
        h : Int32,
        caption : Root::TypePageCaption
      )
        @geo = geo
        @zoom = zoom
        @w = w
        @h = h
        @caption = caption
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @geo.tl_serialize(io, false)
        @zoom.tl_serialize(io, true)
        @w.tl_serialize(io, true)
        @h.tl_serialize(io, true)
        @caption.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          geo: Root::TypeGeoPoint.tl_deserialize(io, false),
          zoom: Int32.tl_deserialize(io, true),
          w: Int32.tl_deserialize(io, true),
          h: Int32.tl_deserialize(io, true),
          caption: Root::TypePageCaption.tl_deserialize(io, false),
        )
      end
    end

    class PhoneCallDiscardReasonMissed < TypePhoneCallDiscardReason
      CONSTRUCTOR_ID = 0x85E42301

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class PhoneCallDiscardReasonDisconnect < TypePhoneCallDiscardReason
      CONSTRUCTOR_ID = 0xE095C1A0

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class PhoneCallDiscardReasonHangup < TypePhoneCallDiscardReason
      CONSTRUCTOR_ID = 0x57ADC690

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class PhoneCallDiscardReasonBusy < TypePhoneCallDiscardReason
      CONSTRUCTOR_ID = 0xFAF7E8C9

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class DataJSON < TypeDataJSON
      CONSTRUCTOR_ID = 0x7D748D04

      getter data : Bytes

      def initialize(
        data : Bytes | String | IO
      )
        @data = data
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @data.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          data: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class LabeledPrice < TypeLabeledPrice
      CONSTRUCTOR_ID = 0xCB296BF8

      getter label : Bytes
      getter amount : Int64

      def initialize(
        label : Bytes | String | IO,
        amount : Int64
      )
        @label = label
        @amount = amount
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @label.tl_serialize(io, true)
        @amount.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          label: Bytes.tl_deserialize(io, true),
          amount: Int64.tl_deserialize(io, true),
        )
      end
    end

    class Invoice < TypeInvoice
      CONSTRUCTOR_ID = 0x0CD886E0

      getter currency : Bytes
      getter prices : Array(Root::TypeLabeledPrice)
      getter test : Bool | Nil
      getter name_requested : Bool | Nil
      getter phone_requested : Bool | Nil
      getter email_requested : Bool | Nil
      getter shipping_address_requested : Bool | Nil
      getter flexible : Bool | Nil
      getter phone_to_provider : Bool | Nil
      getter email_to_provider : Bool | Nil
      getter max_tip_amount : Int64 | Nil
      getter suggested_tip_amounts : Array(Int64) | Nil

      def initialize(
        currency : Bytes | String | IO,
        prices : Array(Root::TypeLabeledPrice),
        test : Bool | Nil = nil,
        name_requested : Bool | Nil = nil,
        phone_requested : Bool | Nil = nil,
        email_requested : Bool | Nil = nil,
        shipping_address_requested : Bool | Nil = nil,
        flexible : Bool | Nil = nil,
        phone_to_provider : Bool | Nil = nil,
        email_to_provider : Bool | Nil = nil,
        max_tip_amount : Int64 | Nil = nil,
        suggested_tip_amounts : Array(Int64) | Nil = nil
      )
        @currency = currency
        @prices = prices
        @test = test
        @name_requested = name_requested
        @phone_requested = phone_requested
        @email_requested = email_requested
        @shipping_address_requested = shipping_address_requested
        @flexible = flexible
        @phone_to_provider = phone_to_provider
        @email_to_provider = email_to_provider
        @max_tip_amount = max_tip_amount
        @suggested_tip_amounts = suggested_tip_amounts
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!test.nil? ? 1 : 0) |
            (!name_requested.nil? ? 2 : 0) |
            (!phone_requested.nil? ? 4 : 0) |
            (!email_requested.nil? ? 8 : 0) |
            (!shipping_address_requested.nil? ? 16 : 0) |
            (!flexible.nil? ? 32 : 0) |
            (!phone_to_provider.nil? ? 64 : 0) |
            (!email_to_provider.nil? ? 128 : 0) |
            (!max_tip_amount.nil? ? 256 : 0) |
            (!suggested_tip_amounts.nil? ? 256 : 0)
        ).tl_serialize(io)
        @currency.tl_serialize(io, true)
        @prices.tl_serialize(io, false)
        @max_tip_amount.tl_serialize(io, true) unless @max_tip_amount.nil?
        @suggested_tip_amounts.tl_serialize(io, false) unless @suggested_tip_amounts.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          currency: Bytes.tl_deserialize(io, true),
          prices: Array(Root::TypeLabeledPrice).tl_deserialize(io, false),
          test: flags & 1 == 1,
          name_requested: flags & 2 == 1,
          phone_requested: flags & 4 == 1,
          email_requested: flags & 8 == 1,
          shipping_address_requested: flags & 16 == 1,
          flexible: flags & 32 == 1,
          phone_to_provider: flags & 64 == 1,
          email_to_provider: flags & 128 == 1,
          max_tip_amount: flags & 256 == 1 ? Int64.tl_deserialize(io, true) : nil,
          suggested_tip_amounts: flags & 256 == 1 ? Array(Int64).tl_deserialize(io, false) : nil,
        )
      end
    end

    class PaymentCharge < TypePaymentCharge
      CONSTRUCTOR_ID = 0xEA02C27E

      getter id : Bytes
      getter provider_charge_id : Bytes

      def initialize(
        id : Bytes | String | IO,
        provider_charge_id : Bytes | String | IO
      )
        @id = id
        @provider_charge_id = provider_charge_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        @provider_charge_id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Bytes.tl_deserialize(io, true),
          provider_charge_id: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class PostAddress < TypePostAddress
      CONSTRUCTOR_ID = 0x1E8CAAEB

      getter street_line1 : Bytes
      getter street_line2 : Bytes
      getter city : Bytes
      getter state : Bytes
      getter country_iso2 : Bytes
      getter post_code : Bytes

      def initialize(
        street_line1 : Bytes | String | IO,
        street_line2 : Bytes | String | IO,
        city : Bytes | String | IO,
        state : Bytes | String | IO,
        country_iso2 : Bytes | String | IO,
        post_code : Bytes | String | IO
      )
        @street_line1 = street_line1
        @street_line2 = street_line2
        @city = city
        @state = state
        @country_iso2 = country_iso2
        @post_code = post_code
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @street_line1.tl_serialize(io, true)
        @street_line2.tl_serialize(io, true)
        @city.tl_serialize(io, true)
        @state.tl_serialize(io, true)
        @country_iso2.tl_serialize(io, true)
        @post_code.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          street_line1: Bytes.tl_deserialize(io, true),
          street_line2: Bytes.tl_deserialize(io, true),
          city: Bytes.tl_deserialize(io, true),
          state: Bytes.tl_deserialize(io, true),
          country_iso2: Bytes.tl_deserialize(io, true),
          post_code: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class PaymentRequestedInfo < TypePaymentRequestedInfo
      CONSTRUCTOR_ID = 0x909C3F94

      getter name : Bytes | Nil
      getter phone : Bytes | Nil
      getter email : Bytes | Nil
      getter shipping_address : Root::TypePostAddress | Nil

      def initialize(
        name : Bytes | Nil = nil,
        phone : Bytes | Nil = nil,
        email : Bytes | Nil = nil,
        shipping_address : Root::TypePostAddress | Nil = nil
      )
        @name = name
        @phone = phone
        @email = email
        @shipping_address = shipping_address
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!name.nil? ? 1 : 0) |
            (!phone.nil? ? 2 : 0) |
            (!email.nil? ? 4 : 0) |
            (!shipping_address.nil? ? 8 : 0)
        ).tl_serialize(io)
        @name.tl_serialize(io, true) unless @name.nil?
        @phone.tl_serialize(io, true) unless @phone.nil?
        @email.tl_serialize(io, true) unless @email.nil?
        @shipping_address.tl_serialize(io, false) unless @shipping_address.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          name: flags & 1 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          phone: flags & 2 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          email: flags & 4 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          shipping_address: flags & 8 == 1 ? Root::TypePostAddress.tl_deserialize(io, false) : nil,
        )
      end
    end

    class PaymentSavedCredentialsCard < TypePaymentSavedCredentials
      CONSTRUCTOR_ID = 0xCDC27A1F

      getter id : Bytes
      getter title : Bytes

      def initialize(
        id : Bytes | String | IO,
        title : Bytes | String | IO
      )
        @id = id
        @title = title
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        @title.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Bytes.tl_deserialize(io, true),
          title: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class WebDocument < TypeWebDocument
      CONSTRUCTOR_ID = 0x1C570ED1

      getter url : Bytes
      getter access_hash : Int64
      getter size : Int32
      getter mime_type : Bytes
      getter attributes : Array(Root::TypeDocumentAttribute)

      def initialize(
        url : Bytes | String | IO,
        access_hash : Int64,
        size : Int32,
        mime_type : Bytes | String | IO,
        attributes : Array(Root::TypeDocumentAttribute)
      )
        @url = url
        @access_hash = access_hash
        @size = size
        @mime_type = mime_type
        @attributes = attributes
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @url.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true)
        @size.tl_serialize(io, true)
        @mime_type.tl_serialize(io, true)
        @attributes.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          url: Bytes.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
          size: Int32.tl_deserialize(io, true),
          mime_type: Bytes.tl_deserialize(io, true),
          attributes: Array(Root::TypeDocumentAttribute).tl_deserialize(io, false),
        )
      end
    end

    class WebDocumentNoProxy < TypeWebDocument
      CONSTRUCTOR_ID = 0xF9C8BCC6

      getter url : Bytes
      getter size : Int32
      getter mime_type : Bytes
      getter attributes : Array(Root::TypeDocumentAttribute)

      def initialize(
        url : Bytes | String | IO,
        size : Int32,
        mime_type : Bytes | String | IO,
        attributes : Array(Root::TypeDocumentAttribute)
      )
        @url = url
        @size = size
        @mime_type = mime_type
        @attributes = attributes
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @url.tl_serialize(io, true)
        @size.tl_serialize(io, true)
        @mime_type.tl_serialize(io, true)
        @attributes.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          url: Bytes.tl_deserialize(io, true),
          size: Int32.tl_deserialize(io, true),
          mime_type: Bytes.tl_deserialize(io, true),
          attributes: Array(Root::TypeDocumentAttribute).tl_deserialize(io, false),
        )
      end
    end

    class InputWebDocument < TypeInputWebDocument
      CONSTRUCTOR_ID = 0x9BED434D

      getter url : Bytes
      getter size : Int32
      getter mime_type : Bytes
      getter attributes : Array(Root::TypeDocumentAttribute)

      def initialize(
        url : Bytes | String | IO,
        size : Int32,
        mime_type : Bytes | String | IO,
        attributes : Array(Root::TypeDocumentAttribute)
      )
        @url = url
        @size = size
        @mime_type = mime_type
        @attributes = attributes
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @url.tl_serialize(io, true)
        @size.tl_serialize(io, true)
        @mime_type.tl_serialize(io, true)
        @attributes.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          url: Bytes.tl_deserialize(io, true),
          size: Int32.tl_deserialize(io, true),
          mime_type: Bytes.tl_deserialize(io, true),
          attributes: Array(Root::TypeDocumentAttribute).tl_deserialize(io, false),
        )
      end
    end

    class InputWebFileLocation < TypeInputWebFileLocation
      CONSTRUCTOR_ID = 0xC239D686

      getter url : Bytes
      getter access_hash : Int64

      def initialize(
        url : Bytes | String | IO,
        access_hash : Int64
      )
        @url = url
        @access_hash = access_hash
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @url.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          url: Bytes.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
        )
      end
    end

    class InputWebFileGeoPointLocation < TypeInputWebFileLocation
      CONSTRUCTOR_ID = 0x9F2221C9

      getter geo_point : Root::TypeInputGeoPoint
      getter access_hash : Int64
      getter w : Int32
      getter h : Int32
      getter zoom : Int32
      getter scale : Int32

      def initialize(
        geo_point : Root::TypeInputGeoPoint,
        access_hash : Int64,
        w : Int32,
        h : Int32,
        zoom : Int32,
        scale : Int32
      )
        @geo_point = geo_point
        @access_hash = access_hash
        @w = w
        @h = h
        @zoom = zoom
        @scale = scale
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @geo_point.tl_serialize(io, false)
        @access_hash.tl_serialize(io, true)
        @w.tl_serialize(io, true)
        @h.tl_serialize(io, true)
        @zoom.tl_serialize(io, true)
        @scale.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          geo_point: Root::TypeInputGeoPoint.tl_deserialize(io, false),
          access_hash: Int64.tl_deserialize(io, true),
          w: Int32.tl_deserialize(io, true),
          h: Int32.tl_deserialize(io, true),
          zoom: Int32.tl_deserialize(io, true),
          scale: Int32.tl_deserialize(io, true),
        )
      end
    end

    class InputPaymentCredentialsSaved < TypeInputPaymentCredentials
      CONSTRUCTOR_ID = 0xC10EB2CF

      getter id : Bytes
      getter tmp_password : Bytes

      def initialize(
        id : Bytes | String | IO,
        tmp_password : Bytes | String | IO
      )
        @id = id
        @tmp_password = TL::Utils.parse_bytes!(tmp_password)
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        @tmp_password.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Bytes.tl_deserialize(io, true),
          tmp_password: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class InputPaymentCredentials < TypeInputPaymentCredentials
      CONSTRUCTOR_ID = 0x3417D728

      getter data : Root::TypeDataJSON
      getter save : Bool | Nil

      def initialize(
        data : Root::TypeDataJSON,
        save : Bool | Nil = nil
      )
        @data = data
        @save = save
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!save.nil? ? 1 : 0)
        ).tl_serialize(io)
        @data.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          data: Root::TypeDataJSON.tl_deserialize(io, false),
          save: flags & 1 == 1,
        )
      end
    end

    class InputPaymentCredentialsApplePay < TypeInputPaymentCredentials
      CONSTRUCTOR_ID = 0x0AA1C39F

      getter payment_data : Root::TypeDataJSON

      def initialize(
        payment_data : Root::TypeDataJSON
      )
        @payment_data = payment_data
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @payment_data.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          payment_data: Root::TypeDataJSON.tl_deserialize(io, false),
        )
      end
    end

    class InputPaymentCredentialsGooglePay < TypeInputPaymentCredentials
      CONSTRUCTOR_ID = 0x8AC32801

      getter payment_token : Root::TypeDataJSON

      def initialize(
        payment_token : Root::TypeDataJSON
      )
        @payment_token = payment_token
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @payment_token.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          payment_token: Root::TypeDataJSON.tl_deserialize(io, false),
        )
      end
    end

    class ShippingOption < TypeShippingOption
      CONSTRUCTOR_ID = 0xB6213CDF

      getter id : Bytes
      getter title : Bytes
      getter prices : Array(Root::TypeLabeledPrice)

      def initialize(
        id : Bytes | String | IO,
        title : Bytes | String | IO,
        prices : Array(Root::TypeLabeledPrice)
      )
        @id = id
        @title = title
        @prices = prices
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        @title.tl_serialize(io, true)
        @prices.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Bytes.tl_deserialize(io, true),
          title: Bytes.tl_deserialize(io, true),
          prices: Array(Root::TypeLabeledPrice).tl_deserialize(io, false),
        )
      end
    end

    class InputStickerSetItem < TypeInputStickerSetItem
      CONSTRUCTOR_ID = 0xFFA0A496

      getter document : Root::TypeInputDocument
      getter emoji : Bytes
      getter mask_coords : Root::TypeMaskCoords | Nil

      def initialize(
        document : Root::TypeInputDocument,
        emoji : Bytes | String | IO,
        mask_coords : Root::TypeMaskCoords | Nil = nil
      )
        @document = document
        @emoji = emoji
        @mask_coords = mask_coords
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!mask_coords.nil? ? 1 : 0)
        ).tl_serialize(io)
        @document.tl_serialize(io, false)
        @emoji.tl_serialize(io, true)
        @mask_coords.tl_serialize(io, false) unless @mask_coords.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          document: Root::TypeInputDocument.tl_deserialize(io, false),
          emoji: Bytes.tl_deserialize(io, true),
          mask_coords: flags & 1 == 1 ? Root::TypeMaskCoords.tl_deserialize(io, false) : nil,
        )
      end
    end

    class InputPhoneCall < TypeInputPhoneCall
      CONSTRUCTOR_ID = 0x1E36FDED

      getter id : Int64
      getter access_hash : Int64

      def initialize(
        id : Int64,
        access_hash : Int64
      )
        @id = id
        @access_hash = access_hash
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Int64.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
        )
      end
    end

    class PhoneCallEmpty < TypePhoneCall
      CONSTRUCTOR_ID = 0x5366C915

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
          id: Int64.tl_deserialize(io, true),
        )
      end
    end

    class PhoneCallWaiting < TypePhoneCall
      CONSTRUCTOR_ID = 0xC5226F17

      getter id : Int64
      getter access_hash : Int64
      getter date : Int32
      getter admin_id : Int64
      getter participant_id : Int64
      getter protocol : Root::TypePhoneCallProtocol
      getter video : Bool | Nil
      getter receive_date : Int32 | Nil

      def initialize(
        id : Int64,
        access_hash : Int64,
        date : Int32,
        admin_id : Int64,
        participant_id : Int64,
        protocol : Root::TypePhoneCallProtocol,
        video : Bool | Nil = nil,
        receive_date : Int32 | Nil = nil
      )
        @id = id
        @access_hash = access_hash
        @date = date
        @admin_id = admin_id
        @participant_id = participant_id
        @protocol = protocol
        @video = video
        @receive_date = receive_date
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!video.nil? ? 64 : 0) |
            (!receive_date.nil? ? 1 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true)
        @date.tl_serialize(io, true)
        @admin_id.tl_serialize(io, true)
        @participant_id.tl_serialize(io, true)
        @protocol.tl_serialize(io, false)
        @receive_date.tl_serialize(io, true) unless @receive_date.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          id: Int64.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
          date: Int32.tl_deserialize(io, true),
          admin_id: Int64.tl_deserialize(io, true),
          participant_id: Int64.tl_deserialize(io, true),
          protocol: Root::TypePhoneCallProtocol.tl_deserialize(io, false),
          video: flags & 64 == 1,
          receive_date: flags & 1 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class PhoneCallRequested < TypePhoneCall
      CONSTRUCTOR_ID = 0x14B0ED0C

      getter id : Int64
      getter access_hash : Int64
      getter date : Int32
      getter admin_id : Int64
      getter participant_id : Int64
      getter g_a_hash : Bytes
      getter protocol : Root::TypePhoneCallProtocol
      getter video : Bool | Nil

      def initialize(
        id : Int64,
        access_hash : Int64,
        date : Int32,
        admin_id : Int64,
        participant_id : Int64,
        g_a_hash : Bytes | String | IO,
        protocol : Root::TypePhoneCallProtocol,
        video : Bool | Nil = nil
      )
        @id = id
        @access_hash = access_hash
        @date = date
        @admin_id = admin_id
        @participant_id = participant_id
        @g_a_hash = TL::Utils.parse_bytes!(g_a_hash)
        @protocol = protocol
        @video = video
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!video.nil? ? 64 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true)
        @date.tl_serialize(io, true)
        @admin_id.tl_serialize(io, true)
        @participant_id.tl_serialize(io, true)
        @g_a_hash.tl_serialize(io, true)
        @protocol.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          id: Int64.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
          date: Int32.tl_deserialize(io, true),
          admin_id: Int64.tl_deserialize(io, true),
          participant_id: Int64.tl_deserialize(io, true),
          g_a_hash: Bytes.tl_deserialize(io, true),
          protocol: Root::TypePhoneCallProtocol.tl_deserialize(io, false),
          video: flags & 64 == 1,
        )
      end
    end

    class PhoneCallAccepted < TypePhoneCall
      CONSTRUCTOR_ID = 0x3660C311

      getter id : Int64
      getter access_hash : Int64
      getter date : Int32
      getter admin_id : Int64
      getter participant_id : Int64
      getter g_b : Bytes
      getter protocol : Root::TypePhoneCallProtocol
      getter video : Bool | Nil

      def initialize(
        id : Int64,
        access_hash : Int64,
        date : Int32,
        admin_id : Int64,
        participant_id : Int64,
        g_b : Bytes | String | IO,
        protocol : Root::TypePhoneCallProtocol,
        video : Bool | Nil = nil
      )
        @id = id
        @access_hash = access_hash
        @date = date
        @admin_id = admin_id
        @participant_id = participant_id
        @g_b = TL::Utils.parse_bytes!(g_b)
        @protocol = protocol
        @video = video
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!video.nil? ? 64 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true)
        @date.tl_serialize(io, true)
        @admin_id.tl_serialize(io, true)
        @participant_id.tl_serialize(io, true)
        @g_b.tl_serialize(io, true)
        @protocol.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          id: Int64.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
          date: Int32.tl_deserialize(io, true),
          admin_id: Int64.tl_deserialize(io, true),
          participant_id: Int64.tl_deserialize(io, true),
          g_b: Bytes.tl_deserialize(io, true),
          protocol: Root::TypePhoneCallProtocol.tl_deserialize(io, false),
          video: flags & 64 == 1,
        )
      end
    end

    class PhoneCall < TypePhoneCall
      CONSTRUCTOR_ID = 0x967F7C67

      getter id : Int64
      getter access_hash : Int64
      getter date : Int32
      getter admin_id : Int64
      getter participant_id : Int64
      getter g_a_or_b : Bytes
      getter key_fingerprint : Int64
      getter protocol : Root::TypePhoneCallProtocol
      getter connections : Array(Root::TypePhoneConnection)
      getter start_date : Int32
      getter p2p_allowed : Bool | Nil
      getter video : Bool | Nil

      def initialize(
        id : Int64,
        access_hash : Int64,
        date : Int32,
        admin_id : Int64,
        participant_id : Int64,
        g_a_or_b : Bytes | String | IO,
        key_fingerprint : Int64,
        protocol : Root::TypePhoneCallProtocol,
        connections : Array(Root::TypePhoneConnection),
        start_date : Int32,
        p2p_allowed : Bool | Nil = nil,
        video : Bool | Nil = nil
      )
        @id = id
        @access_hash = access_hash
        @date = date
        @admin_id = admin_id
        @participant_id = participant_id
        @g_a_or_b = TL::Utils.parse_bytes!(g_a_or_b)
        @key_fingerprint = key_fingerprint
        @protocol = protocol
        @connections = connections
        @start_date = start_date
        @p2p_allowed = p2p_allowed
        @video = video
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!p2p_allowed.nil? ? 32 : 0) |
            (!video.nil? ? 64 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true)
        @date.tl_serialize(io, true)
        @admin_id.tl_serialize(io, true)
        @participant_id.tl_serialize(io, true)
        @g_a_or_b.tl_serialize(io, true)
        @key_fingerprint.tl_serialize(io, true)
        @protocol.tl_serialize(io, false)
        @connections.tl_serialize(io, false)
        @start_date.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          id: Int64.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
          date: Int32.tl_deserialize(io, true),
          admin_id: Int64.tl_deserialize(io, true),
          participant_id: Int64.tl_deserialize(io, true),
          g_a_or_b: Bytes.tl_deserialize(io, true),
          key_fingerprint: Int64.tl_deserialize(io, true),
          protocol: Root::TypePhoneCallProtocol.tl_deserialize(io, false),
          connections: Array(Root::TypePhoneConnection).tl_deserialize(io, false),
          start_date: Int32.tl_deserialize(io, true),
          p2p_allowed: flags & 32 == 1,
          video: flags & 64 == 1,
        )
      end
    end

    class PhoneCallDiscarded < TypePhoneCall
      CONSTRUCTOR_ID = 0x50CA4DE1

      getter id : Int64
      getter need_rating : Bool | Nil
      getter need_debug : Bool | Nil
      getter video : Bool | Nil
      getter reason : Root::TypePhoneCallDiscardReason | Nil
      getter duration : Int32 | Nil

      def initialize(
        id : Int64,
        need_rating : Bool | Nil = nil,
        need_debug : Bool | Nil = nil,
        video : Bool | Nil = nil,
        reason : Root::TypePhoneCallDiscardReason | Nil = nil,
        duration : Int32 | Nil = nil
      )
        @id = id
        @need_rating = need_rating
        @need_debug = need_debug
        @video = video
        @reason = reason
        @duration = duration
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!need_rating.nil? ? 4 : 0) |
            (!need_debug.nil? ? 8 : 0) |
            (!video.nil? ? 64 : 0) |
            (!reason.nil? ? 1 : 0) |
            (!duration.nil? ? 2 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io, true)
        @reason.tl_serialize(io, false) unless @reason.nil?
        @duration.tl_serialize(io, true) unless @duration.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          id: Int64.tl_deserialize(io, true),
          need_rating: flags & 4 == 1,
          need_debug: flags & 8 == 1,
          video: flags & 64 == 1,
          reason: flags & 1 == 1 ? Root::TypePhoneCallDiscardReason.tl_deserialize(io, false) : nil,
          duration: flags & 2 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class PhoneConnection < TypePhoneConnection
      CONSTRUCTOR_ID = 0x9D4C17C0

      getter id : Int64
      getter ip : Bytes
      getter ipv6 : Bytes
      getter port : Int32
      getter peer_tag : Bytes

      def initialize(
        id : Int64,
        ip : Bytes | String | IO,
        ipv6 : Bytes | String | IO,
        port : Int32,
        peer_tag : Bytes | String | IO
      )
        @id = id
        @ip = ip
        @ipv6 = ipv6
        @port = port
        @peer_tag = TL::Utils.parse_bytes!(peer_tag)
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        @ip.tl_serialize(io, true)
        @ipv6.tl_serialize(io, true)
        @port.tl_serialize(io, true)
        @peer_tag.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Int64.tl_deserialize(io, true),
          ip: Bytes.tl_deserialize(io, true),
          ipv6: Bytes.tl_deserialize(io, true),
          port: Int32.tl_deserialize(io, true),
          peer_tag: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class PhoneConnectionWebrtc < TypePhoneConnection
      CONSTRUCTOR_ID = 0x635FE375

      getter id : Int64
      getter ip : Bytes
      getter ipv6 : Bytes
      getter port : Int32
      getter username : Bytes
      getter password : Bytes
      getter turn : Bool | Nil
      getter stun : Bool | Nil

      def initialize(
        id : Int64,
        ip : Bytes | String | IO,
        ipv6 : Bytes | String | IO,
        port : Int32,
        username : Bytes | String | IO,
        password : Bytes | String | IO,
        turn : Bool | Nil = nil,
        stun : Bool | Nil = nil
      )
        @id = id
        @ip = ip
        @ipv6 = ipv6
        @port = port
        @username = username
        @password = password
        @turn = turn
        @stun = stun
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!turn.nil? ? 1 : 0) |
            (!stun.nil? ? 2 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io, true)
        @ip.tl_serialize(io, true)
        @ipv6.tl_serialize(io, true)
        @port.tl_serialize(io, true)
        @username.tl_serialize(io, true)
        @password.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          id: Int64.tl_deserialize(io, true),
          ip: Bytes.tl_deserialize(io, true),
          ipv6: Bytes.tl_deserialize(io, true),
          port: Int32.tl_deserialize(io, true),
          username: Bytes.tl_deserialize(io, true),
          password: Bytes.tl_deserialize(io, true),
          turn: flags & 1 == 1,
          stun: flags & 2 == 1,
        )
      end
    end

    class PhoneCallProtocol < TypePhoneCallProtocol
      CONSTRUCTOR_ID = 0xFC878FC8

      getter min_layer : Int32
      getter max_layer : Int32
      getter library_versions : Array(Bytes)
      getter udp_p2p : Bool | Nil
      getter udp_reflector : Bool | Nil

      def initialize(
        min_layer : Int32,
        max_layer : Int32,
        library_versions : Array(Bytes),
        udp_p2p : Bool | Nil = nil,
        udp_reflector : Bool | Nil = nil
      )
        @min_layer = min_layer
        @max_layer = max_layer
        @library_versions = library_versions
        @udp_p2p = udp_p2p
        @udp_reflector = udp_reflector
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!udp_p2p.nil? ? 1 : 0) |
            (!udp_reflector.nil? ? 2 : 0)
        ).tl_serialize(io)
        @min_layer.tl_serialize(io, true)
        @max_layer.tl_serialize(io, true)
        @library_versions.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          min_layer: Int32.tl_deserialize(io, true),
          max_layer: Int32.tl_deserialize(io, true),
          library_versions: Array(Bytes).tl_deserialize(io, false),
          udp_p2p: flags & 1 == 1,
          udp_reflector: flags & 2 == 1,
        )
      end
    end

    class CdnPublicKey < TypeCdnPublicKey
      CONSTRUCTOR_ID = 0xC982EABA

      getter dc_id : Int32
      getter public_key : Bytes

      def initialize(
        dc_id : Int32,
        public_key : Bytes | String | IO
      )
        @dc_id = dc_id
        @public_key = public_key
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @dc_id.tl_serialize(io, true)
        @public_key.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          dc_id: Int32.tl_deserialize(io, true),
          public_key: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class CdnConfig < TypeCdnConfig
      CONSTRUCTOR_ID = 0x5725E40A

      getter public_keys : Array(Root::TypeCdnPublicKey)

      def initialize(
        public_keys : Array(Root::TypeCdnPublicKey)
      )
        @public_keys = public_keys
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @public_keys.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          public_keys: Array(Root::TypeCdnPublicKey).tl_deserialize(io, false),
        )
      end
    end

    class LangPackString < TypeLangPackString
      CONSTRUCTOR_ID = 0xCAD181F6

      getter key : Bytes
      getter value : Bytes

      def initialize(
        key : Bytes | String | IO,
        value : Bytes | String | IO
      )
        @key = key
        @value = value
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @key.tl_serialize(io, true)
        @value.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          key: Bytes.tl_deserialize(io, true),
          value: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class LangPackStringPluralized < TypeLangPackString
      CONSTRUCTOR_ID = 0x6C47AC9F

      getter key : Bytes
      getter other_value : Bytes
      getter zero_value : Bytes | Nil
      getter one_value : Bytes | Nil
      getter two_value : Bytes | Nil
      getter few_value : Bytes | Nil
      getter many_value : Bytes | Nil

      def initialize(
        key : Bytes | String | IO,
        other_value : Bytes | String | IO,
        zero_value : Bytes | Nil = nil,
        one_value : Bytes | Nil = nil,
        two_value : Bytes | Nil = nil,
        few_value : Bytes | Nil = nil,
        many_value : Bytes | Nil = nil
      )
        @key = key
        @other_value = other_value
        @zero_value = zero_value
        @one_value = one_value
        @two_value = two_value
        @few_value = few_value
        @many_value = many_value
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!zero_value.nil? ? 1 : 0) |
            (!one_value.nil? ? 2 : 0) |
            (!two_value.nil? ? 4 : 0) |
            (!few_value.nil? ? 8 : 0) |
            (!many_value.nil? ? 16 : 0)
        ).tl_serialize(io)
        @key.tl_serialize(io, true)
        @zero_value.tl_serialize(io, true) unless @zero_value.nil?
        @one_value.tl_serialize(io, true) unless @one_value.nil?
        @two_value.tl_serialize(io, true) unless @two_value.nil?
        @few_value.tl_serialize(io, true) unless @few_value.nil?
        @many_value.tl_serialize(io, true) unless @many_value.nil?
        @other_value.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          key: Bytes.tl_deserialize(io, true),
          other_value: Bytes.tl_deserialize(io, true),
          zero_value: flags & 1 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          one_value: flags & 2 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          two_value: flags & 4 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          few_value: flags & 8 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          many_value: flags & 16 == 1 ? Bytes.tl_deserialize(io, true) : nil,
        )
      end
    end

    class LangPackStringDeleted < TypeLangPackString
      CONSTRUCTOR_ID = 0x2979EEB2

      getter key : Bytes

      def initialize(
        key : Bytes | String | IO
      )
        @key = key
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @key.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          key: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class LangPackDifference < TypeLangPackDifference
      CONSTRUCTOR_ID = 0xF385C1F6

      getter lang_code : Bytes
      getter from_version : Int32
      getter version : Int32
      getter strings : Array(Root::TypeLangPackString)

      def initialize(
        lang_code : Bytes | String | IO,
        from_version : Int32,
        version : Int32,
        strings : Array(Root::TypeLangPackString)
      )
        @lang_code = lang_code
        @from_version = from_version
        @version = version
        @strings = strings
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @lang_code.tl_serialize(io, true)
        @from_version.tl_serialize(io, true)
        @version.tl_serialize(io, true)
        @strings.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          lang_code: Bytes.tl_deserialize(io, true),
          from_version: Int32.tl_deserialize(io, true),
          version: Int32.tl_deserialize(io, true),
          strings: Array(Root::TypeLangPackString).tl_deserialize(io, false),
        )
      end
    end

    class LangPackLanguage < TypeLangPackLanguage
      CONSTRUCTOR_ID = 0xEECA5CE3

      getter name : Bytes
      getter native_name : Bytes
      getter lang_code : Bytes
      getter plural_code : Bytes
      getter strings_count : Int32
      getter translated_count : Int32
      getter translations_url : Bytes
      getter official : Bool | Nil
      getter rtl : Bool | Nil
      getter beta : Bool | Nil
      getter base_lang_code : Bytes | Nil

      def initialize(
        name : Bytes | String | IO,
        native_name : Bytes | String | IO,
        lang_code : Bytes | String | IO,
        plural_code : Bytes | String | IO,
        strings_count : Int32,
        translated_count : Int32,
        translations_url : Bytes | String | IO,
        official : Bool | Nil = nil,
        rtl : Bool | Nil = nil,
        beta : Bool | Nil = nil,
        base_lang_code : Bytes | Nil = nil
      )
        @name = name
        @native_name = native_name
        @lang_code = lang_code
        @plural_code = plural_code
        @strings_count = strings_count
        @translated_count = translated_count
        @translations_url = translations_url
        @official = official
        @rtl = rtl
        @beta = beta
        @base_lang_code = base_lang_code
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!official.nil? ? 1 : 0) |
            (!rtl.nil? ? 4 : 0) |
            (!beta.nil? ? 8 : 0) |
            (!base_lang_code.nil? ? 2 : 0)
        ).tl_serialize(io)
        @name.tl_serialize(io, true)
        @native_name.tl_serialize(io, true)
        @lang_code.tl_serialize(io, true)
        @base_lang_code.tl_serialize(io, true) unless @base_lang_code.nil?
        @plural_code.tl_serialize(io, true)
        @strings_count.tl_serialize(io, true)
        @translated_count.tl_serialize(io, true)
        @translations_url.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          name: Bytes.tl_deserialize(io, true),
          native_name: Bytes.tl_deserialize(io, true),
          lang_code: Bytes.tl_deserialize(io, true),
          plural_code: Bytes.tl_deserialize(io, true),
          strings_count: Int32.tl_deserialize(io, true),
          translated_count: Int32.tl_deserialize(io, true),
          translations_url: Bytes.tl_deserialize(io, true),
          official: flags & 1 == 1,
          rtl: flags & 4 == 1,
          beta: flags & 8 == 1,
          base_lang_code: flags & 2 == 1 ? Bytes.tl_deserialize(io, true) : nil,
        )
      end
    end

    class ChannelAdminLogEventActionChangeTitle < TypeChannelAdminLogEventAction
      CONSTRUCTOR_ID = 0xE6DFB825

      getter prev_value : Bytes
      getter new_value : Bytes

      def initialize(
        prev_value : Bytes | String | IO,
        new_value : Bytes | String | IO
      )
        @prev_value = prev_value
        @new_value = new_value
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @prev_value.tl_serialize(io, true)
        @new_value.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          prev_value: Bytes.tl_deserialize(io, true),
          new_value: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class ChannelAdminLogEventActionChangeAbout < TypeChannelAdminLogEventAction
      CONSTRUCTOR_ID = 0x55188A2E

      getter prev_value : Bytes
      getter new_value : Bytes

      def initialize(
        prev_value : Bytes | String | IO,
        new_value : Bytes | String | IO
      )
        @prev_value = prev_value
        @new_value = new_value
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @prev_value.tl_serialize(io, true)
        @new_value.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          prev_value: Bytes.tl_deserialize(io, true),
          new_value: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class ChannelAdminLogEventActionChangeUsername < TypeChannelAdminLogEventAction
      CONSTRUCTOR_ID = 0x6A4AFC38

      getter prev_value : Bytes
      getter new_value : Bytes

      def initialize(
        prev_value : Bytes | String | IO,
        new_value : Bytes | String | IO
      )
        @prev_value = prev_value
        @new_value = new_value
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @prev_value.tl_serialize(io, true)
        @new_value.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          prev_value: Bytes.tl_deserialize(io, true),
          new_value: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class ChannelAdminLogEventActionChangePhoto < TypeChannelAdminLogEventAction
      CONSTRUCTOR_ID = 0x434BD2AF

      getter prev_photo : Root::TypePhoto
      getter new_photo : Root::TypePhoto

      def initialize(
        prev_photo : Root::TypePhoto,
        new_photo : Root::TypePhoto
      )
        @prev_photo = prev_photo
        @new_photo = new_photo
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @prev_photo.tl_serialize(io, false)
        @new_photo.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          prev_photo: Root::TypePhoto.tl_deserialize(io, false),
          new_photo: Root::TypePhoto.tl_deserialize(io, false),
        )
      end
    end

    class ChannelAdminLogEventActionToggleInvites < TypeChannelAdminLogEventAction
      CONSTRUCTOR_ID = 0x1B7907AE

      getter new_value : Bool

      def initialize(
        new_value : Bool
      )
        @new_value = new_value
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @new_value.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          new_value: Bool.tl_deserialize(io, false),
        )
      end
    end

    class ChannelAdminLogEventActionToggleSignatures < TypeChannelAdminLogEventAction
      CONSTRUCTOR_ID = 0x26AE0971

      getter new_value : Bool

      def initialize(
        new_value : Bool
      )
        @new_value = new_value
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @new_value.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          new_value: Bool.tl_deserialize(io, false),
        )
      end
    end

    class ChannelAdminLogEventActionUpdatePinned < TypeChannelAdminLogEventAction
      CONSTRUCTOR_ID = 0xE9E82C18

      getter message : Root::TypeMessage

      def initialize(
        message : Root::TypeMessage
      )
        @message = message
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @message.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          message: Root::TypeMessage.tl_deserialize(io, false),
        )
      end
    end

    class ChannelAdminLogEventActionEditMessage < TypeChannelAdminLogEventAction
      CONSTRUCTOR_ID = 0x709B2405

      getter prev_message : Root::TypeMessage
      getter new_message : Root::TypeMessage

      def initialize(
        prev_message : Root::TypeMessage,
        new_message : Root::TypeMessage
      )
        @prev_message = prev_message
        @new_message = new_message
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @prev_message.tl_serialize(io, false)
        @new_message.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          prev_message: Root::TypeMessage.tl_deserialize(io, false),
          new_message: Root::TypeMessage.tl_deserialize(io, false),
        )
      end
    end

    class ChannelAdminLogEventActionDeleteMessage < TypeChannelAdminLogEventAction
      CONSTRUCTOR_ID = 0x42E047BB

      getter message : Root::TypeMessage

      def initialize(
        message : Root::TypeMessage
      )
        @message = message
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @message.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          message: Root::TypeMessage.tl_deserialize(io, false),
        )
      end
    end

    class ChannelAdminLogEventActionParticipantJoin < TypeChannelAdminLogEventAction
      CONSTRUCTOR_ID = 0x183040D3

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class ChannelAdminLogEventActionParticipantLeave < TypeChannelAdminLogEventAction
      CONSTRUCTOR_ID = 0xF89777F2

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class ChannelAdminLogEventActionParticipantInvite < TypeChannelAdminLogEventAction
      CONSTRUCTOR_ID = 0xE31C34D8

      getter participant : Root::TypeChannelParticipant

      def initialize(
        participant : Root::TypeChannelParticipant
      )
        @participant = participant
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @participant.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          participant: Root::TypeChannelParticipant.tl_deserialize(io, false),
        )
      end
    end

    class ChannelAdminLogEventActionParticipantToggleBan < TypeChannelAdminLogEventAction
      CONSTRUCTOR_ID = 0xE6D83D7E

      getter prev_participant : Root::TypeChannelParticipant
      getter new_participant : Root::TypeChannelParticipant

      def initialize(
        prev_participant : Root::TypeChannelParticipant,
        new_participant : Root::TypeChannelParticipant
      )
        @prev_participant = prev_participant
        @new_participant = new_participant
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @prev_participant.tl_serialize(io, false)
        @new_participant.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          prev_participant: Root::TypeChannelParticipant.tl_deserialize(io, false),
          new_participant: Root::TypeChannelParticipant.tl_deserialize(io, false),
        )
      end
    end

    class ChannelAdminLogEventActionParticipantToggleAdmin < TypeChannelAdminLogEventAction
      CONSTRUCTOR_ID = 0xD5676710

      getter prev_participant : Root::TypeChannelParticipant
      getter new_participant : Root::TypeChannelParticipant

      def initialize(
        prev_participant : Root::TypeChannelParticipant,
        new_participant : Root::TypeChannelParticipant
      )
        @prev_participant = prev_participant
        @new_participant = new_participant
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @prev_participant.tl_serialize(io, false)
        @new_participant.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          prev_participant: Root::TypeChannelParticipant.tl_deserialize(io, false),
          new_participant: Root::TypeChannelParticipant.tl_deserialize(io, false),
        )
      end
    end

    class ChannelAdminLogEventActionChangeStickerSet < TypeChannelAdminLogEventAction
      CONSTRUCTOR_ID = 0xB1C3CAA7

      getter prev_stickerset : Root::TypeInputStickerSet
      getter new_stickerset : Root::TypeInputStickerSet

      def initialize(
        prev_stickerset : Root::TypeInputStickerSet,
        new_stickerset : Root::TypeInputStickerSet
      )
        @prev_stickerset = prev_stickerset
        @new_stickerset = new_stickerset
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @prev_stickerset.tl_serialize(io, false)
        @new_stickerset.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          prev_stickerset: Root::TypeInputStickerSet.tl_deserialize(io, false),
          new_stickerset: Root::TypeInputStickerSet.tl_deserialize(io, false),
        )
      end
    end

    class ChannelAdminLogEventActionTogglePreHistoryHidden < TypeChannelAdminLogEventAction
      CONSTRUCTOR_ID = 0x5F5C95F1

      getter new_value : Bool

      def initialize(
        new_value : Bool
      )
        @new_value = new_value
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @new_value.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          new_value: Bool.tl_deserialize(io, false),
        )
      end
    end

    class ChannelAdminLogEventActionDefaultBannedRights < TypeChannelAdminLogEventAction
      CONSTRUCTOR_ID = 0x2DF5FC0A

      getter prev_banned_rights : Root::TypeChatBannedRights
      getter new_banned_rights : Root::TypeChatBannedRights

      def initialize(
        prev_banned_rights : Root::TypeChatBannedRights,
        new_banned_rights : Root::TypeChatBannedRights
      )
        @prev_banned_rights = prev_banned_rights
        @new_banned_rights = new_banned_rights
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @prev_banned_rights.tl_serialize(io, false)
        @new_banned_rights.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          prev_banned_rights: Root::TypeChatBannedRights.tl_deserialize(io, false),
          new_banned_rights: Root::TypeChatBannedRights.tl_deserialize(io, false),
        )
      end
    end

    class ChannelAdminLogEventActionStopPoll < TypeChannelAdminLogEventAction
      CONSTRUCTOR_ID = 0x8F079643

      getter message : Root::TypeMessage

      def initialize(
        message : Root::TypeMessage
      )
        @message = message
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @message.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          message: Root::TypeMessage.tl_deserialize(io, false),
        )
      end
    end

    class ChannelAdminLogEventActionChangeLinkedChat < TypeChannelAdminLogEventAction
      CONSTRUCTOR_ID = 0x050C7AC8

      getter prev_value : Int64
      getter new_value : Int64

      def initialize(
        prev_value : Int64,
        new_value : Int64
      )
        @prev_value = prev_value
        @new_value = new_value
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @prev_value.tl_serialize(io, true)
        @new_value.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          prev_value: Int64.tl_deserialize(io, true),
          new_value: Int64.tl_deserialize(io, true),
        )
      end
    end

    class ChannelAdminLogEventActionChangeLocation < TypeChannelAdminLogEventAction
      CONSTRUCTOR_ID = 0x0E6B76AE

      getter prev_value : Root::TypeChannelLocation
      getter new_value : Root::TypeChannelLocation

      def initialize(
        prev_value : Root::TypeChannelLocation,
        new_value : Root::TypeChannelLocation
      )
        @prev_value = prev_value
        @new_value = new_value
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @prev_value.tl_serialize(io, false)
        @new_value.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          prev_value: Root::TypeChannelLocation.tl_deserialize(io, false),
          new_value: Root::TypeChannelLocation.tl_deserialize(io, false),
        )
      end
    end

    class ChannelAdminLogEventActionToggleSlowMode < TypeChannelAdminLogEventAction
      CONSTRUCTOR_ID = 0x53909779

      getter prev_value : Int32
      getter new_value : Int32

      def initialize(
        prev_value : Int32,
        new_value : Int32
      )
        @prev_value = prev_value
        @new_value = new_value
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @prev_value.tl_serialize(io, true)
        @new_value.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          prev_value: Int32.tl_deserialize(io, true),
          new_value: Int32.tl_deserialize(io, true),
        )
      end
    end

    class ChannelAdminLogEventActionStartGroupCall < TypeChannelAdminLogEventAction
      CONSTRUCTOR_ID = 0x23209745

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

      def self.tl_deserialize(io : IO, bare = false)
        new(
          call: Root::TypeInputGroupCall.tl_deserialize(io, false),
        )
      end
    end

    class ChannelAdminLogEventActionDiscardGroupCall < TypeChannelAdminLogEventAction
      CONSTRUCTOR_ID = 0xDB9F9140

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

      def self.tl_deserialize(io : IO, bare = false)
        new(
          call: Root::TypeInputGroupCall.tl_deserialize(io, false),
        )
      end
    end

    class ChannelAdminLogEventActionParticipantMute < TypeChannelAdminLogEventAction
      CONSTRUCTOR_ID = 0xF92424D2

      getter participant : Root::TypeGroupCallParticipant

      def initialize(
        participant : Root::TypeGroupCallParticipant
      )
        @participant = participant
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @participant.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          participant: Root::TypeGroupCallParticipant.tl_deserialize(io, false),
        )
      end
    end

    class ChannelAdminLogEventActionParticipantUnmute < TypeChannelAdminLogEventAction
      CONSTRUCTOR_ID = 0xE64429C0

      getter participant : Root::TypeGroupCallParticipant

      def initialize(
        participant : Root::TypeGroupCallParticipant
      )
        @participant = participant
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @participant.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          participant: Root::TypeGroupCallParticipant.tl_deserialize(io, false),
        )
      end
    end

    class ChannelAdminLogEventActionToggleGroupCallSetting < TypeChannelAdminLogEventAction
      CONSTRUCTOR_ID = 0x56D6A247

      getter join_muted : Bool

      def initialize(
        join_muted : Bool
      )
        @join_muted = join_muted
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @join_muted.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          join_muted: Bool.tl_deserialize(io, false),
        )
      end
    end

    class ChannelAdminLogEventActionParticipantJoinByInvite < TypeChannelAdminLogEventAction
      CONSTRUCTOR_ID = 0x5CDADA77

      getter invite : Root::TypeExportedChatInvite

      def initialize(
        invite : Root::TypeExportedChatInvite
      )
        @invite = invite
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @invite.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          invite: Root::TypeExportedChatInvite.tl_deserialize(io, false),
        )
      end
    end

    class ChannelAdminLogEventActionExportedInviteDelete < TypeChannelAdminLogEventAction
      CONSTRUCTOR_ID = 0x5A50FCA4

      getter invite : Root::TypeExportedChatInvite

      def initialize(
        invite : Root::TypeExportedChatInvite
      )
        @invite = invite
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @invite.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          invite: Root::TypeExportedChatInvite.tl_deserialize(io, false),
        )
      end
    end

    class ChannelAdminLogEventActionExportedInviteRevoke < TypeChannelAdminLogEventAction
      CONSTRUCTOR_ID = 0x410A134E

      getter invite : Root::TypeExportedChatInvite

      def initialize(
        invite : Root::TypeExportedChatInvite
      )
        @invite = invite
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @invite.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          invite: Root::TypeExportedChatInvite.tl_deserialize(io, false),
        )
      end
    end

    class ChannelAdminLogEventActionExportedInviteEdit < TypeChannelAdminLogEventAction
      CONSTRUCTOR_ID = 0xE90EBB59

      getter prev_invite : Root::TypeExportedChatInvite
      getter new_invite : Root::TypeExportedChatInvite

      def initialize(
        prev_invite : Root::TypeExportedChatInvite,
        new_invite : Root::TypeExportedChatInvite
      )
        @prev_invite = prev_invite
        @new_invite = new_invite
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @prev_invite.tl_serialize(io, false)
        @new_invite.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          prev_invite: Root::TypeExportedChatInvite.tl_deserialize(io, false),
          new_invite: Root::TypeExportedChatInvite.tl_deserialize(io, false),
        )
      end
    end

    class ChannelAdminLogEventActionParticipantVolume < TypeChannelAdminLogEventAction
      CONSTRUCTOR_ID = 0x3E7F6847

      getter participant : Root::TypeGroupCallParticipant

      def initialize(
        participant : Root::TypeGroupCallParticipant
      )
        @participant = participant
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @participant.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          participant: Root::TypeGroupCallParticipant.tl_deserialize(io, false),
        )
      end
    end

    class ChannelAdminLogEventActionChangeHistoryTTL < TypeChannelAdminLogEventAction
      CONSTRUCTOR_ID = 0x6E941A38

      getter prev_value : Int32
      getter new_value : Int32

      def initialize(
        prev_value : Int32,
        new_value : Int32
      )
        @prev_value = prev_value
        @new_value = new_value
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @prev_value.tl_serialize(io, true)
        @new_value.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          prev_value: Int32.tl_deserialize(io, true),
          new_value: Int32.tl_deserialize(io, true),
        )
      end
    end

    class ChannelAdminLogEventActionChangeTheme < TypeChannelAdminLogEventAction
      CONSTRUCTOR_ID = 0xFE69018D

      getter prev_value : Bytes
      getter new_value : Bytes

      def initialize(
        prev_value : Bytes | String | IO,
        new_value : Bytes | String | IO
      )
        @prev_value = prev_value
        @new_value = new_value
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @prev_value.tl_serialize(io, true)
        @new_value.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          prev_value: Bytes.tl_deserialize(io, true),
          new_value: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class ChannelAdminLogEvent < TypeChannelAdminLogEvent
      CONSTRUCTOR_ID = 0x1FAD68CD

      getter id : Int64
      getter date : Int32
      getter user_id : Int64
      getter action : Root::TypeChannelAdminLogEventAction

      def initialize(
        id : Int64,
        date : Int32,
        user_id : Int64,
        action : Root::TypeChannelAdminLogEventAction
      )
        @id = id
        @date = date
        @user_id = user_id
        @action = action
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        @date.tl_serialize(io, true)
        @user_id.tl_serialize(io, true)
        @action.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Int64.tl_deserialize(io, true),
          date: Int32.tl_deserialize(io, true),
          user_id: Int64.tl_deserialize(io, true),
          action: Root::TypeChannelAdminLogEventAction.tl_deserialize(io, false),
        )
      end
    end

    class ChannelAdminLogEventsFilter < TypeChannelAdminLogEventsFilter
      CONSTRUCTOR_ID = 0xEA107AE4

      getter join : Bool | Nil
      getter leave : Bool | Nil
      getter invite : Bool | Nil
      getter ban : Bool | Nil
      getter unban : Bool | Nil
      getter kick : Bool | Nil
      getter unkick : Bool | Nil
      getter promote : Bool | Nil
      getter demote : Bool | Nil
      getter info : Bool | Nil
      getter settings : Bool | Nil
      getter pinned : Bool | Nil
      getter edit : Bool | Nil
      getter delete : Bool | Nil
      getter group_call : Bool | Nil
      getter invites : Bool | Nil

      def initialize(
        join : Bool | Nil = nil,
        leave : Bool | Nil = nil,
        invite : Bool | Nil = nil,
        ban : Bool | Nil = nil,
        unban : Bool | Nil = nil,
        kick : Bool | Nil = nil,
        unkick : Bool | Nil = nil,
        promote : Bool | Nil = nil,
        demote : Bool | Nil = nil,
        info : Bool | Nil = nil,
        settings : Bool | Nil = nil,
        pinned : Bool | Nil = nil,
        edit : Bool | Nil = nil,
        delete : Bool | Nil = nil,
        group_call : Bool | Nil = nil,
        invites : Bool | Nil = nil
      )
        @join = join
        @leave = leave
        @invite = invite
        @ban = ban
        @unban = unban
        @kick = kick
        @unkick = unkick
        @promote = promote
        @demote = demote
        @info = info
        @settings = settings
        @pinned = pinned
        @edit = edit
        @delete = delete
        @group_call = group_call
        @invites = invites
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!join.nil? ? 1 : 0) |
            (!leave.nil? ? 2 : 0) |
            (!invite.nil? ? 4 : 0) |
            (!ban.nil? ? 8 : 0) |
            (!unban.nil? ? 16 : 0) |
            (!kick.nil? ? 32 : 0) |
            (!unkick.nil? ? 64 : 0) |
            (!promote.nil? ? 128 : 0) |
            (!demote.nil? ? 256 : 0) |
            (!info.nil? ? 512 : 0) |
            (!settings.nil? ? 1024 : 0) |
            (!pinned.nil? ? 2048 : 0) |
            (!edit.nil? ? 4096 : 0) |
            (!delete.nil? ? 8192 : 0) |
            (!group_call.nil? ? 16384 : 0) |
            (!invites.nil? ? 32768 : 0)
        ).tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          join: flags & 1 == 1,
          leave: flags & 2 == 1,
          invite: flags & 4 == 1,
          ban: flags & 8 == 1,
          unban: flags & 16 == 1,
          kick: flags & 32 == 1,
          unkick: flags & 64 == 1,
          promote: flags & 128 == 1,
          demote: flags & 256 == 1,
          info: flags & 512 == 1,
          settings: flags & 1024 == 1,
          pinned: flags & 2048 == 1,
          edit: flags & 4096 == 1,
          delete: flags & 8192 == 1,
          group_call: flags & 16384 == 1,
          invites: flags & 32768 == 1,
        )
      end
    end

    class PopularContact < TypePopularContact
      CONSTRUCTOR_ID = 0x5CE14175

      getter client_id : Int64
      getter importers : Int32

      def initialize(
        client_id : Int64,
        importers : Int32
      )
        @client_id = client_id
        @importers = importers
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @client_id.tl_serialize(io, true)
        @importers.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          client_id: Int64.tl_deserialize(io, true),
          importers: Int32.tl_deserialize(io, true),
        )
      end
    end

    class RecentMeUrlUnknown < TypeRecentMeUrl
      CONSTRUCTOR_ID = 0x46E1D13D

      getter url : Bytes

      def initialize(
        url : Bytes | String | IO
      )
        @url = url
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @url.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          url: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class RecentMeUrlUser < TypeRecentMeUrl
      CONSTRUCTOR_ID = 0xB92C09E2

      getter url : Bytes
      getter user_id : Int64

      def initialize(
        url : Bytes | String | IO,
        user_id : Int64
      )
        @url = url
        @user_id = user_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @url.tl_serialize(io, true)
        @user_id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          url: Bytes.tl_deserialize(io, true),
          user_id: Int64.tl_deserialize(io, true),
        )
      end
    end

    class RecentMeUrlChat < TypeRecentMeUrl
      CONSTRUCTOR_ID = 0xB2DA71D2

      getter url : Bytes
      getter chat_id : Int64

      def initialize(
        url : Bytes | String | IO,
        chat_id : Int64
      )
        @url = url
        @chat_id = chat_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @url.tl_serialize(io, true)
        @chat_id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          url: Bytes.tl_deserialize(io, true),
          chat_id: Int64.tl_deserialize(io, true),
        )
      end
    end

    class RecentMeUrlChatInvite < TypeRecentMeUrl
      CONSTRUCTOR_ID = 0xEB49081D

      getter url : Bytes
      getter chat_invite : Root::TypeChatInvite

      def initialize(
        url : Bytes | String | IO,
        chat_invite : Root::TypeChatInvite
      )
        @url = url
        @chat_invite = chat_invite
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @url.tl_serialize(io, true)
        @chat_invite.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          url: Bytes.tl_deserialize(io, true),
          chat_invite: Root::TypeChatInvite.tl_deserialize(io, false),
        )
      end
    end

    class RecentMeUrlStickerSet < TypeRecentMeUrl
      CONSTRUCTOR_ID = 0xBC0A57DC

      getter url : Bytes
      getter set : Root::TypeStickerSetCovered

      def initialize(
        url : Bytes | String | IO,
        set : Root::TypeStickerSetCovered
      )
        @url = url
        @set = set
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @url.tl_serialize(io, true)
        @set.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          url: Bytes.tl_deserialize(io, true),
          set: Root::TypeStickerSetCovered.tl_deserialize(io, false),
        )
      end
    end

    class InputSingleMedia < TypeInputSingleMedia
      CONSTRUCTOR_ID = 0x1CC6E91F

      getter media : Root::TypeInputMedia
      getter random_id : Int64
      getter message : Bytes
      getter entities : Array(Root::TypeMessageEntity) | Nil

      def initialize(
        media : Root::TypeInputMedia,
        random_id : Int64,
        message : Bytes | String | IO,
        entities : Array(Root::TypeMessageEntity) | Nil = nil
      )
        @media = media
        @random_id = random_id
        @message = message
        @entities = entities
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!entities.nil? ? 1 : 0)
        ).tl_serialize(io)
        @media.tl_serialize(io, false)
        @random_id.tl_serialize(io, true)
        @message.tl_serialize(io, true)
        @entities.tl_serialize(io, false) unless @entities.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          media: Root::TypeInputMedia.tl_deserialize(io, false),
          random_id: Int64.tl_deserialize(io, true),
          message: Bytes.tl_deserialize(io, true),
          entities: flags & 1 == 1 ? Array(Root::TypeMessageEntity).tl_deserialize(io, false) : nil,
        )
      end
    end

    class WebAuthorization < TypeWebAuthorization
      CONSTRUCTOR_ID = 0xA6F8F452

      getter hash : Int64
      getter bot_id : Int64
      getter domain : Bytes
      getter browser : Bytes
      getter platform : Bytes
      getter date_created : Int32
      getter date_active : Int32
      getter ip : Bytes
      getter region : Bytes

      def initialize(
        hash : Int64,
        bot_id : Int64,
        domain : Bytes | String | IO,
        browser : Bytes | String | IO,
        platform : Bytes | String | IO,
        date_created : Int32,
        date_active : Int32,
        ip : Bytes | String | IO,
        region : Bytes | String | IO
      )
        @hash = hash
        @bot_id = bot_id
        @domain = domain
        @browser = browser
        @platform = platform
        @date_created = date_created
        @date_active = date_active
        @ip = ip
        @region = region
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @hash.tl_serialize(io, true)
        @bot_id.tl_serialize(io, true)
        @domain.tl_serialize(io, true)
        @browser.tl_serialize(io, true)
        @platform.tl_serialize(io, true)
        @date_created.tl_serialize(io, true)
        @date_active.tl_serialize(io, true)
        @ip.tl_serialize(io, true)
        @region.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          hash: Int64.tl_deserialize(io, true),
          bot_id: Int64.tl_deserialize(io, true),
          domain: Bytes.tl_deserialize(io, true),
          browser: Bytes.tl_deserialize(io, true),
          platform: Bytes.tl_deserialize(io, true),
          date_created: Int32.tl_deserialize(io, true),
          date_active: Int32.tl_deserialize(io, true),
          ip: Bytes.tl_deserialize(io, true),
          region: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class InputMessageID < TypeInputMessage
      CONSTRUCTOR_ID = 0xA676A322

      getter id : Int32

      def initialize(
        id : Int32
      )
        @id = id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Int32.tl_deserialize(io, true),
        )
      end
    end

    class InputMessageReplyTo < TypeInputMessage
      CONSTRUCTOR_ID = 0xBAD88395

      getter id : Int32

      def initialize(
        id : Int32
      )
        @id = id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Int32.tl_deserialize(io, true),
        )
      end
    end

    class InputMessagePinned < TypeInputMessage
      CONSTRUCTOR_ID = 0x86872538

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputMessageCallbackQuery < TypeInputMessage
      CONSTRUCTOR_ID = 0xACFA1A7E

      getter id : Int32
      getter query_id : Int64

      def initialize(
        id : Int32,
        query_id : Int64
      )
        @id = id
        @query_id = query_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        @query_id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Int32.tl_deserialize(io, true),
          query_id: Int64.tl_deserialize(io, true),
        )
      end
    end

    class InputDialogPeer < TypeInputDialogPeer
      CONSTRUCTOR_ID = 0xFCAAFEB7

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

      def self.tl_deserialize(io : IO, bare = false)
        new(
          peer: Root::TypeInputPeer.tl_deserialize(io, false),
        )
      end
    end

    class InputDialogPeerFolder < TypeInputDialogPeer
      CONSTRUCTOR_ID = 0x64600527

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

      def self.tl_deserialize(io : IO, bare = false)
        new(
          folder_id: Int32.tl_deserialize(io, true),
        )
      end
    end

    class DialogPeer < TypeDialogPeer
      CONSTRUCTOR_ID = 0xE56DBF05

      getter peer : Root::TypePeer

      def initialize(
        peer : Root::TypePeer
      )
        @peer = peer
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @peer.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          peer: Root::TypePeer.tl_deserialize(io, false),
        )
      end
    end

    class DialogPeerFolder < TypeDialogPeer
      CONSTRUCTOR_ID = 0x514519E2

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

      def self.tl_deserialize(io : IO, bare = false)
        new(
          folder_id: Int32.tl_deserialize(io, true),
        )
      end
    end

    class FileHash < TypeFileHash
      CONSTRUCTOR_ID = 0x6242C773

      getter offset : Int32
      getter limit : Int32
      getter hash : Bytes

      def initialize(
        offset : Int32,
        limit : Int32,
        hash : Bytes | String | IO
      )
        @offset = offset
        @limit = limit
        @hash = TL::Utils.parse_bytes!(hash)
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @offset.tl_serialize(io, true)
        @limit.tl_serialize(io, true)
        @hash.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          offset: Int32.tl_deserialize(io, true),
          limit: Int32.tl_deserialize(io, true),
          hash: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class InputClientProxy < TypeInputClientProxy
      CONSTRUCTOR_ID = 0x75588B3F

      getter address : Bytes
      getter port : Int32

      def initialize(
        address : Bytes | String | IO,
        port : Int32
      )
        @address = address
        @port = port
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @address.tl_serialize(io, true)
        @port.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          address: Bytes.tl_deserialize(io, true),
          port: Int32.tl_deserialize(io, true),
        )
      end
    end

    class InputSecureFileUploaded < TypeInputSecureFile
      CONSTRUCTOR_ID = 0x3334B0F0

      getter id : Int64
      getter parts : Int32
      getter md5_checksum : Bytes
      getter file_hash : Bytes
      getter secret : Bytes

      def initialize(
        id : Int64,
        parts : Int32,
        md5_checksum : Bytes | String | IO,
        file_hash : Bytes | String | IO,
        secret : Bytes | String | IO
      )
        @id = id
        @parts = parts
        @md5_checksum = md5_checksum
        @file_hash = TL::Utils.parse_bytes!(file_hash)
        @secret = TL::Utils.parse_bytes!(secret)
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        @parts.tl_serialize(io, true)
        @md5_checksum.tl_serialize(io, true)
        @file_hash.tl_serialize(io, true)
        @secret.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Int64.tl_deserialize(io, true),
          parts: Int32.tl_deserialize(io, true),
          md5_checksum: Bytes.tl_deserialize(io, true),
          file_hash: Bytes.tl_deserialize(io, true),
          secret: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class InputSecureFile < TypeInputSecureFile
      CONSTRUCTOR_ID = 0x5367E5BE

      getter id : Int64
      getter access_hash : Int64

      def initialize(
        id : Int64,
        access_hash : Int64
      )
        @id = id
        @access_hash = access_hash
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Int64.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
        )
      end
    end

    class SecureFileEmpty < TypeSecureFile
      CONSTRUCTOR_ID = 0x64199744

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class SecureFile < TypeSecureFile
      CONSTRUCTOR_ID = 0xE0277A62

      getter id : Int64
      getter access_hash : Int64
      getter size : Int32
      getter dc_id : Int32
      getter date : Int32
      getter file_hash : Bytes
      getter secret : Bytes

      def initialize(
        id : Int64,
        access_hash : Int64,
        size : Int32,
        dc_id : Int32,
        date : Int32,
        file_hash : Bytes | String | IO,
        secret : Bytes | String | IO
      )
        @id = id
        @access_hash = access_hash
        @size = size
        @dc_id = dc_id
        @date = date
        @file_hash = TL::Utils.parse_bytes!(file_hash)
        @secret = TL::Utils.parse_bytes!(secret)
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true)
        @size.tl_serialize(io, true)
        @dc_id.tl_serialize(io, true)
        @date.tl_serialize(io, true)
        @file_hash.tl_serialize(io, true)
        @secret.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Int64.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
          size: Int32.tl_deserialize(io, true),
          dc_id: Int32.tl_deserialize(io, true),
          date: Int32.tl_deserialize(io, true),
          file_hash: Bytes.tl_deserialize(io, true),
          secret: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class SecureData < TypeSecureData
      CONSTRUCTOR_ID = 0x8AEABEC3

      getter data : Bytes
      getter data_hash : Bytes
      getter secret : Bytes

      def initialize(
        data : Bytes | String | IO,
        data_hash : Bytes | String | IO,
        secret : Bytes | String | IO
      )
        @data = TL::Utils.parse_bytes!(data)
        @data_hash = TL::Utils.parse_bytes!(data_hash)
        @secret = TL::Utils.parse_bytes!(secret)
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @data.tl_serialize(io, true)
        @data_hash.tl_serialize(io, true)
        @secret.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          data: Bytes.tl_deserialize(io, true),
          data_hash: Bytes.tl_deserialize(io, true),
          secret: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class SecurePlainPhone < TypeSecurePlainData
      CONSTRUCTOR_ID = 0x7D6099DD

      getter phone : Bytes

      def initialize(
        phone : Bytes | String | IO
      )
        @phone = phone
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @phone.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          phone: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class SecurePlainEmail < TypeSecurePlainData
      CONSTRUCTOR_ID = 0x21EC5A5F

      getter email : Bytes

      def initialize(
        email : Bytes | String | IO
      )
        @email = email
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @email.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          email: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class SecureValueTypePersonalDetails < TypeSecureValueType
      CONSTRUCTOR_ID = 0x9D2A81E3

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class SecureValueTypePassport < TypeSecureValueType
      CONSTRUCTOR_ID = 0x3DAC6A00

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class SecureValueTypeDriverLicense < TypeSecureValueType
      CONSTRUCTOR_ID = 0x06E425C4

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class SecureValueTypeIdentityCard < TypeSecureValueType
      CONSTRUCTOR_ID = 0xA0D0744B

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class SecureValueTypeInternalPassport < TypeSecureValueType
      CONSTRUCTOR_ID = 0x99A48F23

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class SecureValueTypeAddress < TypeSecureValueType
      CONSTRUCTOR_ID = 0xCBE31E26

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class SecureValueTypeUtilityBill < TypeSecureValueType
      CONSTRUCTOR_ID = 0xFC36954E

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class SecureValueTypeBankStatement < TypeSecureValueType
      CONSTRUCTOR_ID = 0x89137C0D

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class SecureValueTypeRentalAgreement < TypeSecureValueType
      CONSTRUCTOR_ID = 0x8B883488

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class SecureValueTypePassportRegistration < TypeSecureValueType
      CONSTRUCTOR_ID = 0x99E3806A

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class SecureValueTypeTemporaryRegistration < TypeSecureValueType
      CONSTRUCTOR_ID = 0xEA02EC33

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class SecureValueTypePhone < TypeSecureValueType
      CONSTRUCTOR_ID = 0xB320AADB

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class SecureValueTypeEmail < TypeSecureValueType
      CONSTRUCTOR_ID = 0x8E3CA7EE

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class SecureValue < TypeSecureValue
      CONSTRUCTOR_ID = 0x187FA0CA

      getter type : Root::TypeSecureValueType
      getter hash : Bytes
      getter data : Root::TypeSecureData | Nil
      getter front_side : Root::TypeSecureFile | Nil
      getter reverse_side : Root::TypeSecureFile | Nil
      getter selfie : Root::TypeSecureFile | Nil
      getter translation : Array(Root::TypeSecureFile) | Nil
      getter files : Array(Root::TypeSecureFile) | Nil
      getter plain_data : Root::TypeSecurePlainData | Nil

      def initialize(
        type : Root::TypeSecureValueType,
        hash : Bytes | String | IO,
        data : Root::TypeSecureData | Nil = nil,
        front_side : Root::TypeSecureFile | Nil = nil,
        reverse_side : Root::TypeSecureFile | Nil = nil,
        selfie : Root::TypeSecureFile | Nil = nil,
        translation : Array(Root::TypeSecureFile) | Nil = nil,
        files : Array(Root::TypeSecureFile) | Nil = nil,
        plain_data : Root::TypeSecurePlainData | Nil = nil
      )
        @type = type
        @hash = TL::Utils.parse_bytes!(hash)
        @data = data
        @front_side = front_side
        @reverse_side = reverse_side
        @selfie = selfie
        @translation = translation
        @files = files
        @plain_data = plain_data
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!data.nil? ? 1 : 0) |
            (!front_side.nil? ? 2 : 0) |
            (!reverse_side.nil? ? 4 : 0) |
            (!selfie.nil? ? 8 : 0) |
            (!translation.nil? ? 64 : 0) |
            (!files.nil? ? 16 : 0) |
            (!plain_data.nil? ? 32 : 0)
        ).tl_serialize(io)
        @type.tl_serialize(io, false)
        @data.tl_serialize(io, false) unless @data.nil?
        @front_side.tl_serialize(io, false) unless @front_side.nil?
        @reverse_side.tl_serialize(io, false) unless @reverse_side.nil?
        @selfie.tl_serialize(io, false) unless @selfie.nil?
        @translation.tl_serialize(io, false) unless @translation.nil?
        @files.tl_serialize(io, false) unless @files.nil?
        @plain_data.tl_serialize(io, false) unless @plain_data.nil?
        @hash.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          type: Root::TypeSecureValueType.tl_deserialize(io, false),
          hash: Bytes.tl_deserialize(io, true),
          data: flags & 1 == 1 ? Root::TypeSecureData.tl_deserialize(io, false) : nil,
          front_side: flags & 2 == 1 ? Root::TypeSecureFile.tl_deserialize(io, false) : nil,
          reverse_side: flags & 4 == 1 ? Root::TypeSecureFile.tl_deserialize(io, false) : nil,
          selfie: flags & 8 == 1 ? Root::TypeSecureFile.tl_deserialize(io, false) : nil,
          translation: flags & 64 == 1 ? Array(Root::TypeSecureFile).tl_deserialize(io, false) : nil,
          files: flags & 16 == 1 ? Array(Root::TypeSecureFile).tl_deserialize(io, false) : nil,
          plain_data: flags & 32 == 1 ? Root::TypeSecurePlainData.tl_deserialize(io, false) : nil,
        )
      end
    end

    class InputSecureValue < TypeInputSecureValue
      CONSTRUCTOR_ID = 0xDB21D0A7

      getter type : Root::TypeSecureValueType
      getter data : Root::TypeSecureData | Nil
      getter front_side : Root::TypeInputSecureFile | Nil
      getter reverse_side : Root::TypeInputSecureFile | Nil
      getter selfie : Root::TypeInputSecureFile | Nil
      getter translation : Array(Root::TypeInputSecureFile) | Nil
      getter files : Array(Root::TypeInputSecureFile) | Nil
      getter plain_data : Root::TypeSecurePlainData | Nil

      def initialize(
        type : Root::TypeSecureValueType,
        data : Root::TypeSecureData | Nil = nil,
        front_side : Root::TypeInputSecureFile | Nil = nil,
        reverse_side : Root::TypeInputSecureFile | Nil = nil,
        selfie : Root::TypeInputSecureFile | Nil = nil,
        translation : Array(Root::TypeInputSecureFile) | Nil = nil,
        files : Array(Root::TypeInputSecureFile) | Nil = nil,
        plain_data : Root::TypeSecurePlainData | Nil = nil
      )
        @type = type
        @data = data
        @front_side = front_side
        @reverse_side = reverse_side
        @selfie = selfie
        @translation = translation
        @files = files
        @plain_data = plain_data
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!data.nil? ? 1 : 0) |
            (!front_side.nil? ? 2 : 0) |
            (!reverse_side.nil? ? 4 : 0) |
            (!selfie.nil? ? 8 : 0) |
            (!translation.nil? ? 64 : 0) |
            (!files.nil? ? 16 : 0) |
            (!plain_data.nil? ? 32 : 0)
        ).tl_serialize(io)
        @type.tl_serialize(io, false)
        @data.tl_serialize(io, false) unless @data.nil?
        @front_side.tl_serialize(io, false) unless @front_side.nil?
        @reverse_side.tl_serialize(io, false) unless @reverse_side.nil?
        @selfie.tl_serialize(io, false) unless @selfie.nil?
        @translation.tl_serialize(io, false) unless @translation.nil?
        @files.tl_serialize(io, false) unless @files.nil?
        @plain_data.tl_serialize(io, false) unless @plain_data.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          type: Root::TypeSecureValueType.tl_deserialize(io, false),
          data: flags & 1 == 1 ? Root::TypeSecureData.tl_deserialize(io, false) : nil,
          front_side: flags & 2 == 1 ? Root::TypeInputSecureFile.tl_deserialize(io, false) : nil,
          reverse_side: flags & 4 == 1 ? Root::TypeInputSecureFile.tl_deserialize(io, false) : nil,
          selfie: flags & 8 == 1 ? Root::TypeInputSecureFile.tl_deserialize(io, false) : nil,
          translation: flags & 64 == 1 ? Array(Root::TypeInputSecureFile).tl_deserialize(io, false) : nil,
          files: flags & 16 == 1 ? Array(Root::TypeInputSecureFile).tl_deserialize(io, false) : nil,
          plain_data: flags & 32 == 1 ? Root::TypeSecurePlainData.tl_deserialize(io, false) : nil,
        )
      end
    end

    class SecureValueHash < TypeSecureValueHash
      CONSTRUCTOR_ID = 0xED1ECDB0

      getter type : Root::TypeSecureValueType
      getter hash : Bytes

      def initialize(
        type : Root::TypeSecureValueType,
        hash : Bytes | String | IO
      )
        @type = type
        @hash = TL::Utils.parse_bytes!(hash)
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @type.tl_serialize(io, false)
        @hash.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          type: Root::TypeSecureValueType.tl_deserialize(io, false),
          hash: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class SecureValueErrorData < TypeSecureValueError
      CONSTRUCTOR_ID = 0xE8A40BD9

      getter type : Root::TypeSecureValueType
      getter data_hash : Bytes
      getter field : Bytes
      getter text : Bytes

      def initialize(
        type : Root::TypeSecureValueType,
        data_hash : Bytes | String | IO,
        field : Bytes | String | IO,
        text : Bytes | String | IO
      )
        @type = type
        @data_hash = TL::Utils.parse_bytes!(data_hash)
        @field = field
        @text = text
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @type.tl_serialize(io, false)
        @data_hash.tl_serialize(io, true)
        @field.tl_serialize(io, true)
        @text.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          type: Root::TypeSecureValueType.tl_deserialize(io, false),
          data_hash: Bytes.tl_deserialize(io, true),
          field: Bytes.tl_deserialize(io, true),
          text: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class SecureValueErrorFrontSide < TypeSecureValueError
      CONSTRUCTOR_ID = 0x00BE3DFA

      getter type : Root::TypeSecureValueType
      getter file_hash : Bytes
      getter text : Bytes

      def initialize(
        type : Root::TypeSecureValueType,
        file_hash : Bytes | String | IO,
        text : Bytes | String | IO
      )
        @type = type
        @file_hash = TL::Utils.parse_bytes!(file_hash)
        @text = text
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @type.tl_serialize(io, false)
        @file_hash.tl_serialize(io, true)
        @text.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          type: Root::TypeSecureValueType.tl_deserialize(io, false),
          file_hash: Bytes.tl_deserialize(io, true),
          text: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class SecureValueErrorReverseSide < TypeSecureValueError
      CONSTRUCTOR_ID = 0x868A2AA5

      getter type : Root::TypeSecureValueType
      getter file_hash : Bytes
      getter text : Bytes

      def initialize(
        type : Root::TypeSecureValueType,
        file_hash : Bytes | String | IO,
        text : Bytes | String | IO
      )
        @type = type
        @file_hash = TL::Utils.parse_bytes!(file_hash)
        @text = text
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @type.tl_serialize(io, false)
        @file_hash.tl_serialize(io, true)
        @text.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          type: Root::TypeSecureValueType.tl_deserialize(io, false),
          file_hash: Bytes.tl_deserialize(io, true),
          text: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class SecureValueErrorSelfie < TypeSecureValueError
      CONSTRUCTOR_ID = 0xE537CED6

      getter type : Root::TypeSecureValueType
      getter file_hash : Bytes
      getter text : Bytes

      def initialize(
        type : Root::TypeSecureValueType,
        file_hash : Bytes | String | IO,
        text : Bytes | String | IO
      )
        @type = type
        @file_hash = TL::Utils.parse_bytes!(file_hash)
        @text = text
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @type.tl_serialize(io, false)
        @file_hash.tl_serialize(io, true)
        @text.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          type: Root::TypeSecureValueType.tl_deserialize(io, false),
          file_hash: Bytes.tl_deserialize(io, true),
          text: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class SecureValueErrorFile < TypeSecureValueError
      CONSTRUCTOR_ID = 0x7A700873

      getter type : Root::TypeSecureValueType
      getter file_hash : Bytes
      getter text : Bytes

      def initialize(
        type : Root::TypeSecureValueType,
        file_hash : Bytes | String | IO,
        text : Bytes | String | IO
      )
        @type = type
        @file_hash = TL::Utils.parse_bytes!(file_hash)
        @text = text
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @type.tl_serialize(io, false)
        @file_hash.tl_serialize(io, true)
        @text.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          type: Root::TypeSecureValueType.tl_deserialize(io, false),
          file_hash: Bytes.tl_deserialize(io, true),
          text: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class SecureValueErrorFiles < TypeSecureValueError
      CONSTRUCTOR_ID = 0x666220E9

      getter type : Root::TypeSecureValueType
      getter file_hash : Array(Bytes)
      getter text : Bytes

      def initialize(
        type : Root::TypeSecureValueType,
        file_hash : Array(Bytes),
        text : Bytes | String | IO
      )
        @type = type
        @file_hash = file_hash
        @text = text
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @type.tl_serialize(io, false)
        @file_hash.tl_serialize(io, false)
        @text.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          type: Root::TypeSecureValueType.tl_deserialize(io, false),
          file_hash: Array(Bytes).tl_deserialize(io, false),
          text: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class SecureValueError < TypeSecureValueError
      CONSTRUCTOR_ID = 0x869D758F

      getter type : Root::TypeSecureValueType
      getter hash : Bytes
      getter text : Bytes

      def initialize(
        type : Root::TypeSecureValueType,
        hash : Bytes | String | IO,
        text : Bytes | String | IO
      )
        @type = type
        @hash = TL::Utils.parse_bytes!(hash)
        @text = text
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @type.tl_serialize(io, false)
        @hash.tl_serialize(io, true)
        @text.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          type: Root::TypeSecureValueType.tl_deserialize(io, false),
          hash: Bytes.tl_deserialize(io, true),
          text: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class SecureValueErrorTranslationFile < TypeSecureValueError
      CONSTRUCTOR_ID = 0xA1144770

      getter type : Root::TypeSecureValueType
      getter file_hash : Bytes
      getter text : Bytes

      def initialize(
        type : Root::TypeSecureValueType,
        file_hash : Bytes | String | IO,
        text : Bytes | String | IO
      )
        @type = type
        @file_hash = TL::Utils.parse_bytes!(file_hash)
        @text = text
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @type.tl_serialize(io, false)
        @file_hash.tl_serialize(io, true)
        @text.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          type: Root::TypeSecureValueType.tl_deserialize(io, false),
          file_hash: Bytes.tl_deserialize(io, true),
          text: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class SecureValueErrorTranslationFiles < TypeSecureValueError
      CONSTRUCTOR_ID = 0x34636DD8

      getter type : Root::TypeSecureValueType
      getter file_hash : Array(Bytes)
      getter text : Bytes

      def initialize(
        type : Root::TypeSecureValueType,
        file_hash : Array(Bytes),
        text : Bytes | String | IO
      )
        @type = type
        @file_hash = file_hash
        @text = text
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @type.tl_serialize(io, false)
        @file_hash.tl_serialize(io, false)
        @text.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          type: Root::TypeSecureValueType.tl_deserialize(io, false),
          file_hash: Array(Bytes).tl_deserialize(io, false),
          text: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class SecureCredentialsEncrypted < TypeSecureCredentialsEncrypted
      CONSTRUCTOR_ID = 0x33F0EA47

      getter data : Bytes
      getter hash : Bytes
      getter secret : Bytes

      def initialize(
        data : Bytes | String | IO,
        hash : Bytes | String | IO,
        secret : Bytes | String | IO
      )
        @data = TL::Utils.parse_bytes!(data)
        @hash = TL::Utils.parse_bytes!(hash)
        @secret = TL::Utils.parse_bytes!(secret)
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @data.tl_serialize(io, true)
        @hash.tl_serialize(io, true)
        @secret.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          data: Bytes.tl_deserialize(io, true),
          hash: Bytes.tl_deserialize(io, true),
          secret: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class SavedPhoneContact < TypeSavedContact
      CONSTRUCTOR_ID = 0x1142BD56

      getter phone : Bytes
      getter first_name : Bytes
      getter last_name : Bytes
      getter date : Int32

      def initialize(
        phone : Bytes | String | IO,
        first_name : Bytes | String | IO,
        last_name : Bytes | String | IO,
        date : Int32
      )
        @phone = phone
        @first_name = first_name
        @last_name = last_name
        @date = date
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @phone.tl_serialize(io, true)
        @first_name.tl_serialize(io, true)
        @last_name.tl_serialize(io, true)
        @date.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          phone: Bytes.tl_deserialize(io, true),
          first_name: Bytes.tl_deserialize(io, true),
          last_name: Bytes.tl_deserialize(io, true),
          date: Int32.tl_deserialize(io, true),
        )
      end
    end

    class PasswordKdfAlgoUnknown < TypePasswordKdfAlgo
      CONSTRUCTOR_ID = 0xD45AB096

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class PasswordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow < TypePasswordKdfAlgo
      CONSTRUCTOR_ID = 0x3A912D4A

      getter salt1 : Bytes
      getter salt2 : Bytes
      getter g : Int32
      getter p : Bytes

      def initialize(
        salt1 : Bytes | String | IO,
        salt2 : Bytes | String | IO,
        g : Int32,
        p : Bytes | String | IO
      )
        @salt1 = TL::Utils.parse_bytes!(salt1)
        @salt2 = TL::Utils.parse_bytes!(salt2)
        @g = g
        @p = TL::Utils.parse_bytes!(p)
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @salt1.tl_serialize(io, true)
        @salt2.tl_serialize(io, true)
        @g.tl_serialize(io, true)
        @p.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          salt1: Bytes.tl_deserialize(io, true),
          salt2: Bytes.tl_deserialize(io, true),
          g: Int32.tl_deserialize(io, true),
          p: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class SecurePasswordKdfAlgoUnknown < TypeSecurePasswordKdfAlgo
      CONSTRUCTOR_ID = 0x004A8537

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class SecurePasswordKdfAlgoPBKDF2HMACSHA512iter100000 < TypeSecurePasswordKdfAlgo
      CONSTRUCTOR_ID = 0xBBF2DDA0

      getter salt : Bytes

      def initialize(
        salt : Bytes | String | IO
      )
        @salt = TL::Utils.parse_bytes!(salt)
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @salt.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          salt: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class SecurePasswordKdfAlgoSHA512 < TypeSecurePasswordKdfAlgo
      CONSTRUCTOR_ID = 0x86471D92

      getter salt : Bytes

      def initialize(
        salt : Bytes | String | IO
      )
        @salt = TL::Utils.parse_bytes!(salt)
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @salt.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          salt: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class SecureSecretSettings < TypeSecureSecretSettings
      CONSTRUCTOR_ID = 0x1527BCAC

      getter secure_algo : Root::TypeSecurePasswordKdfAlgo
      getter secure_secret : Bytes
      getter secure_secret_id : Int64

      def initialize(
        secure_algo : Root::TypeSecurePasswordKdfAlgo,
        secure_secret : Bytes | String | IO,
        secure_secret_id : Int64
      )
        @secure_algo = secure_algo
        @secure_secret = TL::Utils.parse_bytes!(secure_secret)
        @secure_secret_id = secure_secret_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @secure_algo.tl_serialize(io, false)
        @secure_secret.tl_serialize(io, true)
        @secure_secret_id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          secure_algo: Root::TypeSecurePasswordKdfAlgo.tl_deserialize(io, false),
          secure_secret: Bytes.tl_deserialize(io, true),
          secure_secret_id: Int64.tl_deserialize(io, true),
        )
      end
    end

    class InputCheckPasswordEmpty < TypeInputCheckPasswordSRP
      CONSTRUCTOR_ID = 0x9880F658

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputCheckPasswordSRP < TypeInputCheckPasswordSRP
      CONSTRUCTOR_ID = 0xD27FF082

      getter srp_id : Int64
      getter a : Bytes
      getter m1 : Bytes

      def initialize(
        srp_id : Int64,
        a : Bytes | String | IO,
        m1 : Bytes | String | IO
      )
        @srp_id = srp_id
        @a = TL::Utils.parse_bytes!(a)
        @m1 = TL::Utils.parse_bytes!(m1)
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @srp_id.tl_serialize(io, true)
        @a.tl_serialize(io, true)
        @m1.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          srp_id: Int64.tl_deserialize(io, true),
          a: Bytes.tl_deserialize(io, true),
          m1: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class SecureRequiredType < TypeSecureRequiredType
      CONSTRUCTOR_ID = 0x829D99DA

      getter type : Root::TypeSecureValueType
      getter native_names : Bool | Nil
      getter selfie_required : Bool | Nil
      getter translation_required : Bool | Nil

      def initialize(
        type : Root::TypeSecureValueType,
        native_names : Bool | Nil = nil,
        selfie_required : Bool | Nil = nil,
        translation_required : Bool | Nil = nil
      )
        @type = type
        @native_names = native_names
        @selfie_required = selfie_required
        @translation_required = translation_required
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!native_names.nil? ? 1 : 0) |
            (!selfie_required.nil? ? 2 : 0) |
            (!translation_required.nil? ? 4 : 0)
        ).tl_serialize(io)
        @type.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          type: Root::TypeSecureValueType.tl_deserialize(io, false),
          native_names: flags & 1 == 1,
          selfie_required: flags & 2 == 1,
          translation_required: flags & 4 == 1,
        )
      end
    end

    class SecureRequiredTypeOneOf < TypeSecureRequiredType
      CONSTRUCTOR_ID = 0x027477B4

      getter types : Array(Root::TypeSecureRequiredType)

      def initialize(
        types : Array(Root::TypeSecureRequiredType)
      )
        @types = types
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @types.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          types: Array(Root::TypeSecureRequiredType).tl_deserialize(io, false),
        )
      end
    end

    class InputAppEvent < TypeInputAppEvent
      CONSTRUCTOR_ID = 0x1D1B1245

      getter time : Float64
      getter type : Bytes
      getter peer : Int64
      getter data : Root::TypeJSONValue

      def initialize(
        time : Float64,
        type : Bytes | String | IO,
        peer : Int64,
        data : Root::TypeJSONValue
      )
        @time = time
        @type = type
        @peer = peer
        @data = data
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @time.tl_serialize(io, true)
        @type.tl_serialize(io, true)
        @peer.tl_serialize(io, true)
        @data.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          time: Float64.tl_deserialize(io, true),
          type: Bytes.tl_deserialize(io, true),
          peer: Int64.tl_deserialize(io, true),
          data: Root::TypeJSONValue.tl_deserialize(io, false),
        )
      end
    end

    class JsonObjectValue < TypeJSONObjectValue
      CONSTRUCTOR_ID = 0xC0DE1BD9

      getter key : Bytes
      getter value : Root::TypeJSONValue

      def initialize(
        key : Bytes | String | IO,
        value : Root::TypeJSONValue
      )
        @key = key
        @value = value
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @key.tl_serialize(io, true)
        @value.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          key: Bytes.tl_deserialize(io, true),
          value: Root::TypeJSONValue.tl_deserialize(io, false),
        )
      end
    end

    class JsonNull < TypeJSONValue
      CONSTRUCTOR_ID = 0x3F6D7B68

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class JsonBool < TypeJSONValue
      CONSTRUCTOR_ID = 0xC7345E6A

      getter value : Bool

      def initialize(
        value : Bool
      )
        @value = value
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @value.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          value: Bool.tl_deserialize(io, false),
        )
      end
    end

    class JsonNumber < TypeJSONValue
      CONSTRUCTOR_ID = 0x2BE0DFA4

      getter value : Float64

      def initialize(
        value : Float64
      )
        @value = value
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @value.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          value: Float64.tl_deserialize(io, true),
        )
      end
    end

    class JsonString < TypeJSONValue
      CONSTRUCTOR_ID = 0xB71E767A

      getter value : Bytes

      def initialize(
        value : Bytes | String | IO
      )
        @value = value
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @value.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          value: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class JsonArray < TypeJSONValue
      CONSTRUCTOR_ID = 0xF7444763

      getter value : Array(Root::TypeJSONValue)

      def initialize(
        value : Array(Root::TypeJSONValue)
      )
        @value = value
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @value.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          value: Array(Root::TypeJSONValue).tl_deserialize(io, false),
        )
      end
    end

    class JsonObject < TypeJSONValue
      CONSTRUCTOR_ID = 0x99C1D49D

      getter value : Array(Root::TypeJSONObjectValue)

      def initialize(
        value : Array(Root::TypeJSONObjectValue)
      )
        @value = value
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @value.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          value: Array(Root::TypeJSONObjectValue).tl_deserialize(io, false),
        )
      end
    end

    class PageTableCell < TypePageTableCell
      CONSTRUCTOR_ID = 0x34566B6A

      getter header : Bool | Nil
      getter align_center : Bool | Nil
      getter align_right : Bool | Nil
      getter valign_middle : Bool | Nil
      getter valign_bottom : Bool | Nil
      getter text : Root::TypeRichText | Nil
      getter colspan : Int32 | Nil
      getter rowspan : Int32 | Nil

      def initialize(
        header : Bool | Nil = nil,
        align_center : Bool | Nil = nil,
        align_right : Bool | Nil = nil,
        valign_middle : Bool | Nil = nil,
        valign_bottom : Bool | Nil = nil,
        text : Root::TypeRichText | Nil = nil,
        colspan : Int32 | Nil = nil,
        rowspan : Int32 | Nil = nil
      )
        @header = header
        @align_center = align_center
        @align_right = align_right
        @valign_middle = valign_middle
        @valign_bottom = valign_bottom
        @text = text
        @colspan = colspan
        @rowspan = rowspan
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!header.nil? ? 1 : 0) |
            (!align_center.nil? ? 8 : 0) |
            (!align_right.nil? ? 16 : 0) |
            (!valign_middle.nil? ? 32 : 0) |
            (!valign_bottom.nil? ? 64 : 0) |
            (!text.nil? ? 128 : 0) |
            (!colspan.nil? ? 2 : 0) |
            (!rowspan.nil? ? 4 : 0)
        ).tl_serialize(io)
        @text.tl_serialize(io, false) unless @text.nil?
        @colspan.tl_serialize(io, true) unless @colspan.nil?
        @rowspan.tl_serialize(io, true) unless @rowspan.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          header: flags & 1 == 1,
          align_center: flags & 8 == 1,
          align_right: flags & 16 == 1,
          valign_middle: flags & 32 == 1,
          valign_bottom: flags & 64 == 1,
          text: flags & 128 == 1 ? Root::TypeRichText.tl_deserialize(io, false) : nil,
          colspan: flags & 2 == 1 ? Int32.tl_deserialize(io, true) : nil,
          rowspan: flags & 4 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class PageTableRow < TypePageTableRow
      CONSTRUCTOR_ID = 0xE0C0C5E5

      getter cells : Array(Root::TypePageTableCell)

      def initialize(
        cells : Array(Root::TypePageTableCell)
      )
        @cells = cells
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @cells.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          cells: Array(Root::TypePageTableCell).tl_deserialize(io, false),
        )
      end
    end

    class PageCaption < TypePageCaption
      CONSTRUCTOR_ID = 0x6F747657

      getter text : Root::TypeRichText
      getter credit : Root::TypeRichText

      def initialize(
        text : Root::TypeRichText,
        credit : Root::TypeRichText
      )
        @text = text
        @credit = credit
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @text.tl_serialize(io, false)
        @credit.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          text: Root::TypeRichText.tl_deserialize(io, false),
          credit: Root::TypeRichText.tl_deserialize(io, false),
        )
      end
    end

    class PageListItemText < TypePageListItem
      CONSTRUCTOR_ID = 0xB92FB6CD

      getter text : Root::TypeRichText

      def initialize(
        text : Root::TypeRichText
      )
        @text = text
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @text.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          text: Root::TypeRichText.tl_deserialize(io, false),
        )
      end
    end

    class PageListItemBlocks < TypePageListItem
      CONSTRUCTOR_ID = 0x25E073FC

      getter blocks : Array(Root::TypePageBlock)

      def initialize(
        blocks : Array(Root::TypePageBlock)
      )
        @blocks = blocks
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @blocks.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          blocks: Array(Root::TypePageBlock).tl_deserialize(io, false),
        )
      end
    end

    class PageListOrderedItemText < TypePageListOrderedItem
      CONSTRUCTOR_ID = 0x5E068047

      getter num : Bytes
      getter text : Root::TypeRichText

      def initialize(
        num : Bytes | String | IO,
        text : Root::TypeRichText
      )
        @num = num
        @text = text
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @num.tl_serialize(io, true)
        @text.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          num: Bytes.tl_deserialize(io, true),
          text: Root::TypeRichText.tl_deserialize(io, false),
        )
      end
    end

    class PageListOrderedItemBlocks < TypePageListOrderedItem
      CONSTRUCTOR_ID = 0x98DD8936

      getter num : Bytes
      getter blocks : Array(Root::TypePageBlock)

      def initialize(
        num : Bytes | String | IO,
        blocks : Array(Root::TypePageBlock)
      )
        @num = num
        @blocks = blocks
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @num.tl_serialize(io, true)
        @blocks.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          num: Bytes.tl_deserialize(io, true),
          blocks: Array(Root::TypePageBlock).tl_deserialize(io, false),
        )
      end
    end

    class PageRelatedArticle < TypePageRelatedArticle
      CONSTRUCTOR_ID = 0xB390DC08

      getter url : Bytes
      getter webpage_id : Int64
      getter title : Bytes | Nil
      getter description : Bytes | Nil
      getter photo_id : Int64 | Nil
      getter author : Bytes | Nil
      getter published_date : Int32 | Nil

      def initialize(
        url : Bytes | String | IO,
        webpage_id : Int64,
        title : Bytes | Nil = nil,
        description : Bytes | Nil = nil,
        photo_id : Int64 | Nil = nil,
        author : Bytes | Nil = nil,
        published_date : Int32 | Nil = nil
      )
        @url = url
        @webpage_id = webpage_id
        @title = title
        @description = description
        @photo_id = photo_id
        @author = author
        @published_date = published_date
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!title.nil? ? 1 : 0) |
            (!description.nil? ? 2 : 0) |
            (!photo_id.nil? ? 4 : 0) |
            (!author.nil? ? 8 : 0) |
            (!published_date.nil? ? 16 : 0)
        ).tl_serialize(io)
        @url.tl_serialize(io, true)
        @webpage_id.tl_serialize(io, true)
        @title.tl_serialize(io, true) unless @title.nil?
        @description.tl_serialize(io, true) unless @description.nil?
        @photo_id.tl_serialize(io, true) unless @photo_id.nil?
        @author.tl_serialize(io, true) unless @author.nil?
        @published_date.tl_serialize(io, true) unless @published_date.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          url: Bytes.tl_deserialize(io, true),
          webpage_id: Int64.tl_deserialize(io, true),
          title: flags & 1 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          description: flags & 2 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          photo_id: flags & 4 == 1 ? Int64.tl_deserialize(io, true) : nil,
          author: flags & 8 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          published_date: flags & 16 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class Page < TypePage
      CONSTRUCTOR_ID = 0x98657F0D

      getter url : Bytes
      getter blocks : Array(Root::TypePageBlock)
      getter photos : Array(Root::TypePhoto)
      getter documents : Array(Root::TypeDocument)
      getter part : Bool | Nil
      getter rtl : Bool | Nil
      getter v2 : Bool | Nil
      getter views : Int32 | Nil

      def initialize(
        url : Bytes | String | IO,
        blocks : Array(Root::TypePageBlock),
        photos : Array(Root::TypePhoto),
        documents : Array(Root::TypeDocument),
        part : Bool | Nil = nil,
        rtl : Bool | Nil = nil,
        v2 : Bool | Nil = nil,
        views : Int32 | Nil = nil
      )
        @url = url
        @blocks = blocks
        @photos = photos
        @documents = documents
        @part = part
        @rtl = rtl
        @v2 = v2
        @views = views
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!part.nil? ? 1 : 0) |
            (!rtl.nil? ? 2 : 0) |
            (!v2.nil? ? 4 : 0) |
            (!views.nil? ? 8 : 0)
        ).tl_serialize(io)
        @url.tl_serialize(io, true)
        @blocks.tl_serialize(io, false)
        @photos.tl_serialize(io, false)
        @documents.tl_serialize(io, false)
        @views.tl_serialize(io, true) unless @views.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          url: Bytes.tl_deserialize(io, true),
          blocks: Array(Root::TypePageBlock).tl_deserialize(io, false),
          photos: Array(Root::TypePhoto).tl_deserialize(io, false),
          documents: Array(Root::TypeDocument).tl_deserialize(io, false),
          part: flags & 1 == 1,
          rtl: flags & 2 == 1,
          v2: flags & 4 == 1,
          views: flags & 8 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class PollAnswer < TypePollAnswer
      CONSTRUCTOR_ID = 0x6CA9C2E9

      getter text : Bytes
      getter option : Bytes

      def initialize(
        text : Bytes | String | IO,
        option : Bytes | String | IO
      )
        @text = text
        @option = TL::Utils.parse_bytes!(option)
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @text.tl_serialize(io, true)
        @option.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          text: Bytes.tl_deserialize(io, true),
          option: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class Poll < TypePoll
      CONSTRUCTOR_ID = 0x86E18161

      getter id : Int64
      getter question : Bytes
      getter answers : Array(Root::TypePollAnswer)
      getter closed : Bool | Nil
      getter public_voters : Bool | Nil
      getter multiple_choice : Bool | Nil
      getter quiz : Bool | Nil
      getter close_period : Int32 | Nil
      getter close_date : Int32 | Nil

      def initialize(
        id : Int64,
        question : Bytes | String | IO,
        answers : Array(Root::TypePollAnswer),
        closed : Bool | Nil = nil,
        public_voters : Bool | Nil = nil,
        multiple_choice : Bool | Nil = nil,
        quiz : Bool | Nil = nil,
        close_period : Int32 | Nil = nil,
        close_date : Int32 | Nil = nil
      )
        @id = id
        @question = question
        @answers = answers
        @closed = closed
        @public_voters = public_voters
        @multiple_choice = multiple_choice
        @quiz = quiz
        @close_period = close_period
        @close_date = close_date
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        (
          (!closed.nil? ? 1 : 0) |
            (!public_voters.nil? ? 2 : 0) |
            (!multiple_choice.nil? ? 4 : 0) |
            (!quiz.nil? ? 8 : 0) |
            (!close_period.nil? ? 16 : 0) |
            (!close_date.nil? ? 32 : 0)
        ).tl_serialize(io)
        @question.tl_serialize(io, true)
        @answers.tl_serialize(io, false)
        @close_period.tl_serialize(io, true) unless @close_period.nil?
        @close_date.tl_serialize(io, true) unless @close_date.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          id: Int64.tl_deserialize(io, true),
          question: Bytes.tl_deserialize(io, true),
          answers: Array(Root::TypePollAnswer).tl_deserialize(io, false),
          closed: flags & 1 == 1,
          public_voters: flags & 2 == 1,
          multiple_choice: flags & 4 == 1,
          quiz: flags & 8 == 1,
          close_period: flags & 16 == 1 ? Int32.tl_deserialize(io, true) : nil,
          close_date: flags & 32 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class PollAnswerVoters < TypePollAnswerVoters
      CONSTRUCTOR_ID = 0x3B6DDAD2

      getter option : Bytes
      getter voters : Int32
      getter chosen : Bool | Nil
      getter correct : Bool | Nil

      def initialize(
        option : Bytes | String | IO,
        voters : Int32,
        chosen : Bool | Nil = nil,
        correct : Bool | Nil = nil
      )
        @option = TL::Utils.parse_bytes!(option)
        @voters = voters
        @chosen = chosen
        @correct = correct
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!chosen.nil? ? 1 : 0) |
            (!correct.nil? ? 2 : 0)
        ).tl_serialize(io)
        @option.tl_serialize(io, true)
        @voters.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          option: Bytes.tl_deserialize(io, true),
          voters: Int32.tl_deserialize(io, true),
          chosen: flags & 1 == 1,
          correct: flags & 2 == 1,
        )
      end
    end

    class PollResults < TypePollResults
      CONSTRUCTOR_ID = 0xDCB82EA3

      getter min : Bool | Nil
      getter results : Array(Root::TypePollAnswerVoters) | Nil
      getter total_voters : Int32 | Nil
      getter recent_voters : Array(Int64) | Nil
      getter solution : Bytes | Nil
      getter solution_entities : Array(Root::TypeMessageEntity) | Nil

      def initialize(
        min : Bool | Nil = nil,
        results : Array(Root::TypePollAnswerVoters) | Nil = nil,
        total_voters : Int32 | Nil = nil,
        recent_voters : Array(Int64) | Nil = nil,
        solution : Bytes | Nil = nil,
        solution_entities : Array(Root::TypeMessageEntity) | Nil = nil
      )
        @min = min
        @results = results
        @total_voters = total_voters
        @recent_voters = recent_voters
        @solution = solution
        @solution_entities = solution_entities
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!min.nil? ? 1 : 0) |
            (!results.nil? ? 2 : 0) |
            (!total_voters.nil? ? 4 : 0) |
            (!recent_voters.nil? ? 8 : 0) |
            (!solution.nil? ? 16 : 0) |
            (!solution_entities.nil? ? 16 : 0)
        ).tl_serialize(io)
        @results.tl_serialize(io, false) unless @results.nil?
        @total_voters.tl_serialize(io, true) unless @total_voters.nil?
        @recent_voters.tl_serialize(io, false) unless @recent_voters.nil?
        @solution.tl_serialize(io, true) unless @solution.nil?
        @solution_entities.tl_serialize(io, false) unless @solution_entities.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          min: flags & 1 == 1,
          results: flags & 2 == 1 ? Array(Root::TypePollAnswerVoters).tl_deserialize(io, false) : nil,
          total_voters: flags & 4 == 1 ? Int32.tl_deserialize(io, true) : nil,
          recent_voters: flags & 8 == 1 ? Array(Int64).tl_deserialize(io, false) : nil,
          solution: flags & 16 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          solution_entities: flags & 16 == 1 ? Array(Root::TypeMessageEntity).tl_deserialize(io, false) : nil,
        )
      end
    end

    class ChatOnlines < TypeChatOnlines
      CONSTRUCTOR_ID = 0xF041E250

      getter onlines : Int32

      def initialize(
        onlines : Int32
      )
        @onlines = onlines
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @onlines.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          onlines: Int32.tl_deserialize(io, true),
        )
      end
    end

    class StatsURL < TypeStatsURL
      CONSTRUCTOR_ID = 0x47A971E0

      getter url : Bytes

      def initialize(
        url : Bytes | String | IO
      )
        @url = url
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @url.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          url: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class ChatAdminRights < TypeChatAdminRights
      CONSTRUCTOR_ID = 0x5FB224D5

      getter change_info : Bool | Nil
      getter post_messages : Bool | Nil
      getter edit_messages : Bool | Nil
      getter delete_messages : Bool | Nil
      getter ban_users : Bool | Nil
      getter invite_users : Bool | Nil
      getter pin_messages : Bool | Nil
      getter add_admins : Bool | Nil
      getter anonymous : Bool | Nil
      getter manage_call : Bool | Nil
      getter other : Bool | Nil

      def initialize(
        change_info : Bool | Nil = nil,
        post_messages : Bool | Nil = nil,
        edit_messages : Bool | Nil = nil,
        delete_messages : Bool | Nil = nil,
        ban_users : Bool | Nil = nil,
        invite_users : Bool | Nil = nil,
        pin_messages : Bool | Nil = nil,
        add_admins : Bool | Nil = nil,
        anonymous : Bool | Nil = nil,
        manage_call : Bool | Nil = nil,
        other : Bool | Nil = nil
      )
        @change_info = change_info
        @post_messages = post_messages
        @edit_messages = edit_messages
        @delete_messages = delete_messages
        @ban_users = ban_users
        @invite_users = invite_users
        @pin_messages = pin_messages
        @add_admins = add_admins
        @anonymous = anonymous
        @manage_call = manage_call
        @other = other
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!change_info.nil? ? 1 : 0) |
            (!post_messages.nil? ? 2 : 0) |
            (!edit_messages.nil? ? 4 : 0) |
            (!delete_messages.nil? ? 8 : 0) |
            (!ban_users.nil? ? 16 : 0) |
            (!invite_users.nil? ? 32 : 0) |
            (!pin_messages.nil? ? 128 : 0) |
            (!add_admins.nil? ? 512 : 0) |
            (!anonymous.nil? ? 1024 : 0) |
            (!manage_call.nil? ? 2048 : 0) |
            (!other.nil? ? 4096 : 0)
        ).tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          change_info: flags & 1 == 1,
          post_messages: flags & 2 == 1,
          edit_messages: flags & 4 == 1,
          delete_messages: flags & 8 == 1,
          ban_users: flags & 16 == 1,
          invite_users: flags & 32 == 1,
          pin_messages: flags & 128 == 1,
          add_admins: flags & 512 == 1,
          anonymous: flags & 1024 == 1,
          manage_call: flags & 2048 == 1,
          other: flags & 4096 == 1,
        )
      end
    end

    class ChatBannedRights < TypeChatBannedRights
      CONSTRUCTOR_ID = 0x9F120418

      getter until_date : Int32
      getter view_messages : Bool | Nil
      getter send_messages : Bool | Nil
      getter send_media : Bool | Nil
      getter send_stickers : Bool | Nil
      getter send_gifs : Bool | Nil
      getter send_games : Bool | Nil
      getter send_inline : Bool | Nil
      getter embed_links : Bool | Nil
      getter send_polls : Bool | Nil
      getter change_info : Bool | Nil
      getter invite_users : Bool | Nil
      getter pin_messages : Bool | Nil

      def initialize(
        until_date : Int32,
        view_messages : Bool | Nil = nil,
        send_messages : Bool | Nil = nil,
        send_media : Bool | Nil = nil,
        send_stickers : Bool | Nil = nil,
        send_gifs : Bool | Nil = nil,
        send_games : Bool | Nil = nil,
        send_inline : Bool | Nil = nil,
        embed_links : Bool | Nil = nil,
        send_polls : Bool | Nil = nil,
        change_info : Bool | Nil = nil,
        invite_users : Bool | Nil = nil,
        pin_messages : Bool | Nil = nil
      )
        @until_date = until_date
        @view_messages = view_messages
        @send_messages = send_messages
        @send_media = send_media
        @send_stickers = send_stickers
        @send_gifs = send_gifs
        @send_games = send_games
        @send_inline = send_inline
        @embed_links = embed_links
        @send_polls = send_polls
        @change_info = change_info
        @invite_users = invite_users
        @pin_messages = pin_messages
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!view_messages.nil? ? 1 : 0) |
            (!send_messages.nil? ? 2 : 0) |
            (!send_media.nil? ? 4 : 0) |
            (!send_stickers.nil? ? 8 : 0) |
            (!send_gifs.nil? ? 16 : 0) |
            (!send_games.nil? ? 32 : 0) |
            (!send_inline.nil? ? 64 : 0) |
            (!embed_links.nil? ? 128 : 0) |
            (!send_polls.nil? ? 256 : 0) |
            (!change_info.nil? ? 1024 : 0) |
            (!invite_users.nil? ? 32768 : 0) |
            (!pin_messages.nil? ? 131072 : 0)
        ).tl_serialize(io)
        @until_date.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          until_date: Int32.tl_deserialize(io, true),
          view_messages: flags & 1 == 1,
          send_messages: flags & 2 == 1,
          send_media: flags & 4 == 1,
          send_stickers: flags & 8 == 1,
          send_gifs: flags & 16 == 1,
          send_games: flags & 32 == 1,
          send_inline: flags & 64 == 1,
          embed_links: flags & 128 == 1,
          send_polls: flags & 256 == 1,
          change_info: flags & 1024 == 1,
          invite_users: flags & 32768 == 1,
          pin_messages: flags & 131072 == 1,
        )
      end
    end

    class InputWallPaper < TypeInputWallPaper
      CONSTRUCTOR_ID = 0xE630B979

      getter id : Int64
      getter access_hash : Int64

      def initialize(
        id : Int64,
        access_hash : Int64
      )
        @id = id
        @access_hash = access_hash
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Int64.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
        )
      end
    end

    class InputWallPaperSlug < TypeInputWallPaper
      CONSTRUCTOR_ID = 0x72091C80

      getter slug : Bytes

      def initialize(
        slug : Bytes | String | IO
      )
        @slug = slug
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @slug.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          slug: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class InputWallPaperNoFile < TypeInputWallPaper
      CONSTRUCTOR_ID = 0x967A462E

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
          id: Int64.tl_deserialize(io, true),
        )
      end
    end

    class CodeSettings < TypeCodeSettings
      CONSTRUCTOR_ID = 0xDEBEBE83

      getter allow_flashcall : Bool | Nil
      getter current_number : Bool | Nil
      getter allow_app_hash : Bool | Nil

      def initialize(
        allow_flashcall : Bool | Nil = nil,
        current_number : Bool | Nil = nil,
        allow_app_hash : Bool | Nil = nil
      )
        @allow_flashcall = allow_flashcall
        @current_number = current_number
        @allow_app_hash = allow_app_hash
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!allow_flashcall.nil? ? 1 : 0) |
            (!current_number.nil? ? 2 : 0) |
            (!allow_app_hash.nil? ? 16 : 0)
        ).tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          allow_flashcall: flags & 1 == 1,
          current_number: flags & 2 == 1,
          allow_app_hash: flags & 16 == 1,
        )
      end
    end

    class WallPaperSettings < TypeWallPaperSettings
      CONSTRUCTOR_ID = 0x1DC1BCA4

      getter blur : Bool | Nil
      getter motion : Bool | Nil
      getter background_color : Int32 | Nil
      getter second_background_color : Int32 | Nil
      getter third_background_color : Int32 | Nil
      getter fourth_background_color : Int32 | Nil
      getter intensity : Int32 | Nil
      getter rotation : Int32 | Nil

      def initialize(
        blur : Bool | Nil = nil,
        motion : Bool | Nil = nil,
        background_color : Int32 | Nil = nil,
        second_background_color : Int32 | Nil = nil,
        third_background_color : Int32 | Nil = nil,
        fourth_background_color : Int32 | Nil = nil,
        intensity : Int32 | Nil = nil,
        rotation : Int32 | Nil = nil
      )
        @blur = blur
        @motion = motion
        @background_color = background_color
        @second_background_color = second_background_color
        @third_background_color = third_background_color
        @fourth_background_color = fourth_background_color
        @intensity = intensity
        @rotation = rotation
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!blur.nil? ? 2 : 0) |
            (!motion.nil? ? 4 : 0) |
            (!background_color.nil? ? 1 : 0) |
            (!second_background_color.nil? ? 16 : 0) |
            (!third_background_color.nil? ? 32 : 0) |
            (!fourth_background_color.nil? ? 64 : 0) |
            (!intensity.nil? ? 8 : 0) |
            (!rotation.nil? ? 16 : 0)
        ).tl_serialize(io)
        @background_color.tl_serialize(io, true) unless @background_color.nil?
        @second_background_color.tl_serialize(io, true) unless @second_background_color.nil?
        @third_background_color.tl_serialize(io, true) unless @third_background_color.nil?
        @fourth_background_color.tl_serialize(io, true) unless @fourth_background_color.nil?
        @intensity.tl_serialize(io, true) unless @intensity.nil?
        @rotation.tl_serialize(io, true) unless @rotation.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          blur: flags & 2 == 1,
          motion: flags & 4 == 1,
          background_color: flags & 1 == 1 ? Int32.tl_deserialize(io, true) : nil,
          second_background_color: flags & 16 == 1 ? Int32.tl_deserialize(io, true) : nil,
          third_background_color: flags & 32 == 1 ? Int32.tl_deserialize(io, true) : nil,
          fourth_background_color: flags & 64 == 1 ? Int32.tl_deserialize(io, true) : nil,
          intensity: flags & 8 == 1 ? Int32.tl_deserialize(io, true) : nil,
          rotation: flags & 16 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class AutoDownloadSettings < TypeAutoDownloadSettings
      CONSTRUCTOR_ID = 0xE04232F3

      getter photo_size_max : Int32
      getter video_size_max : Int32
      getter file_size_max : Int32
      getter video_upload_maxbitrate : Int32
      getter disabled : Bool | Nil
      getter video_preload_large : Bool | Nil
      getter audio_preload_next : Bool | Nil
      getter phonecalls_less_data : Bool | Nil

      def initialize(
        photo_size_max : Int32,
        video_size_max : Int32,
        file_size_max : Int32,
        video_upload_maxbitrate : Int32,
        disabled : Bool | Nil = nil,
        video_preload_large : Bool | Nil = nil,
        audio_preload_next : Bool | Nil = nil,
        phonecalls_less_data : Bool | Nil = nil
      )
        @photo_size_max = photo_size_max
        @video_size_max = video_size_max
        @file_size_max = file_size_max
        @video_upload_maxbitrate = video_upload_maxbitrate
        @disabled = disabled
        @video_preload_large = video_preload_large
        @audio_preload_next = audio_preload_next
        @phonecalls_less_data = phonecalls_less_data
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!disabled.nil? ? 1 : 0) |
            (!video_preload_large.nil? ? 2 : 0) |
            (!audio_preload_next.nil? ? 4 : 0) |
            (!phonecalls_less_data.nil? ? 8 : 0)
        ).tl_serialize(io)
        @photo_size_max.tl_serialize(io, true)
        @video_size_max.tl_serialize(io, true)
        @file_size_max.tl_serialize(io, true)
        @video_upload_maxbitrate.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          photo_size_max: Int32.tl_deserialize(io, true),
          video_size_max: Int32.tl_deserialize(io, true),
          file_size_max: Int32.tl_deserialize(io, true),
          video_upload_maxbitrate: Int32.tl_deserialize(io, true),
          disabled: flags & 1 == 1,
          video_preload_large: flags & 2 == 1,
          audio_preload_next: flags & 4 == 1,
          phonecalls_less_data: flags & 8 == 1,
        )
      end
    end

    class EmojiKeyword < TypeEmojiKeyword
      CONSTRUCTOR_ID = 0xD5B3B9F9

      getter keyword : Bytes
      getter emoticons : Array(Bytes)

      def initialize(
        keyword : Bytes | String | IO,
        emoticons : Array(Bytes)
      )
        @keyword = keyword
        @emoticons = emoticons
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @keyword.tl_serialize(io, true)
        @emoticons.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          keyword: Bytes.tl_deserialize(io, true),
          emoticons: Array(Bytes).tl_deserialize(io, false),
        )
      end
    end

    class EmojiKeywordDeleted < TypeEmojiKeyword
      CONSTRUCTOR_ID = 0x236DF622

      getter keyword : Bytes
      getter emoticons : Array(Bytes)

      def initialize(
        keyword : Bytes | String | IO,
        emoticons : Array(Bytes)
      )
        @keyword = keyword
        @emoticons = emoticons
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @keyword.tl_serialize(io, true)
        @emoticons.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          keyword: Bytes.tl_deserialize(io, true),
          emoticons: Array(Bytes).tl_deserialize(io, false),
        )
      end
    end

    class EmojiKeywordsDifference < TypeEmojiKeywordsDifference
      CONSTRUCTOR_ID = 0x5CC761BD

      getter lang_code : Bytes
      getter from_version : Int32
      getter version : Int32
      getter keywords : Array(Root::TypeEmojiKeyword)

      def initialize(
        lang_code : Bytes | String | IO,
        from_version : Int32,
        version : Int32,
        keywords : Array(Root::TypeEmojiKeyword)
      )
        @lang_code = lang_code
        @from_version = from_version
        @version = version
        @keywords = keywords
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @lang_code.tl_serialize(io, true)
        @from_version.tl_serialize(io, true)
        @version.tl_serialize(io, true)
        @keywords.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          lang_code: Bytes.tl_deserialize(io, true),
          from_version: Int32.tl_deserialize(io, true),
          version: Int32.tl_deserialize(io, true),
          keywords: Array(Root::TypeEmojiKeyword).tl_deserialize(io, false),
        )
      end
    end

    class EmojiURL < TypeEmojiURL
      CONSTRUCTOR_ID = 0xA575739D

      getter url : Bytes

      def initialize(
        url : Bytes | String | IO
      )
        @url = url
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @url.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          url: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class EmojiLanguage < TypeEmojiLanguage
      CONSTRUCTOR_ID = 0xB3FB5361

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

      def self.tl_deserialize(io : IO, bare = false)
        new(
          lang_code: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class Folder < TypeFolder
      CONSTRUCTOR_ID = 0xFF544E65

      getter id : Int32
      getter title : Bytes
      getter autofill_new_broadcasts : Bool | Nil
      getter autofill_public_groups : Bool | Nil
      getter autofill_new_correspondents : Bool | Nil
      getter photo : Root::TypeChatPhoto | Nil

      def initialize(
        id : Int32,
        title : Bytes | String | IO,
        autofill_new_broadcasts : Bool | Nil = nil,
        autofill_public_groups : Bool | Nil = nil,
        autofill_new_correspondents : Bool | Nil = nil,
        photo : Root::TypeChatPhoto | Nil = nil
      )
        @id = id
        @title = title
        @autofill_new_broadcasts = autofill_new_broadcasts
        @autofill_public_groups = autofill_public_groups
        @autofill_new_correspondents = autofill_new_correspondents
        @photo = photo
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!autofill_new_broadcasts.nil? ? 1 : 0) |
            (!autofill_public_groups.nil? ? 2 : 0) |
            (!autofill_new_correspondents.nil? ? 4 : 0) |
            (!photo.nil? ? 8 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io, true)
        @title.tl_serialize(io, true)
        @photo.tl_serialize(io, false) unless @photo.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          id: Int32.tl_deserialize(io, true),
          title: Bytes.tl_deserialize(io, true),
          autofill_new_broadcasts: flags & 1 == 1,
          autofill_public_groups: flags & 2 == 1,
          autofill_new_correspondents: flags & 4 == 1,
          photo: flags & 8 == 1 ? Root::TypeChatPhoto.tl_deserialize(io, false) : nil,
        )
      end
    end

    class InputFolderPeer < TypeInputFolderPeer
      CONSTRUCTOR_ID = 0xFBD2C296

      getter peer : Root::TypeInputPeer
      getter folder_id : Int32

      def initialize(
        peer : Root::TypeInputPeer,
        folder_id : Int32
      )
        @peer = peer
        @folder_id = folder_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @peer.tl_serialize(io, false)
        @folder_id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          peer: Root::TypeInputPeer.tl_deserialize(io, false),
          folder_id: Int32.tl_deserialize(io, true),
        )
      end
    end

    class FolderPeer < TypeFolderPeer
      CONSTRUCTOR_ID = 0xE9BAA668

      getter peer : Root::TypePeer
      getter folder_id : Int32

      def initialize(
        peer : Root::TypePeer,
        folder_id : Int32
      )
        @peer = peer
        @folder_id = folder_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @peer.tl_serialize(io, false)
        @folder_id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          peer: Root::TypePeer.tl_deserialize(io, false),
          folder_id: Int32.tl_deserialize(io, true),
        )
      end
    end

    class UrlAuthResultRequest < TypeUrlAuthResult
      CONSTRUCTOR_ID = 0x92D33A0E

      getter bot : Root::TypeUser
      getter domain : Bytes
      getter request_write_access : Bool | Nil

      def initialize(
        bot : Root::TypeUser,
        domain : Bytes | String | IO,
        request_write_access : Bool | Nil = nil
      )
        @bot = bot
        @domain = domain
        @request_write_access = request_write_access
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!request_write_access.nil? ? 1 : 0)
        ).tl_serialize(io)
        @bot.tl_serialize(io, false)
        @domain.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          bot: Root::TypeUser.tl_deserialize(io, false),
          domain: Bytes.tl_deserialize(io, true),
          request_write_access: flags & 1 == 1,
        )
      end
    end

    class UrlAuthResultAccepted < TypeUrlAuthResult
      CONSTRUCTOR_ID = 0x8F8C0E4E

      getter url : Bytes

      def initialize(
        url : Bytes | String | IO
      )
        @url = url
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @url.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          url: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class UrlAuthResultDefault < TypeUrlAuthResult
      CONSTRUCTOR_ID = 0xA9D6DB1F

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class ChannelLocationEmpty < TypeChannelLocation
      CONSTRUCTOR_ID = 0xBFB5AD8B

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class ChannelLocation < TypeChannelLocation
      CONSTRUCTOR_ID = 0x209B82DB

      getter geo_point : Root::TypeGeoPoint
      getter address : Bytes

      def initialize(
        geo_point : Root::TypeGeoPoint,
        address : Bytes | String | IO
      )
        @geo_point = geo_point
        @address = address
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @geo_point.tl_serialize(io, false)
        @address.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          geo_point: Root::TypeGeoPoint.tl_deserialize(io, false),
          address: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class PeerLocated < TypePeerLocated
      CONSTRUCTOR_ID = 0xCA461B5D

      getter peer : Root::TypePeer
      getter expires : Int32
      getter distance : Int32

      def initialize(
        peer : Root::TypePeer,
        expires : Int32,
        distance : Int32
      )
        @peer = peer
        @expires = expires
        @distance = distance
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @peer.tl_serialize(io, false)
        @expires.tl_serialize(io, true)
        @distance.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          peer: Root::TypePeer.tl_deserialize(io, false),
          expires: Int32.tl_deserialize(io, true),
          distance: Int32.tl_deserialize(io, true),
        )
      end
    end

    class PeerSelfLocated < TypePeerLocated
      CONSTRUCTOR_ID = 0xF8EC284B

      getter expires : Int32

      def initialize(
        expires : Int32
      )
        @expires = expires
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @expires.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          expires: Int32.tl_deserialize(io, true),
        )
      end
    end

    class RestrictionReason < TypeRestrictionReason
      CONSTRUCTOR_ID = 0xD072ACB4

      getter platform : Bytes
      getter reason : Bytes
      getter text : Bytes

      def initialize(
        platform : Bytes | String | IO,
        reason : Bytes | String | IO,
        text : Bytes | String | IO
      )
        @platform = platform
        @reason = reason
        @text = text
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @platform.tl_serialize(io, true)
        @reason.tl_serialize(io, true)
        @text.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          platform: Bytes.tl_deserialize(io, true),
          reason: Bytes.tl_deserialize(io, true),
          text: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class InputTheme < TypeInputTheme
      CONSTRUCTOR_ID = 0x3C5693E9

      getter id : Int64
      getter access_hash : Int64

      def initialize(
        id : Int64,
        access_hash : Int64
      )
        @id = id
        @access_hash = access_hash
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Int64.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
        )
      end
    end

    class InputThemeSlug < TypeInputTheme
      CONSTRUCTOR_ID = 0xF5890DF1

      getter slug : Bytes

      def initialize(
        slug : Bytes | String | IO
      )
        @slug = slug
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @slug.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          slug: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class Theme < TypeTheme
      CONSTRUCTOR_ID = 0xE802B8DC

      getter id : Int64
      getter access_hash : Int64
      getter slug : Bytes
      getter title : Bytes
      getter creator : Bool | Nil
      getter default : Bool | Nil
      getter for_chat : Bool | Nil
      getter document : Root::TypeDocument | Nil
      getter settings : Root::TypeThemeSettings | Nil
      getter installs_count : Int32 | Nil

      def initialize(
        id : Int64,
        access_hash : Int64,
        slug : Bytes | String | IO,
        title : Bytes | String | IO,
        creator : Bool | Nil = nil,
        default : Bool | Nil = nil,
        for_chat : Bool | Nil = nil,
        document : Root::TypeDocument | Nil = nil,
        settings : Root::TypeThemeSettings | Nil = nil,
        installs_count : Int32 | Nil = nil
      )
        @id = id
        @access_hash = access_hash
        @slug = slug
        @title = title
        @creator = creator
        @default = default
        @for_chat = for_chat
        @document = document
        @settings = settings
        @installs_count = installs_count
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!creator.nil? ? 1 : 0) |
            (!default.nil? ? 2 : 0) |
            (!for_chat.nil? ? 32 : 0) |
            (!document.nil? ? 4 : 0) |
            (!settings.nil? ? 8 : 0) |
            (!installs_count.nil? ? 16 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true)
        @slug.tl_serialize(io, true)
        @title.tl_serialize(io, true)
        @document.tl_serialize(io, false) unless @document.nil?
        @settings.tl_serialize(io, false) unless @settings.nil?
        @installs_count.tl_serialize(io, true) unless @installs_count.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          id: Int64.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
          slug: Bytes.tl_deserialize(io, true),
          title: Bytes.tl_deserialize(io, true),
          creator: flags & 1 == 1,
          default: flags & 2 == 1,
          for_chat: flags & 32 == 1,
          document: flags & 4 == 1 ? Root::TypeDocument.tl_deserialize(io, false) : nil,
          settings: flags & 8 == 1 ? Root::TypeThemeSettings.tl_deserialize(io, false) : nil,
          installs_count: flags & 16 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class BaseThemeClassic < TypeBaseTheme
      CONSTRUCTOR_ID = 0xC3A12462

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class BaseThemeDay < TypeBaseTheme
      CONSTRUCTOR_ID = 0xFBD81688

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class BaseThemeNight < TypeBaseTheme
      CONSTRUCTOR_ID = 0xB7B31EA8

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class BaseThemeTinted < TypeBaseTheme
      CONSTRUCTOR_ID = 0x6D5F77EE

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class BaseThemeArctic < TypeBaseTheme
      CONSTRUCTOR_ID = 0x5B11125A

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InputThemeSettings < TypeInputThemeSettings
      CONSTRUCTOR_ID = 0x8FDE504F

      getter base_theme : Root::TypeBaseTheme
      getter accent_color : Int32
      getter message_colors_animated : Bool | Nil
      getter outbox_accent_color : Int32 | Nil
      getter message_colors : Array(Int32) | Nil
      getter wallpaper : Root::TypeInputWallPaper | Nil
      getter wallpaper_settings : Root::TypeWallPaperSettings | Nil

      def initialize(
        base_theme : Root::TypeBaseTheme,
        accent_color : Int32,
        message_colors_animated : Bool | Nil = nil,
        outbox_accent_color : Int32 | Nil = nil,
        message_colors : Array(Int32) | Nil = nil,
        wallpaper : Root::TypeInputWallPaper | Nil = nil,
        wallpaper_settings : Root::TypeWallPaperSettings | Nil = nil
      )
        @base_theme = base_theme
        @accent_color = accent_color
        @message_colors_animated = message_colors_animated
        @outbox_accent_color = outbox_accent_color
        @message_colors = message_colors
        @wallpaper = wallpaper
        @wallpaper_settings = wallpaper_settings
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!message_colors_animated.nil? ? 4 : 0) |
            (!outbox_accent_color.nil? ? 8 : 0) |
            (!message_colors.nil? ? 1 : 0) |
            (!wallpaper.nil? ? 2 : 0) |
            (!wallpaper_settings.nil? ? 2 : 0)
        ).tl_serialize(io)
        @base_theme.tl_serialize(io, false)
        @accent_color.tl_serialize(io, true)
        @outbox_accent_color.tl_serialize(io, true) unless @outbox_accent_color.nil?
        @message_colors.tl_serialize(io, false) unless @message_colors.nil?
        @wallpaper.tl_serialize(io, false) unless @wallpaper.nil?
        @wallpaper_settings.tl_serialize(io, false) unless @wallpaper_settings.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          base_theme: Root::TypeBaseTheme.tl_deserialize(io, false),
          accent_color: Int32.tl_deserialize(io, true),
          message_colors_animated: flags & 4 == 1,
          outbox_accent_color: flags & 8 == 1 ? Int32.tl_deserialize(io, true) : nil,
          message_colors: flags & 1 == 1 ? Array(Int32).tl_deserialize(io, false) : nil,
          wallpaper: flags & 2 == 1 ? Root::TypeInputWallPaper.tl_deserialize(io, false) : nil,
          wallpaper_settings: flags & 2 == 1 ? Root::TypeWallPaperSettings.tl_deserialize(io, false) : nil,
        )
      end
    end

    class ThemeSettings < TypeThemeSettings
      CONSTRUCTOR_ID = 0xFA58B6D4

      getter base_theme : Root::TypeBaseTheme
      getter accent_color : Int32
      getter message_colors_animated : Bool | Nil
      getter outbox_accent_color : Int32 | Nil
      getter message_colors : Array(Int32) | Nil
      getter wallpaper : Root::TypeWallPaper | Nil

      def initialize(
        base_theme : Root::TypeBaseTheme,
        accent_color : Int32,
        message_colors_animated : Bool | Nil = nil,
        outbox_accent_color : Int32 | Nil = nil,
        message_colors : Array(Int32) | Nil = nil,
        wallpaper : Root::TypeWallPaper | Nil = nil
      )
        @base_theme = base_theme
        @accent_color = accent_color
        @message_colors_animated = message_colors_animated
        @outbox_accent_color = outbox_accent_color
        @message_colors = message_colors
        @wallpaper = wallpaper
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!message_colors_animated.nil? ? 4 : 0) |
            (!outbox_accent_color.nil? ? 8 : 0) |
            (!message_colors.nil? ? 1 : 0) |
            (!wallpaper.nil? ? 2 : 0)
        ).tl_serialize(io)
        @base_theme.tl_serialize(io, false)
        @accent_color.tl_serialize(io, true)
        @outbox_accent_color.tl_serialize(io, true) unless @outbox_accent_color.nil?
        @message_colors.tl_serialize(io, false) unless @message_colors.nil?
        @wallpaper.tl_serialize(io, false) unless @wallpaper.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          base_theme: Root::TypeBaseTheme.tl_deserialize(io, false),
          accent_color: Int32.tl_deserialize(io, true),
          message_colors_animated: flags & 4 == 1,
          outbox_accent_color: flags & 8 == 1 ? Int32.tl_deserialize(io, true) : nil,
          message_colors: flags & 1 == 1 ? Array(Int32).tl_deserialize(io, false) : nil,
          wallpaper: flags & 2 == 1 ? Root::TypeWallPaper.tl_deserialize(io, false) : nil,
        )
      end
    end

    class WebPageAttributeTheme < TypeWebPageAttribute
      CONSTRUCTOR_ID = 0x54B56617

      getter documents : Array(Root::TypeDocument) | Nil
      getter settings : Root::TypeThemeSettings | Nil

      def initialize(
        documents : Array(Root::TypeDocument) | Nil = nil,
        settings : Root::TypeThemeSettings | Nil = nil
      )
        @documents = documents
        @settings = settings
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!documents.nil? ? 1 : 0) |
            (!settings.nil? ? 2 : 0)
        ).tl_serialize(io)
        @documents.tl_serialize(io, false) unless @documents.nil?
        @settings.tl_serialize(io, false) unless @settings.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          documents: flags & 1 == 1 ? Array(Root::TypeDocument).tl_deserialize(io, false) : nil,
          settings: flags & 2 == 1 ? Root::TypeThemeSettings.tl_deserialize(io, false) : nil,
        )
      end
    end

    class MessageUserVote < TypeMessageUserVote
      CONSTRUCTOR_ID = 0x34D247B4

      getter user_id : Int64
      getter option : Bytes
      getter date : Int32

      def initialize(
        user_id : Int64,
        option : Bytes | String | IO,
        date : Int32
      )
        @user_id = user_id
        @option = TL::Utils.parse_bytes!(option)
        @date = date
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @user_id.tl_serialize(io, true)
        @option.tl_serialize(io, true)
        @date.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          user_id: Int64.tl_deserialize(io, true),
          option: Bytes.tl_deserialize(io, true),
          date: Int32.tl_deserialize(io, true),
        )
      end
    end

    class MessageUserVoteInputOption < TypeMessageUserVote
      CONSTRUCTOR_ID = 0x3CA5B0EC

      getter user_id : Int64
      getter date : Int32

      def initialize(
        user_id : Int64,
        date : Int32
      )
        @user_id = user_id
        @date = date
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @user_id.tl_serialize(io, true)
        @date.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          user_id: Int64.tl_deserialize(io, true),
          date: Int32.tl_deserialize(io, true),
        )
      end
    end

    class MessageUserVoteMultiple < TypeMessageUserVote
      CONSTRUCTOR_ID = 0x8A65E557

      getter user_id : Int64
      getter options : Array(Bytes)
      getter date : Int32

      def initialize(
        user_id : Int64,
        options : Array(Bytes),
        date : Int32
      )
        @user_id = user_id
        @options = options
        @date = date
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @user_id.tl_serialize(io, true)
        @options.tl_serialize(io, false)
        @date.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          user_id: Int64.tl_deserialize(io, true),
          options: Array(Bytes).tl_deserialize(io, false),
          date: Int32.tl_deserialize(io, true),
        )
      end
    end

    class BankCardOpenUrl < TypeBankCardOpenUrl
      CONSTRUCTOR_ID = 0xF568028A

      getter url : Bytes
      getter name : Bytes

      def initialize(
        url : Bytes | String | IO,
        name : Bytes | String | IO
      )
        @url = url
        @name = name
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @url.tl_serialize(io, true)
        @name.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          url: Bytes.tl_deserialize(io, true),
          name: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class DialogFilter < TypeDialogFilter
      CONSTRUCTOR_ID = 0x7438F7E8

      getter id : Int32
      getter title : Bytes
      getter pinned_peers : Array(Root::TypeInputPeer)
      getter include_peers : Array(Root::TypeInputPeer)
      getter exclude_peers : Array(Root::TypeInputPeer)
      getter contacts : Bool | Nil
      getter non_contacts : Bool | Nil
      getter groups : Bool | Nil
      getter broadcasts : Bool | Nil
      getter bots : Bool | Nil
      getter exclude_muted : Bool | Nil
      getter exclude_read : Bool | Nil
      getter exclude_archived : Bool | Nil
      getter emoticon : Bytes | Nil

      def initialize(
        id : Int32,
        title : Bytes | String | IO,
        pinned_peers : Array(Root::TypeInputPeer),
        include_peers : Array(Root::TypeInputPeer),
        exclude_peers : Array(Root::TypeInputPeer),
        contacts : Bool | Nil = nil,
        non_contacts : Bool | Nil = nil,
        groups : Bool | Nil = nil,
        broadcasts : Bool | Nil = nil,
        bots : Bool | Nil = nil,
        exclude_muted : Bool | Nil = nil,
        exclude_read : Bool | Nil = nil,
        exclude_archived : Bool | Nil = nil,
        emoticon : Bytes | Nil = nil
      )
        @id = id
        @title = title
        @pinned_peers = pinned_peers
        @include_peers = include_peers
        @exclude_peers = exclude_peers
        @contacts = contacts
        @non_contacts = non_contacts
        @groups = groups
        @broadcasts = broadcasts
        @bots = bots
        @exclude_muted = exclude_muted
        @exclude_read = exclude_read
        @exclude_archived = exclude_archived
        @emoticon = emoticon
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!contacts.nil? ? 1 : 0) |
            (!non_contacts.nil? ? 2 : 0) |
            (!groups.nil? ? 4 : 0) |
            (!broadcasts.nil? ? 8 : 0) |
            (!bots.nil? ? 16 : 0) |
            (!exclude_muted.nil? ? 2048 : 0) |
            (!exclude_read.nil? ? 4096 : 0) |
            (!exclude_archived.nil? ? 8192 : 0) |
            (!emoticon.nil? ? 33554432 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io, true)
        @title.tl_serialize(io, true)
        @emoticon.tl_serialize(io, true) unless @emoticon.nil?
        @pinned_peers.tl_serialize(io, false)
        @include_peers.tl_serialize(io, false)
        @exclude_peers.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          id: Int32.tl_deserialize(io, true),
          title: Bytes.tl_deserialize(io, true),
          pinned_peers: Array(Root::TypeInputPeer).tl_deserialize(io, false),
          include_peers: Array(Root::TypeInputPeer).tl_deserialize(io, false),
          exclude_peers: Array(Root::TypeInputPeer).tl_deserialize(io, false),
          contacts: flags & 1 == 1,
          non_contacts: flags & 2 == 1,
          groups: flags & 4 == 1,
          broadcasts: flags & 8 == 1,
          bots: flags & 16 == 1,
          exclude_muted: flags & 2048 == 1,
          exclude_read: flags & 4096 == 1,
          exclude_archived: flags & 8192 == 1,
          emoticon: flags & 33554432 == 1 ? Bytes.tl_deserialize(io, true) : nil,
        )
      end
    end

    class DialogFilterSuggested < TypeDialogFilterSuggested
      CONSTRUCTOR_ID = 0x77744D4A

      getter filter : Root::TypeDialogFilter
      getter description : Bytes

      def initialize(
        filter : Root::TypeDialogFilter,
        description : Bytes | String | IO
      )
        @filter = filter
        @description = description
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @filter.tl_serialize(io, false)
        @description.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          filter: Root::TypeDialogFilter.tl_deserialize(io, false),
          description: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class StatsDateRangeDays < TypeStatsDateRangeDays
      CONSTRUCTOR_ID = 0xB637EDAF

      getter min_date : Int32
      getter max_date : Int32

      def initialize(
        min_date : Int32,
        max_date : Int32
      )
        @min_date = min_date
        @max_date = max_date
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @min_date.tl_serialize(io, true)
        @max_date.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          min_date: Int32.tl_deserialize(io, true),
          max_date: Int32.tl_deserialize(io, true),
        )
      end
    end

    class StatsAbsValueAndPrev < TypeStatsAbsValueAndPrev
      CONSTRUCTOR_ID = 0xCB43ACDE

      getter current : Float64
      getter previous : Float64

      def initialize(
        current : Float64,
        previous : Float64
      )
        @current = current
        @previous = previous
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @current.tl_serialize(io, true)
        @previous.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          current: Float64.tl_deserialize(io, true),
          previous: Float64.tl_deserialize(io, true),
        )
      end
    end

    class StatsPercentValue < TypeStatsPercentValue
      CONSTRUCTOR_ID = 0xCBCE2FE0

      getter part : Float64
      getter total : Float64

      def initialize(
        part : Float64,
        total : Float64
      )
        @part = part
        @total = total
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @part.tl_serialize(io, true)
        @total.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          part: Float64.tl_deserialize(io, true),
          total: Float64.tl_deserialize(io, true),
        )
      end
    end

    class StatsGraphAsync < TypeStatsGraph
      CONSTRUCTOR_ID = 0x4A27EB2D

      getter token : Bytes

      def initialize(
        token : Bytes | String | IO
      )
        @token = token
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @token.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          token: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class StatsGraphError < TypeStatsGraph
      CONSTRUCTOR_ID = 0xBEDC9822

      getter error : Bytes

      def initialize(
        error : Bytes | String | IO
      )
        @error = error
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @error.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          error: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class StatsGraph < TypeStatsGraph
      CONSTRUCTOR_ID = 0x8EA464B6

      getter json : Root::TypeDataJSON
      getter zoom_token : Bytes | Nil

      def initialize(
        json : Root::TypeDataJSON,
        zoom_token : Bytes | Nil = nil
      )
        @json = json
        @zoom_token = zoom_token
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!zoom_token.nil? ? 1 : 0)
        ).tl_serialize(io)
        @json.tl_serialize(io, false)
        @zoom_token.tl_serialize(io, true) unless @zoom_token.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          json: Root::TypeDataJSON.tl_deserialize(io, false),
          zoom_token: flags & 1 == 1 ? Bytes.tl_deserialize(io, true) : nil,
        )
      end
    end

    class MessageInteractionCounters < TypeMessageInteractionCounters
      CONSTRUCTOR_ID = 0xAD4FC9BD

      getter msg_id : Int32
      getter views : Int32
      getter forwards : Int32

      def initialize(
        msg_id : Int32,
        views : Int32,
        forwards : Int32
      )
        @msg_id = msg_id
        @views = views
        @forwards = forwards
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @msg_id.tl_serialize(io, true)
        @views.tl_serialize(io, true)
        @forwards.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          msg_id: Int32.tl_deserialize(io, true),
          views: Int32.tl_deserialize(io, true),
          forwards: Int32.tl_deserialize(io, true),
        )
      end
    end

    class VideoSize < TypeVideoSize
      CONSTRUCTOR_ID = 0xDE33B094

      getter type : Bytes
      getter w : Int32
      getter h : Int32
      getter size : Int32
      getter video_start_ts : Float64 | Nil

      def initialize(
        type : Bytes | String | IO,
        w : Int32,
        h : Int32,
        size : Int32,
        video_start_ts : Float64 | Nil = nil
      )
        @type = type
        @w = w
        @h = h
        @size = size
        @video_start_ts = video_start_ts
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!video_start_ts.nil? ? 1 : 0)
        ).tl_serialize(io)
        @type.tl_serialize(io, true)
        @w.tl_serialize(io, true)
        @h.tl_serialize(io, true)
        @size.tl_serialize(io, true)
        @video_start_ts.tl_serialize(io, true) unless @video_start_ts.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          type: Bytes.tl_deserialize(io, true),
          w: Int32.tl_deserialize(io, true),
          h: Int32.tl_deserialize(io, true),
          size: Int32.tl_deserialize(io, true),
          video_start_ts: flags & 1 == 1 ? Float64.tl_deserialize(io, true) : nil,
        )
      end
    end

    class StatsGroupTopPoster < TypeStatsGroupTopPoster
      CONSTRUCTOR_ID = 0x9D04AF9B

      getter user_id : Int64
      getter messages : Int32
      getter avg_chars : Int32

      def initialize(
        user_id : Int64,
        messages : Int32,
        avg_chars : Int32
      )
        @user_id = user_id
        @messages = messages
        @avg_chars = avg_chars
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @user_id.tl_serialize(io, true)
        @messages.tl_serialize(io, true)
        @avg_chars.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          user_id: Int64.tl_deserialize(io, true),
          messages: Int32.tl_deserialize(io, true),
          avg_chars: Int32.tl_deserialize(io, true),
        )
      end
    end

    class StatsGroupTopAdmin < TypeStatsGroupTopAdmin
      CONSTRUCTOR_ID = 0xD7584C87

      getter user_id : Int64
      getter deleted : Int32
      getter kicked : Int32
      getter banned : Int32

      def initialize(
        user_id : Int64,
        deleted : Int32,
        kicked : Int32,
        banned : Int32
      )
        @user_id = user_id
        @deleted = deleted
        @kicked = kicked
        @banned = banned
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @user_id.tl_serialize(io, true)
        @deleted.tl_serialize(io, true)
        @kicked.tl_serialize(io, true)
        @banned.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          user_id: Int64.tl_deserialize(io, true),
          deleted: Int32.tl_deserialize(io, true),
          kicked: Int32.tl_deserialize(io, true),
          banned: Int32.tl_deserialize(io, true),
        )
      end
    end

    class StatsGroupTopInviter < TypeStatsGroupTopInviter
      CONSTRUCTOR_ID = 0x535F779D

      getter user_id : Int64
      getter invitations : Int32

      def initialize(
        user_id : Int64,
        invitations : Int32
      )
        @user_id = user_id
        @invitations = invitations
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @user_id.tl_serialize(io, true)
        @invitations.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          user_id: Int64.tl_deserialize(io, true),
          invitations: Int32.tl_deserialize(io, true),
        )
      end
    end

    class GlobalPrivacySettings < TypeGlobalPrivacySettings
      CONSTRUCTOR_ID = 0xBEA2F424

      getter archive_and_mute_new_noncontact_peers : Bool | Nil

      def initialize(
        archive_and_mute_new_noncontact_peers : Bool | Nil = nil
      )
        @archive_and_mute_new_noncontact_peers = archive_and_mute_new_noncontact_peers
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!archive_and_mute_new_noncontact_peers.nil? ? 1 : 0)
        ).tl_serialize(io)
        @archive_and_mute_new_noncontact_peers.tl_serialize(io, false) unless @archive_and_mute_new_noncontact_peers.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          archive_and_mute_new_noncontact_peers: flags & 1 == 1 ? Bool.tl_deserialize(io, false) : nil,
        )
      end
    end

    class MessageViews < TypeMessageViews
      CONSTRUCTOR_ID = 0x455B853D

      getter views : Int32 | Nil
      getter forwards : Int32 | Nil
      getter replies : Root::TypeMessageReplies | Nil

      def initialize(
        views : Int32 | Nil = nil,
        forwards : Int32 | Nil = nil,
        replies : Root::TypeMessageReplies | Nil = nil
      )
        @views = views
        @forwards = forwards
        @replies = replies
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!views.nil? ? 1 : 0) |
            (!forwards.nil? ? 2 : 0) |
            (!replies.nil? ? 4 : 0)
        ).tl_serialize(io)
        @views.tl_serialize(io, true) unless @views.nil?
        @forwards.tl_serialize(io, true) unless @forwards.nil?
        @replies.tl_serialize(io, false) unless @replies.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          views: flags & 1 == 1 ? Int32.tl_deserialize(io, true) : nil,
          forwards: flags & 2 == 1 ? Int32.tl_deserialize(io, true) : nil,
          replies: flags & 4 == 1 ? Root::TypeMessageReplies.tl_deserialize(io, false) : nil,
        )
      end
    end

    class MessageReplyHeader < TypeMessageReplyHeader
      CONSTRUCTOR_ID = 0xA6D57763

      getter reply_to_msg_id : Int32
      getter reply_to_peer_id : Root::TypePeer | Nil
      getter reply_to_top_id : Int32 | Nil

      def initialize(
        reply_to_msg_id : Int32,
        reply_to_peer_id : Root::TypePeer | Nil = nil,
        reply_to_top_id : Int32 | Nil = nil
      )
        @reply_to_msg_id = reply_to_msg_id
        @reply_to_peer_id = reply_to_peer_id
        @reply_to_top_id = reply_to_top_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!reply_to_peer_id.nil? ? 1 : 0) |
            (!reply_to_top_id.nil? ? 2 : 0)
        ).tl_serialize(io)
        @reply_to_msg_id.tl_serialize(io, true)
        @reply_to_peer_id.tl_serialize(io, false) unless @reply_to_peer_id.nil?
        @reply_to_top_id.tl_serialize(io, true) unless @reply_to_top_id.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          reply_to_msg_id: Int32.tl_deserialize(io, true),
          reply_to_peer_id: flags & 1 == 1 ? Root::TypePeer.tl_deserialize(io, false) : nil,
          reply_to_top_id: flags & 2 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class MessageReplies < TypeMessageReplies
      CONSTRUCTOR_ID = 0x83D60FC2

      getter replies : Int32
      getter replies_pts : Int32
      getter comments : Bool | Nil
      getter recent_repliers : Array(Root::TypePeer) | Nil
      getter channel_id : Int64 | Nil
      getter max_id : Int32 | Nil
      getter read_max_id : Int32 | Nil

      def initialize(
        replies : Int32,
        replies_pts : Int32,
        comments : Bool | Nil = nil,
        recent_repliers : Array(Root::TypePeer) | Nil = nil,
        channel_id : Int64 | Nil = nil,
        max_id : Int32 | Nil = nil,
        read_max_id : Int32 | Nil = nil
      )
        @replies = replies
        @replies_pts = replies_pts
        @comments = comments
        @recent_repliers = recent_repliers
        @channel_id = channel_id
        @max_id = max_id
        @read_max_id = read_max_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!comments.nil? ? 1 : 0) |
            (!recent_repliers.nil? ? 2 : 0) |
            (!channel_id.nil? ? 1 : 0) |
            (!max_id.nil? ? 4 : 0) |
            (!read_max_id.nil? ? 8 : 0)
        ).tl_serialize(io)
        @replies.tl_serialize(io, true)
        @replies_pts.tl_serialize(io, true)
        @recent_repliers.tl_serialize(io, false) unless @recent_repliers.nil?
        @channel_id.tl_serialize(io, true) unless @channel_id.nil?
        @max_id.tl_serialize(io, true) unless @max_id.nil?
        @read_max_id.tl_serialize(io, true) unless @read_max_id.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          replies: Int32.tl_deserialize(io, true),
          replies_pts: Int32.tl_deserialize(io, true),
          comments: flags & 1 == 1,
          recent_repliers: flags & 2 == 1 ? Array(Root::TypePeer).tl_deserialize(io, false) : nil,
          channel_id: flags & 1 == 1 ? Int64.tl_deserialize(io, true) : nil,
          max_id: flags & 4 == 1 ? Int32.tl_deserialize(io, true) : nil,
          read_max_id: flags & 8 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class PeerBlocked < TypePeerBlocked
      CONSTRUCTOR_ID = 0xE8FD8014

      getter peer_id : Root::TypePeer
      getter date : Int32

      def initialize(
        peer_id : Root::TypePeer,
        date : Int32
      )
        @peer_id = peer_id
        @date = date
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @peer_id.tl_serialize(io, false)
        @date.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          peer_id: Root::TypePeer.tl_deserialize(io, false),
          date: Int32.tl_deserialize(io, true),
        )
      end
    end

    class GroupCallDiscarded < TypeGroupCall
      CONSTRUCTOR_ID = 0x7780BCB4

      getter id : Int64
      getter access_hash : Int64
      getter duration : Int32

      def initialize(
        id : Int64,
        access_hash : Int64,
        duration : Int32
      )
        @id = id
        @access_hash = access_hash
        @duration = duration
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true)
        @duration.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Int64.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
          duration: Int32.tl_deserialize(io, true),
        )
      end
    end

    class GroupCall < TypeGroupCall
      CONSTRUCTOR_ID = 0xD597650C

      getter id : Int64
      getter access_hash : Int64
      getter participants_count : Int32
      getter unmuted_video_limit : Int32
      getter version : Int32
      getter join_muted : Bool | Nil
      getter can_change_join_muted : Bool | Nil
      getter join_date_asc : Bool | Nil
      getter schedule_start_subscribed : Bool | Nil
      getter can_start_video : Bool | Nil
      getter record_video_active : Bool | Nil
      getter title : Bytes | Nil
      getter stream_dc_id : Int32 | Nil
      getter record_start_date : Int32 | Nil
      getter schedule_date : Int32 | Nil
      getter unmuted_video_count : Int32 | Nil

      def initialize(
        id : Int64,
        access_hash : Int64,
        participants_count : Int32,
        unmuted_video_limit : Int32,
        version : Int32,
        join_muted : Bool | Nil = nil,
        can_change_join_muted : Bool | Nil = nil,
        join_date_asc : Bool | Nil = nil,
        schedule_start_subscribed : Bool | Nil = nil,
        can_start_video : Bool | Nil = nil,
        record_video_active : Bool | Nil = nil,
        title : Bytes | Nil = nil,
        stream_dc_id : Int32 | Nil = nil,
        record_start_date : Int32 | Nil = nil,
        schedule_date : Int32 | Nil = nil,
        unmuted_video_count : Int32 | Nil = nil
      )
        @id = id
        @access_hash = access_hash
        @participants_count = participants_count
        @unmuted_video_limit = unmuted_video_limit
        @version = version
        @join_muted = join_muted
        @can_change_join_muted = can_change_join_muted
        @join_date_asc = join_date_asc
        @schedule_start_subscribed = schedule_start_subscribed
        @can_start_video = can_start_video
        @record_video_active = record_video_active
        @title = title
        @stream_dc_id = stream_dc_id
        @record_start_date = record_start_date
        @schedule_date = schedule_date
        @unmuted_video_count = unmuted_video_count
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!join_muted.nil? ? 2 : 0) |
            (!can_change_join_muted.nil? ? 4 : 0) |
            (!join_date_asc.nil? ? 64 : 0) |
            (!schedule_start_subscribed.nil? ? 256 : 0) |
            (!can_start_video.nil? ? 512 : 0) |
            (!record_video_active.nil? ? 2048 : 0) |
            (!title.nil? ? 8 : 0) |
            (!stream_dc_id.nil? ? 16 : 0) |
            (!record_start_date.nil? ? 32 : 0) |
            (!schedule_date.nil? ? 128 : 0) |
            (!unmuted_video_count.nil? ? 1024 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true)
        @participants_count.tl_serialize(io, true)
        @title.tl_serialize(io, true) unless @title.nil?
        @stream_dc_id.tl_serialize(io, true) unless @stream_dc_id.nil?
        @record_start_date.tl_serialize(io, true) unless @record_start_date.nil?
        @schedule_date.tl_serialize(io, true) unless @schedule_date.nil?
        @unmuted_video_count.tl_serialize(io, true) unless @unmuted_video_count.nil?
        @unmuted_video_limit.tl_serialize(io, true)
        @version.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          id: Int64.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
          participants_count: Int32.tl_deserialize(io, true),
          unmuted_video_limit: Int32.tl_deserialize(io, true),
          version: Int32.tl_deserialize(io, true),
          join_muted: flags & 2 == 1,
          can_change_join_muted: flags & 4 == 1,
          join_date_asc: flags & 64 == 1,
          schedule_start_subscribed: flags & 256 == 1,
          can_start_video: flags & 512 == 1,
          record_video_active: flags & 2048 == 1,
          title: flags & 8 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          stream_dc_id: flags & 16 == 1 ? Int32.tl_deserialize(io, true) : nil,
          record_start_date: flags & 32 == 1 ? Int32.tl_deserialize(io, true) : nil,
          schedule_date: flags & 128 == 1 ? Int32.tl_deserialize(io, true) : nil,
          unmuted_video_count: flags & 1024 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class InputGroupCall < TypeInputGroupCall
      CONSTRUCTOR_ID = 0xD8AA840F

      getter id : Int64
      getter access_hash : Int64

      def initialize(
        id : Int64,
        access_hash : Int64
      )
        @id = id
        @access_hash = access_hash
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, true)
        @access_hash.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          id: Int64.tl_deserialize(io, true),
          access_hash: Int64.tl_deserialize(io, true),
        )
      end
    end

    class GroupCallParticipant < TypeGroupCallParticipant
      CONSTRUCTOR_ID = 0xEBA636FE

      getter peer : Root::TypePeer
      getter date : Int32
      getter source : Int32
      getter muted : Bool | Nil
      getter left : Bool | Nil
      getter can_self_unmute : Bool | Nil
      getter just_joined : Bool | Nil
      getter versioned : Bool | Nil
      getter min : Bool | Nil
      getter muted_by_you : Bool | Nil
      getter volume_by_admin : Bool | Nil
      getter is_self : Bool | Nil
      getter video_joined : Bool | Nil
      getter active_date : Int32 | Nil
      getter volume : Int32 | Nil
      getter about : Bytes | Nil
      getter raise_hand_rating : Int64 | Nil
      getter video : Root::TypeGroupCallParticipantVideo | Nil
      getter presentation : Root::TypeGroupCallParticipantVideo | Nil

      def initialize(
        peer : Root::TypePeer,
        date : Int32,
        source : Int32,
        muted : Bool | Nil = nil,
        left : Bool | Nil = nil,
        can_self_unmute : Bool | Nil = nil,
        just_joined : Bool | Nil = nil,
        versioned : Bool | Nil = nil,
        min : Bool | Nil = nil,
        muted_by_you : Bool | Nil = nil,
        volume_by_admin : Bool | Nil = nil,
        is_self : Bool | Nil = nil,
        video_joined : Bool | Nil = nil,
        active_date : Int32 | Nil = nil,
        volume : Int32 | Nil = nil,
        about : Bytes | Nil = nil,
        raise_hand_rating : Int64 | Nil = nil,
        video : Root::TypeGroupCallParticipantVideo | Nil = nil,
        presentation : Root::TypeGroupCallParticipantVideo | Nil = nil
      )
        @peer = peer
        @date = date
        @source = source
        @muted = muted
        @left = left
        @can_self_unmute = can_self_unmute
        @just_joined = just_joined
        @versioned = versioned
        @min = min
        @muted_by_you = muted_by_you
        @volume_by_admin = volume_by_admin
        @is_self = is_self
        @video_joined = video_joined
        @active_date = active_date
        @volume = volume
        @about = about
        @raise_hand_rating = raise_hand_rating
        @video = video
        @presentation = presentation
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!muted.nil? ? 1 : 0) |
            (!left.nil? ? 2 : 0) |
            (!can_self_unmute.nil? ? 4 : 0) |
            (!just_joined.nil? ? 16 : 0) |
            (!versioned.nil? ? 32 : 0) |
            (!min.nil? ? 256 : 0) |
            (!muted_by_you.nil? ? 512 : 0) |
            (!volume_by_admin.nil? ? 1024 : 0) |
            (!is_self.nil? ? 4096 : 0) |
            (!video_joined.nil? ? 32768 : 0) |
            (!active_date.nil? ? 8 : 0) |
            (!volume.nil? ? 128 : 0) |
            (!about.nil? ? 2048 : 0) |
            (!raise_hand_rating.nil? ? 8192 : 0) |
            (!video.nil? ? 64 : 0) |
            (!presentation.nil? ? 16384 : 0)
        ).tl_serialize(io)
        @peer.tl_serialize(io, false)
        @date.tl_serialize(io, true)
        @active_date.tl_serialize(io, true) unless @active_date.nil?
        @source.tl_serialize(io, true)
        @volume.tl_serialize(io, true) unless @volume.nil?
        @about.tl_serialize(io, true) unless @about.nil?
        @raise_hand_rating.tl_serialize(io, true) unless @raise_hand_rating.nil?
        @video.tl_serialize(io, false) unless @video.nil?
        @presentation.tl_serialize(io, false) unless @presentation.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          peer: Root::TypePeer.tl_deserialize(io, false),
          date: Int32.tl_deserialize(io, true),
          source: Int32.tl_deserialize(io, true),
          muted: flags & 1 == 1,
          left: flags & 2 == 1,
          can_self_unmute: flags & 4 == 1,
          just_joined: flags & 16 == 1,
          versioned: flags & 32 == 1,
          min: flags & 256 == 1,
          muted_by_you: flags & 512 == 1,
          volume_by_admin: flags & 1024 == 1,
          is_self: flags & 4096 == 1,
          video_joined: flags & 32768 == 1,
          active_date: flags & 8 == 1 ? Int32.tl_deserialize(io, true) : nil,
          volume: flags & 128 == 1 ? Int32.tl_deserialize(io, true) : nil,
          about: flags & 2048 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          raise_hand_rating: flags & 8192 == 1 ? Int64.tl_deserialize(io, true) : nil,
          video: flags & 64 == 1 ? Root::TypeGroupCallParticipantVideo.tl_deserialize(io, false) : nil,
          presentation: flags & 16384 == 1 ? Root::TypeGroupCallParticipantVideo.tl_deserialize(io, false) : nil,
        )
      end
    end

    class InlineQueryPeerTypeSameBotPM < TypeInlineQueryPeerType
      CONSTRUCTOR_ID = 0x3081ED9D

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InlineQueryPeerTypePM < TypeInlineQueryPeerType
      CONSTRUCTOR_ID = 0x833C0FAC

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InlineQueryPeerTypeChat < TypeInlineQueryPeerType
      CONSTRUCTOR_ID = 0xD766C50A

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InlineQueryPeerTypeMegagroup < TypeInlineQueryPeerType
      CONSTRUCTOR_ID = 0x5EC4BE43

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class InlineQueryPeerTypeBroadcast < TypeInlineQueryPeerType
      CONSTRUCTOR_ID = 0x6334EE9A

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class ChatInviteImporter < TypeChatInviteImporter
      CONSTRUCTOR_ID = 0x0B5CD5F4

      getter user_id : Int64
      getter date : Int32

      def initialize(
        user_id : Int64,
        date : Int32
      )
        @user_id = user_id
        @date = date
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @user_id.tl_serialize(io, true)
        @date.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          user_id: Int64.tl_deserialize(io, true),
          date: Int32.tl_deserialize(io, true),
        )
      end
    end

    class ChatAdminWithInvites < TypeChatAdminWithInvites
      CONSTRUCTOR_ID = 0xF2ECEF23

      getter admin_id : Int64
      getter invites_count : Int32
      getter revoked_invites_count : Int32

      def initialize(
        admin_id : Int64,
        invites_count : Int32,
        revoked_invites_count : Int32
      )
        @admin_id = admin_id
        @invites_count = invites_count
        @revoked_invites_count = revoked_invites_count
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @admin_id.tl_serialize(io, true)
        @invites_count.tl_serialize(io, true)
        @revoked_invites_count.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          admin_id: Int64.tl_deserialize(io, true),
          invites_count: Int32.tl_deserialize(io, true),
          revoked_invites_count: Int32.tl_deserialize(io, true),
        )
      end
    end

    class GroupCallParticipantVideoSourceGroup < TypeGroupCallParticipantVideoSourceGroup
      CONSTRUCTOR_ID = 0xDCB118B7

      getter semantics : Bytes
      getter sources : Array(Int32)

      def initialize(
        semantics : Bytes | String | IO,
        sources : Array(Int32)
      )
        @semantics = semantics
        @sources = sources
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @semantics.tl_serialize(io, true)
        @sources.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          semantics: Bytes.tl_deserialize(io, true),
          sources: Array(Int32).tl_deserialize(io, false),
        )
      end
    end

    class GroupCallParticipantVideo < TypeGroupCallParticipantVideo
      CONSTRUCTOR_ID = 0x67753AC8

      getter endpoint : Bytes
      getter source_groups : Array(Root::TypeGroupCallParticipantVideoSourceGroup)
      getter paused : Bool | Nil
      getter audio_source : Int32 | Nil

      def initialize(
        endpoint : Bytes | String | IO,
        source_groups : Array(Root::TypeGroupCallParticipantVideoSourceGroup),
        paused : Bool | Nil = nil,
        audio_source : Int32 | Nil = nil
      )
        @endpoint = endpoint
        @source_groups = source_groups
        @paused = paused
        @audio_source = audio_source
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!paused.nil? ? 1 : 0) |
            (!audio_source.nil? ? 2 : 0)
        ).tl_serialize(io)
        @endpoint.tl_serialize(io, true)
        @source_groups.tl_serialize(io, false)
        @audio_source.tl_serialize(io, true) unless @audio_source.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          endpoint: Bytes.tl_deserialize(io, true),
          source_groups: Array(Root::TypeGroupCallParticipantVideoSourceGroup).tl_deserialize(io, false),
          paused: flags & 1 == 1,
          audio_source: flags & 2 == 1 ? Int32.tl_deserialize(io, true) : nil,
        )
      end
    end

    class BotCommandScopeDefault < TypeBotCommandScope
      CONSTRUCTOR_ID = 0x2F6CB2AB

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class BotCommandScopeUsers < TypeBotCommandScope
      CONSTRUCTOR_ID = 0x3C4F04D8

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class BotCommandScopeChats < TypeBotCommandScope
      CONSTRUCTOR_ID = 0x6FE1A881

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class BotCommandScopeChatAdmins < TypeBotCommandScope
      CONSTRUCTOR_ID = 0xB9AA606A

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class BotCommandScopePeer < TypeBotCommandScope
      CONSTRUCTOR_ID = 0xDB9D897D

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

      def self.tl_deserialize(io : IO, bare = false)
        new(
          peer: Root::TypeInputPeer.tl_deserialize(io, false),
        )
      end
    end

    class BotCommandScopePeerAdmins < TypeBotCommandScope
      CONSTRUCTOR_ID = 0x3FD863D1

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

      def self.tl_deserialize(io : IO, bare = false)
        new(
          peer: Root::TypeInputPeer.tl_deserialize(io, false),
        )
      end
    end

    class BotCommandScopePeerUser < TypeBotCommandScope
      CONSTRUCTOR_ID = 0x0A1321F3

      getter peer : Root::TypeInputPeer
      getter user_id : Root::TypeInputUser

      def initialize(
        peer : Root::TypeInputPeer,
        user_id : Root::TypeInputUser
      )
        @peer = peer
        @user_id = user_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @peer.tl_serialize(io, false)
        @user_id.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          peer: Root::TypeInputPeer.tl_deserialize(io, false),
          user_id: Root::TypeInputUser.tl_deserialize(io, false),
        )
      end
    end

    class ChatTheme < TypeChatTheme
      CONSTRUCTOR_ID = 0xED0B5C33

      getter emoticon : Bytes
      getter theme : Root::TypeTheme
      getter dark_theme : Root::TypeTheme

      def initialize(
        emoticon : Bytes | String | IO,
        theme : Root::TypeTheme,
        dark_theme : Root::TypeTheme
      )
        @emoticon = emoticon
        @theme = theme
        @dark_theme = dark_theme
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @emoticon.tl_serialize(io, true)
        @theme.tl_serialize(io, false)
        @dark_theme.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          emoticon: Bytes.tl_deserialize(io, true),
          theme: Root::TypeTheme.tl_deserialize(io, false),
          dark_theme: Root::TypeTheme.tl_deserialize(io, false),
        )
      end
    end

    class SponsoredMessage < TypeSponsoredMessage
      CONSTRUCTOR_ID = 0x2A3C381F

      getter random_id : Bytes
      getter from_id : Root::TypePeer
      getter message : Bytes
      getter start_param : Bytes | Nil
      getter entities : Array(Root::TypeMessageEntity) | Nil

      def initialize(
        random_id : Bytes | String | IO,
        from_id : Root::TypePeer,
        message : Bytes | String | IO,
        start_param : Bytes | Nil = nil,
        entities : Array(Root::TypeMessageEntity) | Nil = nil
      )
        @random_id = TL::Utils.parse_bytes!(random_id)
        @from_id = from_id
        @message = message
        @start_param = start_param
        @entities = entities
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!start_param.nil? ? 1 : 0) |
            (!entities.nil? ? 2 : 0)
        ).tl_serialize(io)
        @random_id.tl_serialize(io, true)
        @from_id.tl_serialize(io, false)
        @start_param.tl_serialize(io, true) unless @start_param.nil?
        @message.tl_serialize(io, true)
        @entities.tl_serialize(io, false) unless @entities.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        flags = Int32.tl_deserialize(io)
        new(
          random_id: Bytes.tl_deserialize(io, true),
          from_id: Root::TypePeer.tl_deserialize(io, false),
          message: Bytes.tl_deserialize(io, true),
          start_param: flags & 1 == 1 ? Bytes.tl_deserialize(io, true) : nil,
          entities: flags & 2 == 1 ? Array(Root::TypeMessageEntity).tl_deserialize(io, false) : nil,
        )
      end
    end

    class ResPQ < TypeResPQ
      CONSTRUCTOR_ID = 0x05162463

      getter nonce : BigInt
      getter server_nonce : BigInt
      getter pq : Bytes
      getter server_public_key_fingerprints : Array(Int64)

      def initialize(
        nonce : BigInt,
        server_nonce : BigInt,
        pq : Bytes | String | IO,
        server_public_key_fingerprints : Array(Int64)
      )
        @nonce = nonce
        @server_nonce = server_nonce
        @pq = pq
        @server_public_key_fingerprints = server_public_key_fingerprints
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @nonce.tl_serialize(io, true)
        @server_nonce.tl_serialize(io, true)
        @pq.tl_serialize(io, true)
        @server_public_key_fingerprints.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          nonce: BigInt.tl_deserialize(io, true),
          server_nonce: BigInt.tl_deserialize(io, true),
          pq: Bytes.tl_deserialize(io, true),
          server_public_key_fingerprints: Array(Int64).tl_deserialize(io, false),
        )
      end
    end

    class PQInnerData < TypePQInnerData
      CONSTRUCTOR_ID = 0x83C95AEC

      getter pq : Bytes
      getter p : Bytes
      getter q : Bytes
      getter nonce : BigInt
      getter server_nonce : BigInt
      getter new_nonce : BigInt

      def initialize(
        pq : Bytes | String | IO,
        p : Bytes | String | IO,
        q : Bytes | String | IO,
        nonce : BigInt,
        server_nonce : BigInt,
        new_nonce : BigInt
      )
        @pq = pq
        @p = p
        @q = q
        @nonce = nonce
        @server_nonce = server_nonce
        @new_nonce = new_nonce
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @pq.tl_serialize(io, true)
        @p.tl_serialize(io, true)
        @q.tl_serialize(io, true)
        @nonce.tl_serialize(io, true)
        @server_nonce.tl_serialize(io, true)
        @new_nonce.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          pq: Bytes.tl_deserialize(io, true),
          p: Bytes.tl_deserialize(io, true),
          q: Bytes.tl_deserialize(io, true),
          nonce: BigInt.tl_deserialize(io, true),
          server_nonce: BigInt.tl_deserialize(io, true),
          new_nonce: BigInt.tl_deserialize(io, true),
        )
      end
    end

    class PQInnerDataDc < TypePQInnerData
      CONSTRUCTOR_ID = 0xA9F55F95

      getter pq : Bytes
      getter p : Bytes
      getter q : Bytes
      getter nonce : BigInt
      getter server_nonce : BigInt
      getter new_nonce : BigInt
      getter dc : Int32

      def initialize(
        pq : Bytes | String | IO,
        p : Bytes | String | IO,
        q : Bytes | String | IO,
        nonce : BigInt,
        server_nonce : BigInt,
        new_nonce : BigInt,
        dc : Int32
      )
        @pq = pq
        @p = p
        @q = q
        @nonce = nonce
        @server_nonce = server_nonce
        @new_nonce = new_nonce
        @dc = dc
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @pq.tl_serialize(io, true)
        @p.tl_serialize(io, true)
        @q.tl_serialize(io, true)
        @nonce.tl_serialize(io, true)
        @server_nonce.tl_serialize(io, true)
        @new_nonce.tl_serialize(io, true)
        @dc.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          pq: Bytes.tl_deserialize(io, true),
          p: Bytes.tl_deserialize(io, true),
          q: Bytes.tl_deserialize(io, true),
          nonce: BigInt.tl_deserialize(io, true),
          server_nonce: BigInt.tl_deserialize(io, true),
          new_nonce: BigInt.tl_deserialize(io, true),
          dc: Int32.tl_deserialize(io, true),
        )
      end
    end

    class PQInnerDataTemp < TypePQInnerData
      CONSTRUCTOR_ID = 0x3C6A84D4

      getter pq : Bytes
      getter p : Bytes
      getter q : Bytes
      getter nonce : BigInt
      getter server_nonce : BigInt
      getter new_nonce : BigInt
      getter expires_in : Int32

      def initialize(
        pq : Bytes | String | IO,
        p : Bytes | String | IO,
        q : Bytes | String | IO,
        nonce : BigInt,
        server_nonce : BigInt,
        new_nonce : BigInt,
        expires_in : Int32
      )
        @pq = pq
        @p = p
        @q = q
        @nonce = nonce
        @server_nonce = server_nonce
        @new_nonce = new_nonce
        @expires_in = expires_in
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @pq.tl_serialize(io, true)
        @p.tl_serialize(io, true)
        @q.tl_serialize(io, true)
        @nonce.tl_serialize(io, true)
        @server_nonce.tl_serialize(io, true)
        @new_nonce.tl_serialize(io, true)
        @expires_in.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          pq: Bytes.tl_deserialize(io, true),
          p: Bytes.tl_deserialize(io, true),
          q: Bytes.tl_deserialize(io, true),
          nonce: BigInt.tl_deserialize(io, true),
          server_nonce: BigInt.tl_deserialize(io, true),
          new_nonce: BigInt.tl_deserialize(io, true),
          expires_in: Int32.tl_deserialize(io, true),
        )
      end
    end

    class PQInnerDataTempDc < TypePQInnerData
      CONSTRUCTOR_ID = 0x56FDDF88

      getter pq : Bytes
      getter p : Bytes
      getter q : Bytes
      getter nonce : BigInt
      getter server_nonce : BigInt
      getter new_nonce : BigInt
      getter dc : Int32
      getter expires_in : Int32

      def initialize(
        pq : Bytes | String | IO,
        p : Bytes | String | IO,
        q : Bytes | String | IO,
        nonce : BigInt,
        server_nonce : BigInt,
        new_nonce : BigInt,
        dc : Int32,
        expires_in : Int32
      )
        @pq = pq
        @p = p
        @q = q
        @nonce = nonce
        @server_nonce = server_nonce
        @new_nonce = new_nonce
        @dc = dc
        @expires_in = expires_in
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @pq.tl_serialize(io, true)
        @p.tl_serialize(io, true)
        @q.tl_serialize(io, true)
        @nonce.tl_serialize(io, true)
        @server_nonce.tl_serialize(io, true)
        @new_nonce.tl_serialize(io, true)
        @dc.tl_serialize(io, true)
        @expires_in.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          pq: Bytes.tl_deserialize(io, true),
          p: Bytes.tl_deserialize(io, true),
          q: Bytes.tl_deserialize(io, true),
          nonce: BigInt.tl_deserialize(io, true),
          server_nonce: BigInt.tl_deserialize(io, true),
          new_nonce: BigInt.tl_deserialize(io, true),
          dc: Int32.tl_deserialize(io, true),
          expires_in: Int32.tl_deserialize(io, true),
        )
      end
    end

    class BindAuthKeyInner < TypeBindAuthKeyInner
      CONSTRUCTOR_ID = 0x75A3F765

      getter nonce : Int64
      getter temp_auth_key_id : Int64
      getter perm_auth_key_id : Int64
      getter temp_session_id : Int64
      getter expires_at : Int32

      def initialize(
        nonce : Int64,
        temp_auth_key_id : Int64,
        perm_auth_key_id : Int64,
        temp_session_id : Int64,
        expires_at : Int32
      )
        @nonce = nonce
        @temp_auth_key_id = temp_auth_key_id
        @perm_auth_key_id = perm_auth_key_id
        @temp_session_id = temp_session_id
        @expires_at = expires_at
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @nonce.tl_serialize(io, true)
        @temp_auth_key_id.tl_serialize(io, true)
        @perm_auth_key_id.tl_serialize(io, true)
        @temp_session_id.tl_serialize(io, true)
        @expires_at.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          nonce: Int64.tl_deserialize(io, true),
          temp_auth_key_id: Int64.tl_deserialize(io, true),
          perm_auth_key_id: Int64.tl_deserialize(io, true),
          temp_session_id: Int64.tl_deserialize(io, true),
          expires_at: Int32.tl_deserialize(io, true),
        )
      end
    end

    class ServerDHParamsFail < TypeServerDHParams
      CONSTRUCTOR_ID = 0x79CB045D

      getter nonce : BigInt
      getter server_nonce : BigInt
      getter new_nonce_hash : BigInt

      def initialize(
        nonce : BigInt,
        server_nonce : BigInt,
        new_nonce_hash : BigInt
      )
        @nonce = nonce
        @server_nonce = server_nonce
        @new_nonce_hash = new_nonce_hash
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @nonce.tl_serialize(io, true)
        @server_nonce.tl_serialize(io, true)
        @new_nonce_hash.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          nonce: BigInt.tl_deserialize(io, true),
          server_nonce: BigInt.tl_deserialize(io, true),
          new_nonce_hash: BigInt.tl_deserialize(io, true),
        )
      end
    end

    class ServerDHParamsOk < TypeServerDHParams
      CONSTRUCTOR_ID = 0xD0E8075C

      getter nonce : BigInt
      getter server_nonce : BigInt
      getter encrypted_answer : Bytes

      def initialize(
        nonce : BigInt,
        server_nonce : BigInt,
        encrypted_answer : Bytes | String | IO
      )
        @nonce = nonce
        @server_nonce = server_nonce
        @encrypted_answer = encrypted_answer
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @nonce.tl_serialize(io, true)
        @server_nonce.tl_serialize(io, true)
        @encrypted_answer.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          nonce: BigInt.tl_deserialize(io, true),
          server_nonce: BigInt.tl_deserialize(io, true),
          encrypted_answer: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class ServerDHInnerData < TypeServerDHInnerData
      CONSTRUCTOR_ID = 0xB5890DBA

      getter nonce : BigInt
      getter server_nonce : BigInt
      getter g : Int32
      getter dh_prime : Bytes
      getter g_a : Bytes
      getter server_time : Int32

      def initialize(
        nonce : BigInt,
        server_nonce : BigInt,
        g : Int32,
        dh_prime : Bytes | String | IO,
        g_a : Bytes | String | IO,
        server_time : Int32
      )
        @nonce = nonce
        @server_nonce = server_nonce
        @g = g
        @dh_prime = dh_prime
        @g_a = g_a
        @server_time = server_time
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @nonce.tl_serialize(io, true)
        @server_nonce.tl_serialize(io, true)
        @g.tl_serialize(io, true)
        @dh_prime.tl_serialize(io, true)
        @g_a.tl_serialize(io, true)
        @server_time.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          nonce: BigInt.tl_deserialize(io, true),
          server_nonce: BigInt.tl_deserialize(io, true),
          g: Int32.tl_deserialize(io, true),
          dh_prime: Bytes.tl_deserialize(io, true),
          g_a: Bytes.tl_deserialize(io, true),
          server_time: Int32.tl_deserialize(io, true),
        )
      end
    end

    class ClientDHInnerData < TypeClientDHInnerData
      CONSTRUCTOR_ID = 0x6643B654

      getter nonce : BigInt
      getter server_nonce : BigInt
      getter retry_id : Int64
      getter g_b : Bytes

      def initialize(
        nonce : BigInt,
        server_nonce : BigInt,
        retry_id : Int64,
        g_b : Bytes | String | IO
      )
        @nonce = nonce
        @server_nonce = server_nonce
        @retry_id = retry_id
        @g_b = g_b
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @nonce.tl_serialize(io, true)
        @server_nonce.tl_serialize(io, true)
        @retry_id.tl_serialize(io, true)
        @g_b.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          nonce: BigInt.tl_deserialize(io, true),
          server_nonce: BigInt.tl_deserialize(io, true),
          retry_id: Int64.tl_deserialize(io, true),
          g_b: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class DhGenOk < TypeSetClientDHParamsAnswer
      CONSTRUCTOR_ID = 0x3BCBF734

      getter nonce : BigInt
      getter server_nonce : BigInt
      getter new_nonce_hash1 : BigInt

      def initialize(
        nonce : BigInt,
        server_nonce : BigInt,
        new_nonce_hash1 : BigInt
      )
        @nonce = nonce
        @server_nonce = server_nonce
        @new_nonce_hash1 = new_nonce_hash1
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @nonce.tl_serialize(io, true)
        @server_nonce.tl_serialize(io, true)
        @new_nonce_hash1.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          nonce: BigInt.tl_deserialize(io, true),
          server_nonce: BigInt.tl_deserialize(io, true),
          new_nonce_hash1: BigInt.tl_deserialize(io, true),
        )
      end
    end

    class DhGenRetry < TypeSetClientDHParamsAnswer
      CONSTRUCTOR_ID = 0x46DC1FB9

      getter nonce : BigInt
      getter server_nonce : BigInt
      getter new_nonce_hash2 : BigInt

      def initialize(
        nonce : BigInt,
        server_nonce : BigInt,
        new_nonce_hash2 : BigInt
      )
        @nonce = nonce
        @server_nonce = server_nonce
        @new_nonce_hash2 = new_nonce_hash2
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @nonce.tl_serialize(io, true)
        @server_nonce.tl_serialize(io, true)
        @new_nonce_hash2.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          nonce: BigInt.tl_deserialize(io, true),
          server_nonce: BigInt.tl_deserialize(io, true),
          new_nonce_hash2: BigInt.tl_deserialize(io, true),
        )
      end
    end

    class DhGenFail < TypeSetClientDHParamsAnswer
      CONSTRUCTOR_ID = 0xA69DAE02

      getter nonce : BigInt
      getter server_nonce : BigInt
      getter new_nonce_hash3 : BigInt

      def initialize(
        nonce : BigInt,
        server_nonce : BigInt,
        new_nonce_hash3 : BigInt
      )
        @nonce = nonce
        @server_nonce = server_nonce
        @new_nonce_hash3 = new_nonce_hash3
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @nonce.tl_serialize(io, true)
        @server_nonce.tl_serialize(io, true)
        @new_nonce_hash3.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          nonce: BigInt.tl_deserialize(io, true),
          server_nonce: BigInt.tl_deserialize(io, true),
          new_nonce_hash3: BigInt.tl_deserialize(io, true),
        )
      end
    end

    class DestroyAuthKeyOk < TypeDestroyAuthKeyRes
      CONSTRUCTOR_ID = 0xF660E1D4

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class DestroyAuthKeyNone < TypeDestroyAuthKeyRes
      CONSTRUCTOR_ID = 0x0A9F2259

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class DestroyAuthKeyFail < TypeDestroyAuthKeyRes
      CONSTRUCTOR_ID = 0xEA109B13

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class MsgsAck < TypeMsgsAck
      CONSTRUCTOR_ID = 0x62D6B459

      getter msg_ids : Array(Int64)

      def initialize(
        msg_ids : Array(Int64)
      )
        @msg_ids = msg_ids
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @msg_ids.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          msg_ids: Array(Int64).tl_deserialize(io, false),
        )
      end
    end

    class BadMsgNotification < TypeBadMsgNotification
      CONSTRUCTOR_ID = 0xA7EFF811

      getter bad_msg_id : Int64
      getter bad_msg_seqno : Int32
      getter error_code : Int32

      def initialize(
        bad_msg_id : Int64,
        bad_msg_seqno : Int32,
        error_code : Int32
      )
        @bad_msg_id = bad_msg_id
        @bad_msg_seqno = bad_msg_seqno
        @error_code = error_code
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @bad_msg_id.tl_serialize(io, true)
        @bad_msg_seqno.tl_serialize(io, true)
        @error_code.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          bad_msg_id: Int64.tl_deserialize(io, true),
          bad_msg_seqno: Int32.tl_deserialize(io, true),
          error_code: Int32.tl_deserialize(io, true),
        )
      end
    end

    class BadServerSalt < TypeBadMsgNotification
      CONSTRUCTOR_ID = 0xEDAB447B

      getter bad_msg_id : Int64
      getter bad_msg_seqno : Int32
      getter error_code : Int32
      getter new_server_salt : Int64

      def initialize(
        bad_msg_id : Int64,
        bad_msg_seqno : Int32,
        error_code : Int32,
        new_server_salt : Int64
      )
        @bad_msg_id = bad_msg_id
        @bad_msg_seqno = bad_msg_seqno
        @error_code = error_code
        @new_server_salt = new_server_salt
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @bad_msg_id.tl_serialize(io, true)
        @bad_msg_seqno.tl_serialize(io, true)
        @error_code.tl_serialize(io, true)
        @new_server_salt.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          bad_msg_id: Int64.tl_deserialize(io, true),
          bad_msg_seqno: Int32.tl_deserialize(io, true),
          error_code: Int32.tl_deserialize(io, true),
          new_server_salt: Int64.tl_deserialize(io, true),
        )
      end
    end

    class MsgsStateReq < TypeMsgsStateReq
      CONSTRUCTOR_ID = 0xDA69FB52

      getter msg_ids : Array(Int64)

      def initialize(
        msg_ids : Array(Int64)
      )
        @msg_ids = msg_ids
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @msg_ids.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          msg_ids: Array(Int64).tl_deserialize(io, false),
        )
      end
    end

    class MsgsStateInfo < TypeMsgsStateInfo
      CONSTRUCTOR_ID = 0x04DEB57D

      getter req_msg_id : Int64
      getter info : Bytes

      def initialize(
        req_msg_id : Int64,
        info : Bytes | String | IO
      )
        @req_msg_id = req_msg_id
        @info = info
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @req_msg_id.tl_serialize(io, true)
        @info.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          req_msg_id: Int64.tl_deserialize(io, true),
          info: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class MsgsAllInfo < TypeMsgsAllInfo
      CONSTRUCTOR_ID = 0x8CC0D131

      getter msg_ids : Array(Int64)
      getter info : Bytes

      def initialize(
        msg_ids : Array(Int64),
        info : Bytes | String | IO
      )
        @msg_ids = msg_ids
        @info = info
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @msg_ids.tl_serialize(io, false)
        @info.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          msg_ids: Array(Int64).tl_deserialize(io, false),
          info: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class MsgDetailedInfo < TypeMsgDetailedInfo
      CONSTRUCTOR_ID = 0x276D3EC6

      getter msg_id : Int64
      getter answer_msg_id : Int64
      getter bytes : Int32
      getter status : Int32

      def initialize(
        msg_id : Int64,
        answer_msg_id : Int64,
        bytes : Int32,
        status : Int32
      )
        @msg_id = msg_id
        @answer_msg_id = answer_msg_id
        @bytes = bytes
        @status = status
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @msg_id.tl_serialize(io, true)
        @answer_msg_id.tl_serialize(io, true)
        @bytes.tl_serialize(io, true)
        @status.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          msg_id: Int64.tl_deserialize(io, true),
          answer_msg_id: Int64.tl_deserialize(io, true),
          bytes: Int32.tl_deserialize(io, true),
          status: Int32.tl_deserialize(io, true),
        )
      end
    end

    class MsgNewDetailedInfo < TypeMsgDetailedInfo
      CONSTRUCTOR_ID = 0x809DB6DF

      getter answer_msg_id : Int64
      getter bytes : Int32
      getter status : Int32

      def initialize(
        answer_msg_id : Int64,
        bytes : Int32,
        status : Int32
      )
        @answer_msg_id = answer_msg_id
        @bytes = bytes
        @status = status
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @answer_msg_id.tl_serialize(io, true)
        @bytes.tl_serialize(io, true)
        @status.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          answer_msg_id: Int64.tl_deserialize(io, true),
          bytes: Int32.tl_deserialize(io, true),
          status: Int32.tl_deserialize(io, true),
        )
      end
    end

    class MsgResendReq < TypeMsgResendReq
      CONSTRUCTOR_ID = 0x7D861A08

      getter msg_ids : Array(Int64)

      def initialize(
        msg_ids : Array(Int64)
      )
        @msg_ids = msg_ids
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @msg_ids.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          msg_ids: Array(Int64).tl_deserialize(io, false),
        )
      end
    end

    class RpcError < TypeRpcError
      CONSTRUCTOR_ID = 0x2144CA19

      getter error_code : Int32
      getter error_message : Bytes

      def initialize(
        error_code : Int32,
        error_message : Bytes | String | IO
      )
        @error_code = error_code
        @error_message = error_message
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @error_code.tl_serialize(io, true)
        @error_message.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          error_code: Int32.tl_deserialize(io, true),
          error_message: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class RpcAnswerUnknown < TypeRpcDropAnswer
      CONSTRUCTOR_ID = 0x5E2AD36E

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class RpcAnswerDroppedRunning < TypeRpcDropAnswer
      CONSTRUCTOR_ID = 0xCD78E586

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class RpcAnswerDropped < TypeRpcDropAnswer
      CONSTRUCTOR_ID = 0xA43AD8B7

      getter msg_id : Int64
      getter seq_no : Int32
      getter bytes : Int32

      def initialize(
        msg_id : Int64,
        seq_no : Int32,
        bytes : Int32
      )
        @msg_id = msg_id
        @seq_no = seq_no
        @bytes = bytes
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @msg_id.tl_serialize(io, true)
        @seq_no.tl_serialize(io, true)
        @bytes.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          msg_id: Int64.tl_deserialize(io, true),
          seq_no: Int32.tl_deserialize(io, true),
          bytes: Int32.tl_deserialize(io, true),
        )
      end
    end

    class FutureSalt < TypeFutureSalt
      CONSTRUCTOR_ID = 0x0949D9DC

      getter valid_since : Int32
      getter valid_until : Int32
      getter salt : Int64

      def initialize(
        valid_since : Int32,
        valid_until : Int32,
        salt : Int64
      )
        @valid_since = valid_since
        @valid_until = valid_until
        @salt = salt
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @valid_since.tl_serialize(io, true)
        @valid_until.tl_serialize(io, true)
        @salt.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          valid_since: Int32.tl_deserialize(io, true),
          valid_until: Int32.tl_deserialize(io, true),
          salt: Int64.tl_deserialize(io, true),
        )
      end
    end

    class FutureSalts < TypeFutureSalts
      CONSTRUCTOR_ID = 0xAE500895

      getter req_msg_id : Int64
      getter now : Int32
      getter salts : Array(Root::TypeFutureSalt)

      def initialize(
        req_msg_id : Int64,
        now : Int32,
        salts : Array(Root::TypeFutureSalt)
      )
        @req_msg_id = req_msg_id
        @now = now
        @salts = salts
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @req_msg_id.tl_serialize(io, true)
        @now.tl_serialize(io, true)
        @salts.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          req_msg_id: Int64.tl_deserialize(io, true),
          now: Int32.tl_deserialize(io, true),
          salts: Array(Root::TypeFutureSalt).tl_deserialize(io, true),
        )
      end
    end

    class Pong < TypePong
      CONSTRUCTOR_ID = 0x347773C5

      getter msg_id : Int64
      getter ping_id : Int64

      def initialize(
        msg_id : Int64,
        ping_id : Int64
      )
        @msg_id = msg_id
        @ping_id = ping_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @msg_id.tl_serialize(io, true)
        @ping_id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          msg_id: Int64.tl_deserialize(io, true),
          ping_id: Int64.tl_deserialize(io, true),
        )
      end
    end

    class DestroySessionOk < TypeDestroySessionRes
      CONSTRUCTOR_ID = 0xE22045FC

      getter session_id : Int64

      def initialize(
        session_id : Int64
      )
        @session_id = session_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @session_id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          session_id: Int64.tl_deserialize(io, true),
        )
      end
    end

    class DestroySessionNone < TypeDestroySessionRes
      CONSTRUCTOR_ID = 0x62D350C9

      getter session_id : Int64

      def initialize(
        session_id : Int64
      )
        @session_id = session_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @session_id.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          session_id: Int64.tl_deserialize(io, true),
        )
      end
    end

    class NewSessionCreated < TypeNewSession
      CONSTRUCTOR_ID = 0x9EC20908

      getter first_msg_id : Int64
      getter unique_id : Int64
      getter server_salt : Int64

      def initialize(
        first_msg_id : Int64,
        unique_id : Int64,
        server_salt : Int64
      )
        @first_msg_id = first_msg_id
        @unique_id = unique_id
        @server_salt = server_salt
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @first_msg_id.tl_serialize(io, true)
        @unique_id.tl_serialize(io, true)
        @server_salt.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          first_msg_id: Int64.tl_deserialize(io, true),
          unique_id: Int64.tl_deserialize(io, true),
          server_salt: Int64.tl_deserialize(io, true),
        )
      end
    end

    class HttpWait < TypeHttpWait
      CONSTRUCTOR_ID = 0x9299359F

      getter max_delay : Int32
      getter wait_after : Int32
      getter max_wait : Int32

      def initialize(
        max_delay : Int32,
        wait_after : Int32,
        max_wait : Int32
      )
        @max_delay = max_delay
        @wait_after = wait_after
        @max_wait = max_wait
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @max_delay.tl_serialize(io, true)
        @wait_after.tl_serialize(io, true)
        @max_wait.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          max_delay: Int32.tl_deserialize(io, true),
          wait_after: Int32.tl_deserialize(io, true),
          max_wait: Int32.tl_deserialize(io, true),
        )
      end
    end

    class IpPort < TypeIpPort
      CONSTRUCTOR_ID = 0xD433AD73

      getter ipv4 : Int32
      getter port : Int32

      def initialize(
        ipv4 : Int32,
        port : Int32
      )
        @ipv4 = ipv4
        @port = port
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @ipv4.tl_serialize(io, true)
        @port.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          ipv4: Int32.tl_deserialize(io, true),
          port: Int32.tl_deserialize(io, true),
        )
      end
    end

    class IpPortSecret < TypeIpPort
      CONSTRUCTOR_ID = 0x37982646

      getter ipv4 : Int32
      getter port : Int32
      getter secret : Bytes

      def initialize(
        ipv4 : Int32,
        port : Int32,
        secret : Bytes | String | IO
      )
        @ipv4 = ipv4
        @port = port
        @secret = TL::Utils.parse_bytes!(secret)
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @ipv4.tl_serialize(io, true)
        @port.tl_serialize(io, true)
        @secret.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          ipv4: Int32.tl_deserialize(io, true),
          port: Int32.tl_deserialize(io, true),
          secret: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class AccessPointRule < TypeAccessPointRule
      CONSTRUCTOR_ID = 0x4679B65F

      getter phone_prefix_rules : Bytes
      getter dc_id : Int32
      getter ips : Array(Root::TypeIpPort)

      def initialize(
        phone_prefix_rules : Bytes | String | IO,
        dc_id : Int32,
        ips : Array(Root::TypeIpPort)
      )
        @phone_prefix_rules = phone_prefix_rules
        @dc_id = dc_id
        @ips = ips
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @phone_prefix_rules.tl_serialize(io, true)
        @dc_id.tl_serialize(io, true)
        @ips.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          phone_prefix_rules: Bytes.tl_deserialize(io, true),
          dc_id: Int32.tl_deserialize(io, true),
          ips: Array(Root::TypeIpPort).tl_deserialize(io, true),
        )
      end
    end

    class TlsClientHello < TypeTlsClientHello
      CONSTRUCTOR_ID = 0x6C52C484

      getter blocks : Array(Root::TypeTlsBlock)

      def initialize(
        blocks : Array(Root::TypeTlsBlock)
      )
        @blocks = blocks
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @blocks.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          blocks: Array(Root::TypeTlsBlock).tl_deserialize(io, true),
        )
      end
    end

    class TlsBlockString < TypeTlsBlock
      CONSTRUCTOR_ID = 0x4218A164

      getter data : Bytes

      def initialize(
        data : Bytes | String | IO
      )
        @data = data
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @data.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          data: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class TlsBlockRandom < TypeTlsBlock
      CONSTRUCTOR_ID = 0x4D4DC41E

      getter length : Int32

      def initialize(
        length : Int32
      )
        @length = length
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @length.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          length: Int32.tl_deserialize(io, true),
        )
      end
    end

    class TlsBlockZero < TypeTlsBlock
      CONSTRUCTOR_ID = 0x09333AFB

      getter length : Int32

      def initialize(
        length : Int32
      )
        @length = length
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @length.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          length: Int32.tl_deserialize(io, true),
        )
      end
    end

    class TlsBlockDomain < TypeTlsBlock
      CONSTRUCTOR_ID = 0x10E8636F

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class TlsBlockGrease < TypeTlsBlock
      CONSTRUCTOR_ID = 0xE675A1C1

      getter seed : Int32

      def initialize(
        seed : Int32
      )
        @seed = seed
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @seed.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          seed: Int32.tl_deserialize(io, true),
        )
      end
    end

    class TlsBlockPublicKey < TypeTlsBlock
      CONSTRUCTOR_ID = 0x9EB95B5C

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class TlsBlockScope < TypeTlsBlock
      CONSTRUCTOR_ID = 0xE725D44F

      getter entries : Array(Root::TypeTlsBlock)

      def initialize(
        entries : Array(Root::TypeTlsBlock)
      )
        @entries = entries
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @entries.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          entries: Array(Root::TypeTlsBlock).tl_deserialize(io, false),
        )
      end
    end

    class InvokeAfterMsg < TLRequest
      CONSTRUCTOR_ID = 0xCB9F372D

      getter msg_id : Int64
      getter query : Bytes

      def initialize(
        msg_id : Int64,
        query : Bytes | String | IO
      )
        @msg_id = msg_id
        @query = query
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @msg_id.tl_serialize(io, true)
        @query.tl_serialize(io, false)
      end

      def return_type
        Bytes
      end
    end

    class InvokeAfterMsgs < TLRequest
      CONSTRUCTOR_ID = 0x3DC4B4F0

      getter msg_ids : Array(Int64)
      getter query : Bytes

      def initialize(
        msg_ids : Array(Int64),
        query : Bytes | String | IO
      )
        @msg_ids = msg_ids
        @query = query
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @msg_ids.tl_serialize(io, false)
        @query.tl_serialize(io, false)
      end

      def return_type
        Bytes
      end
    end

    class InitConnection < TLRequest
      CONSTRUCTOR_ID = 0xC1CD5EA9

      getter api_id : Int32
      getter device_model : Bytes
      getter system_version : Bytes
      getter app_version : Bytes
      getter system_lang_code : Bytes
      getter lang_pack : Bytes
      getter lang_code : Bytes
      getter query : Bytes
      getter proxy : Root::TypeInputClientProxy | Nil
      getter params : Root::TypeJSONValue | Nil

      def initialize(
        api_id : Int32,
        device_model : Bytes | String | IO,
        system_version : Bytes | String | IO,
        app_version : Bytes | String | IO,
        system_lang_code : Bytes | String | IO,
        lang_pack : Bytes | String | IO,
        lang_code : Bytes | String | IO,
        query : Bytes | String | IO,
        proxy : Root::TypeInputClientProxy | Nil = nil,
        params : Root::TypeJSONValue | Nil = nil
      )
        @api_id = api_id
        @device_model = device_model
        @system_version = system_version
        @app_version = app_version
        @system_lang_code = system_lang_code
        @lang_pack = lang_pack
        @lang_code = lang_code
        @query = query
        @proxy = proxy
        @params = params
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!proxy.nil? ? 1 : 0) |
            (!params.nil? ? 2 : 0)
        ).tl_serialize(io)
        @api_id.tl_serialize(io, true)
        @device_model.tl_serialize(io, true)
        @system_version.tl_serialize(io, true)
        @app_version.tl_serialize(io, true)
        @system_lang_code.tl_serialize(io, true)
        @lang_pack.tl_serialize(io, true)
        @lang_code.tl_serialize(io, true)
        @proxy.tl_serialize(io, false) unless @proxy.nil?
        @params.tl_serialize(io, false) unless @params.nil?
        @query.tl_serialize(io, false)
      end

      def return_type
        Bytes
      end
    end

    class InvokeWithLayer < TLRequest
      CONSTRUCTOR_ID = 0xDA9B0D0D

      getter layer : Int32
      getter query : Bytes

      def initialize(
        layer : Int32,
        query : Bytes | String | IO
      )
        @layer = layer
        @query = query
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @layer.tl_serialize(io, true)
        @query.tl_serialize(io, false)
      end

      def return_type
        Bytes
      end
    end

    class InvokeWithoutUpdates < TLRequest
      CONSTRUCTOR_ID = 0xBF9459B7

      getter query : Bytes

      def initialize(
        query : Bytes | String | IO
      )
        @query = query
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @query.tl_serialize(io, false)
      end

      def return_type
        Bytes
      end
    end

    class InvokeWithMessagesRange < TLRequest
      CONSTRUCTOR_ID = 0x365275F2

      getter range : Root::TypeMessageRange
      getter query : Bytes

      def initialize(
        range : Root::TypeMessageRange,
        query : Bytes | String | IO
      )
        @range = range
        @query = query
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @range.tl_serialize(io, false)
        @query.tl_serialize(io, false)
      end

      def return_type
        Bytes
      end
    end

    class InvokeWithTakeout < TLRequest
      CONSTRUCTOR_ID = 0xACA9FD2E

      getter takeout_id : Int64
      getter query : Bytes

      def initialize(
        takeout_id : Int64,
        query : Bytes | String | IO
      )
        @takeout_id = takeout_id
        @query = query
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @takeout_id.tl_serialize(io, true)
        @query.tl_serialize(io, false)
      end

      def return_type
        Bytes
      end
    end

    class ReqPq < TLRequest
      CONSTRUCTOR_ID = 0x60469778

      getter nonce : BigInt

      def initialize(
        nonce : BigInt
      )
        @nonce = nonce
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @nonce.tl_serialize(io, true)
      end

      def return_type
        Root::TypeResPQ
      end
    end

    class ReqPqMulti < TLRequest
      CONSTRUCTOR_ID = 0xBE7E8EF1

      getter nonce : BigInt

      def initialize(
        nonce : BigInt
      )
        @nonce = nonce
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @nonce.tl_serialize(io, true)
      end

      def return_type
        Root::TypeResPQ
      end
    end

    class ReqDHParams < TLRequest
      CONSTRUCTOR_ID = 0xD712E4BE

      getter nonce : BigInt
      getter server_nonce : BigInt
      getter p : Bytes
      getter q : Bytes
      getter public_key_fingerprint : Int64
      getter encrypted_data : Bytes

      def initialize(
        nonce : BigInt,
        server_nonce : BigInt,
        p : Bytes | String | IO,
        q : Bytes | String | IO,
        public_key_fingerprint : Int64,
        encrypted_data : Bytes | String | IO
      )
        @nonce = nonce
        @server_nonce = server_nonce
        @p = p
        @q = q
        @public_key_fingerprint = public_key_fingerprint
        @encrypted_data = encrypted_data
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @nonce.tl_serialize(io, true)
        @server_nonce.tl_serialize(io, true)
        @p.tl_serialize(io, true)
        @q.tl_serialize(io, true)
        @public_key_fingerprint.tl_serialize(io, true)
        @encrypted_data.tl_serialize(io, true)
      end

      def return_type
        Root::TypeServerDHParams
      end
    end

    class SetClientDHParams < TLRequest
      CONSTRUCTOR_ID = 0xF5045F1F

      getter nonce : BigInt
      getter server_nonce : BigInt
      getter encrypted_data : Bytes

      def initialize(
        nonce : BigInt,
        server_nonce : BigInt,
        encrypted_data : Bytes | String | IO
      )
        @nonce = nonce
        @server_nonce = server_nonce
        @encrypted_data = encrypted_data
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @nonce.tl_serialize(io, true)
        @server_nonce.tl_serialize(io, true)
        @encrypted_data.tl_serialize(io, true)
      end

      def return_type
        Root::TypeSetClientDHParamsAnswer
      end
    end

    class DestroyAuthKey < TLRequest
      CONSTRUCTOR_ID = 0xD1435160

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def return_type
        Root::TypeDestroyAuthKeyRes
      end
    end

    class RpcDropAnswer < TLRequest
      CONSTRUCTOR_ID = 0x58E4A740

      getter req_msg_id : Int64

      def initialize(
        req_msg_id : Int64
      )
        @req_msg_id = req_msg_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @req_msg_id.tl_serialize(io, true)
      end

      def return_type
        Root::TypeRpcDropAnswer
      end
    end

    class GetFutureSalts < TLRequest
      CONSTRUCTOR_ID = 0xB921BD04

      getter num : Int32

      def initialize(
        num : Int32
      )
        @num = num
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @num.tl_serialize(io, true)
      end

      def return_type
        Root::TypeFutureSalts
      end
    end

    class Ping < TLRequest
      CONSTRUCTOR_ID = 0x7ABE77EC

      getter ping_id : Int64

      def initialize(
        ping_id : Int64
      )
        @ping_id = ping_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @ping_id.tl_serialize(io, true)
      end

      def return_type
        Root::TypePong
      end
    end

    class PingDelayDisconnect < TLRequest
      CONSTRUCTOR_ID = 0xF3427B8C

      getter ping_id : Int64
      getter disconnect_delay : Int32

      def initialize(
        ping_id : Int64,
        disconnect_delay : Int32
      )
        @ping_id = ping_id
        @disconnect_delay = disconnect_delay
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @ping_id.tl_serialize(io, true)
        @disconnect_delay.tl_serialize(io, true)
      end

      def return_type
        Root::TypePong
      end
    end

    class DestroySession < TLRequest
      CONSTRUCTOR_ID = 0xE7512126

      getter session_id : Int64

      def initialize(
        session_id : Int64
      )
        @session_id = session_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @session_id.tl_serialize(io, true)
      end

      def return_type
        Root::TypeDestroySessionRes
      end
    end
  end
end
