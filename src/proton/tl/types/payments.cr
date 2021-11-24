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
    module Payments
      abstract class TypePaymentForm < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x1694761B
            PaymentForm.tl_deserialize(io, bare)
          when 0x8A333C8D
            GetPaymentForm.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeValidatedRequestedInfo < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0xD1451883
            ValidatedRequestedInfo.tl_deserialize(io, bare)
          when 0xDB103170
            ValidateRequestedInfo.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypePaymentResult < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x4E5F810D
            PaymentResult.tl_deserialize(io, bare)
          when 0xD8411139
            PaymentVerificationNeeded.tl_deserialize(io, bare)
          when 0x30C3BC9D
            SendPaymentForm.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypePaymentReceipt < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x70C4FE03
            PaymentReceipt.tl_deserialize(io, bare)
          when 0x2478D1CC
            GetPaymentReceipt.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeSavedInfo < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0xFB8FE43C
            SavedInfo.tl_deserialize(io, bare)
          when 0x227D824B
            GetSavedInfo.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeBankCardData < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x3E24E573
            BankCardData.tl_deserialize(io, bare)
          when 0x2E79D779
            GetBankCardData.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      class PaymentForm < TypePaymentForm
        CONSTRUCTOR_ID = 0x1694761B

        getter form_id : Int64
        getter bot_id : Int64
        getter invoice : Root::TypeInvoice
        getter provider_id : Int64
        getter url : Bytes
        getter users : Array(Root::TypeUser)
        getter can_save_credentials : Bool | Nil
        getter password_missing : Bool | Nil
        getter native_provider : Bytes | Nil
        getter native_params : Root::TypeDataJSON | Nil
        getter saved_info : Root::TypePaymentRequestedInfo | Nil
        getter saved_credentials : Root::TypePaymentSavedCredentials | Nil

        def initialize(
          form_id : Int64,
          bot_id : Int64,
          invoice : Root::TypeInvoice,
          provider_id : Int64,
          url : Bytes | String | IO,
          users : Array(Root::TypeUser),
          can_save_credentials : Bool | Nil = nil,
          password_missing : Bool | Nil = nil,
          native_provider : Bytes | Nil = nil,
          native_params : Root::TypeDataJSON | Nil = nil,
          saved_info : Root::TypePaymentRequestedInfo | Nil = nil,
          saved_credentials : Root::TypePaymentSavedCredentials | Nil = nil
        )
          @form_id = form_id
          @bot_id = bot_id
          @invoice = invoice
          @provider_id = provider_id
          @url = url
          @users = users
          @can_save_credentials = can_save_credentials
          @password_missing = password_missing
          @native_provider = native_provider
          @native_params = native_params
          @saved_info = saved_info
          @saved_credentials = saved_credentials
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!can_save_credentials.nil? ? 4 : 0) |
              (!password_missing.nil? ? 8 : 0) |
              (!native_provider.nil? ? 16 : 0) |
              (!native_params.nil? ? 16 : 0) |
              (!saved_info.nil? ? 1 : 0) |
              (!saved_credentials.nil? ? 2 : 0)
          ).tl_serialize(io)
          @form_id.tl_serialize(io, true)
          @bot_id.tl_serialize(io, true)
          @invoice.tl_serialize(io, false)
          @provider_id.tl_serialize(io, true)
          @url.tl_serialize(io, true)
          @native_provider.tl_serialize(io, true) unless @native_provider.nil?
          @native_params.tl_serialize(io, false) unless @native_params.nil?
          @saved_info.tl_serialize(io, false) unless @saved_info.nil?
          @saved_credentials.tl_serialize(io, false) unless @saved_credentials.nil?
          @users.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          flags = Int32.tl_deserialize(io)
          new(
            form_id = Int64.tl_deserialize(io, true),
            bot_id = Int64.tl_deserialize(io, true),
            invoice = Root::TypeInvoice.tl_deserialize(io, false),
            provider_id = Int64.tl_deserialize(io, true),
            url = Bytes.tl_deserialize(io, true),
            users = Array(Root::TypeUser).tl_deserialize(io, false),
            can_save_credentials = flags & 4 == 1,
            password_missing = flags & 8 == 1,
            native_provider = flags & 16 == 1 ? Bytes.tl_deserialize(io, true) : nil,
            native_params = flags & 16 == 1 ? Root::TypeDataJSON.tl_deserialize(io, false) : nil,
            saved_info = flags & 1 == 1 ? Root::TypePaymentRequestedInfo.tl_deserialize(io, false) : nil,
            saved_credentials = flags & 2 == 1 ? Root::TypePaymentSavedCredentials.tl_deserialize(io, false) : nil,
          )
        end
      end

      class ValidatedRequestedInfo < TypeValidatedRequestedInfo
        CONSTRUCTOR_ID = 0xD1451883

        getter id : Bytes | Nil
        getter shipping_options : Array(Root::TypeShippingOption) | Nil

        def initialize(
          id : Bytes | Nil = nil,
          shipping_options : Array(Root::TypeShippingOption) | Nil = nil
        )
          @id = id
          @shipping_options = shipping_options
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!id.nil? ? 1 : 0) |
              (!shipping_options.nil? ? 2 : 0)
          ).tl_serialize(io)
          @id.tl_serialize(io, true) unless @id.nil?
          @shipping_options.tl_serialize(io, false) unless @shipping_options.nil?
        end

        def self.tl_deserialize(io : IO, bare = false)
          flags = Int32.tl_deserialize(io)
          new(
            id = flags & 1 == 1 ? Bytes.tl_deserialize(io, true) : nil,
            shipping_options = flags & 2 == 1 ? Array(Root::TypeShippingOption).tl_deserialize(io, false) : nil,
          )
        end
      end

      class PaymentResult < TypePaymentResult
        CONSTRUCTOR_ID = 0x4E5F810D

        getter updates : Root::TypeUpdates

        def initialize(
          updates : Root::TypeUpdates
        )
          @updates = updates
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @updates.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            updates = Root::TypeUpdates.tl_deserialize(io, false),
          )
        end
      end

      class PaymentVerificationNeeded < TypePaymentResult
        CONSTRUCTOR_ID = 0xD8411139

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
            url = Bytes.tl_deserialize(io, true),
          )
        end
      end

      class PaymentReceipt < TypePaymentReceipt
        CONSTRUCTOR_ID = 0x70C4FE03

        getter date : Int32
        getter bot_id : Int64
        getter provider_id : Int64
        getter title : Bytes
        getter description : Bytes
        getter invoice : Root::TypeInvoice
        getter currency : Bytes
        getter total_amount : Int64
        getter credentials_title : Bytes
        getter users : Array(Root::TypeUser)
        getter photo : Root::TypeWebDocument | Nil
        getter info : Root::TypePaymentRequestedInfo | Nil
        getter shipping : Root::TypeShippingOption | Nil
        getter tip_amount : Int64 | Nil

        def initialize(
          date : Int32,
          bot_id : Int64,
          provider_id : Int64,
          title : Bytes | String | IO,
          description : Bytes | String | IO,
          invoice : Root::TypeInvoice,
          currency : Bytes | String | IO,
          total_amount : Int64,
          credentials_title : Bytes | String | IO,
          users : Array(Root::TypeUser),
          photo : Root::TypeWebDocument | Nil = nil,
          info : Root::TypePaymentRequestedInfo | Nil = nil,
          shipping : Root::TypeShippingOption | Nil = nil,
          tip_amount : Int64 | Nil = nil
        )
          @date = date
          @bot_id = bot_id
          @provider_id = provider_id
          @title = title
          @description = description
          @invoice = invoice
          @currency = currency
          @total_amount = total_amount
          @credentials_title = credentials_title
          @users = users
          @photo = photo
          @info = info
          @shipping = shipping
          @tip_amount = tip_amount
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!photo.nil? ? 4 : 0) |
              (!info.nil? ? 1 : 0) |
              (!shipping.nil? ? 2 : 0) |
              (!tip_amount.nil? ? 8 : 0)
          ).tl_serialize(io)
          @date.tl_serialize(io, true)
          @bot_id.tl_serialize(io, true)
          @provider_id.tl_serialize(io, true)
          @title.tl_serialize(io, true)
          @description.tl_serialize(io, true)
          @photo.tl_serialize(io, false) unless @photo.nil?
          @invoice.tl_serialize(io, false)
          @info.tl_serialize(io, false) unless @info.nil?
          @shipping.tl_serialize(io, false) unless @shipping.nil?
          @tip_amount.tl_serialize(io, true) unless @tip_amount.nil?
          @currency.tl_serialize(io, true)
          @total_amount.tl_serialize(io, true)
          @credentials_title.tl_serialize(io, true)
          @users.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          flags = Int32.tl_deserialize(io)
          new(
            date = Int32.tl_deserialize(io, true),
            bot_id = Int64.tl_deserialize(io, true),
            provider_id = Int64.tl_deserialize(io, true),
            title = Bytes.tl_deserialize(io, true),
            description = Bytes.tl_deserialize(io, true),
            invoice = Root::TypeInvoice.tl_deserialize(io, false),
            currency = Bytes.tl_deserialize(io, true),
            total_amount = Int64.tl_deserialize(io, true),
            credentials_title = Bytes.tl_deserialize(io, true),
            users = Array(Root::TypeUser).tl_deserialize(io, false),
            photo = flags & 4 == 1 ? Root::TypeWebDocument.tl_deserialize(io, false) : nil,
            info = flags & 1 == 1 ? Root::TypePaymentRequestedInfo.tl_deserialize(io, false) : nil,
            shipping = flags & 2 == 1 ? Root::TypeShippingOption.tl_deserialize(io, false) : nil,
            tip_amount = flags & 8 == 1 ? Int64.tl_deserialize(io, true) : nil,
          )
        end
      end

      class SavedInfo < TypeSavedInfo
        CONSTRUCTOR_ID = 0xFB8FE43C

        getter has_saved_credentials : Bool | Nil
        getter saved_info : Root::TypePaymentRequestedInfo | Nil

        def initialize(
          has_saved_credentials : Bool | Nil = nil,
          saved_info : Root::TypePaymentRequestedInfo | Nil = nil
        )
          @has_saved_credentials = has_saved_credentials
          @saved_info = saved_info
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!has_saved_credentials.nil? ? 2 : 0) |
              (!saved_info.nil? ? 1 : 0)
          ).tl_serialize(io)
          @saved_info.tl_serialize(io, false) unless @saved_info.nil?
        end

        def self.tl_deserialize(io : IO, bare = false)
          flags = Int32.tl_deserialize(io)
          new(
            has_saved_credentials = flags & 2 == 1,
            saved_info = flags & 1 == 1 ? Root::TypePaymentRequestedInfo.tl_deserialize(io, false) : nil,
          )
        end
      end

      class BankCardData < TypeBankCardData
        CONSTRUCTOR_ID = 0x3E24E573

        getter title : Bytes
        getter open_urls : Array(Root::TypeBankCardOpenUrl)

        def initialize(
          title : Bytes | String | IO,
          open_urls : Array(Root::TypeBankCardOpenUrl)
        )
          @title = title
          @open_urls = open_urls
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @title.tl_serialize(io, true)
          @open_urls.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            title = Bytes.tl_deserialize(io, true),
            open_urls = Array(Root::TypeBankCardOpenUrl).tl_deserialize(io, false),
          )
        end
      end

      class GetPaymentForm < TLRequest
        CONSTRUCTOR_ID = 0x8A333C8D

        getter peer : Root::TypeInputPeer
        getter msg_id : Int32
        getter theme_params : Root::TypeDataJSON | Nil

        def initialize(
          peer : Root::TypeInputPeer,
          msg_id : Int32,
          theme_params : Root::TypeDataJSON | Nil = nil
        )
          @peer = peer
          @msg_id = msg_id
          @theme_params = theme_params
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!theme_params.nil? ? 1 : 0)
          ).tl_serialize(io)
          @peer.tl_serialize(io, false)
          @msg_id.tl_serialize(io, true)
          @theme_params.tl_serialize(io, false) unless @theme_params.nil?
        end

        def return_type
          Payments::TypePaymentForm
        end
      end

      class GetPaymentReceipt < TLRequest
        CONSTRUCTOR_ID = 0x2478D1CC

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
          Payments::TypePaymentReceipt
        end
      end

      class ValidateRequestedInfo < TLRequest
        CONSTRUCTOR_ID = 0xDB103170

        getter peer : Root::TypeInputPeer
        getter msg_id : Int32
        getter info : Root::TypePaymentRequestedInfo
        getter save : Bool | Nil

        def initialize(
          peer : Root::TypeInputPeer,
          msg_id : Int32,
          info : Root::TypePaymentRequestedInfo,
          save : Bool | Nil = nil
        )
          @peer = peer
          @msg_id = msg_id
          @info = info
          @save = save
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!save.nil? ? 1 : 0)
          ).tl_serialize(io)
          @peer.tl_serialize(io, false)
          @msg_id.tl_serialize(io, true)
          @info.tl_serialize(io, false)
        end

        def return_type
          Payments::TypeValidatedRequestedInfo
        end
      end

      class SendPaymentForm < TLRequest
        CONSTRUCTOR_ID = 0x30C3BC9D

        getter form_id : Int64
        getter peer : Root::TypeInputPeer
        getter msg_id : Int32
        getter credentials : Root::TypeInputPaymentCredentials
        getter requested_info_id : Bytes | Nil
        getter shipping_option_id : Bytes | Nil
        getter tip_amount : Int64 | Nil

        def initialize(
          form_id : Int64,
          peer : Root::TypeInputPeer,
          msg_id : Int32,
          credentials : Root::TypeInputPaymentCredentials,
          requested_info_id : Bytes | Nil = nil,
          shipping_option_id : Bytes | Nil = nil,
          tip_amount : Int64 | Nil = nil
        )
          @form_id = form_id
          @peer = peer
          @msg_id = msg_id
          @credentials = credentials
          @requested_info_id = requested_info_id
          @shipping_option_id = shipping_option_id
          @tip_amount = tip_amount
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!requested_info_id.nil? ? 1 : 0) |
              (!shipping_option_id.nil? ? 2 : 0) |
              (!tip_amount.nil? ? 4 : 0)
          ).tl_serialize(io)
          @form_id.tl_serialize(io, true)
          @peer.tl_serialize(io, false)
          @msg_id.tl_serialize(io, true)
          @requested_info_id.tl_serialize(io, true) unless @requested_info_id.nil?
          @shipping_option_id.tl_serialize(io, true) unless @shipping_option_id.nil?
          @credentials.tl_serialize(io, false)
          @tip_amount.tl_serialize(io, true) unless @tip_amount.nil?
        end

        def return_type
          Payments::TypePaymentResult
        end
      end

      class GetSavedInfo < TLRequest
        CONSTRUCTOR_ID = 0x227D824B

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
        end

        def return_type
          Payments::TypeSavedInfo
        end
      end

      class ClearSavedInfo < TLRequest
        CONSTRUCTOR_ID = 0xD83D70C1

        getter credentials : Bool | Nil
        getter info : Bool | Nil

        def initialize(
          credentials : Bool | Nil = nil,
          info : Bool | Nil = nil
        )
          @credentials = credentials
          @info = info
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!credentials.nil? ? 1 : 0) |
              (!info.nil? ? 2 : 0)
          ).tl_serialize(io)
        end

        def return_type
          Bool
        end
      end

      class GetBankCardData < TLRequest
        CONSTRUCTOR_ID = 0x2E79D779

        getter number : Bytes

        def initialize(
          number : Bytes | String | IO
        )
          @number = number
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @number.tl_serialize(io, true)
        end

        def return_type
          Payments::TypeBankCardData
        end
      end
    end
  end
end
