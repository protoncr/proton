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
  module Payments
    abstract class TypePaymentForm < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x1694761B
          PaymentForm.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeValidatedRequestedInfo < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xD1451883
          ValidatedRequestedInfo.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePaymentResult < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x4E5F810D
          PaymentResult.tl_deserialize(io, bare)
        when 0xD8411139
          PaymentVerificationNeeded.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypePaymentReceipt < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x70C4FE03
          PaymentReceipt.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeSavedInfo < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xFB8FE43C
          SavedInfo.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeBankCardData < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x3E24E573
          BankCardData.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    class PaymentForm < TypePaymentForm
      getter constructor_id : UInt32 = 0x1694761B_u32
      class_getter constructor_id : UInt32 = 0x1694761B_u32

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
        @url = TL::Utils.parse_bytes!(url)
        @users = users
        @can_save_credentials = can_save_credentials
        @password_missing = password_missing
        @native_provider = TL::Utils.parse_bytes(native_provider)
        @native_params = native_params
        @saved_info = saved_info
        @saved_credentials = saved_credentials
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!can_save_credentials.nil? ? 0x04 : 0) |
            (!password_missing.nil? ? 0x08 : 0) |
            (!native_provider.nil? ? 0x10 : 0) |
            (!native_params.nil? ? 0x10 : 0) |
            (!saved_info.nil? ? 0x01 : 0) |
            (!saved_credentials.nil? ? 0x02 : 0)
        ).tl_serialize(io)
        @form_id.tl_serialize(io)
        @bot_id.tl_serialize(io)
        @invoice.tl_serialize(io)
        @provider_id.tl_serialize(io)
        @url.tl_serialize(io)
        @native_provider.tl_serialize(io) unless @native_provider.nil?
        @native_params.tl_serialize(io) unless @native_params.nil?
        @saved_info.tl_serialize(io) unless @saved_info.nil?
        @saved_credentials.tl_serialize(io) unless @saved_credentials.nil?
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        flags = UInt32.tl_deserialize(io)
        new(
          form_id: Int64.tl_deserialize(io),
          bot_id: Int64.tl_deserialize(io),
          invoice: Root::TypeInvoice.tl_deserialize(io),
          provider_id: Int64.tl_deserialize(io),
          url: Bytes.tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
          can_save_credentials: flags & 0x04 > 0 || nil,
          password_missing: flags & 0x08 > 0 || nil,
          native_provider: flags & 0x10 > 0 ? Bytes.tl_deserialize(io) : nil,
          native_params: flags & 0x10 > 0 ? Root::TypeDataJSON.tl_deserialize(io) : nil,
          saved_info: flags & 0x01 > 0 ? Root::TypePaymentRequestedInfo.tl_deserialize(io) : nil,
          saved_credentials: flags & 0x02 > 0 ? Root::TypePaymentSavedCredentials.tl_deserialize(io) : nil,
        )
      end
    end

    class ValidatedRequestedInfo < TypeValidatedRequestedInfo
      getter constructor_id : UInt32 = 0xD1451883_u32
      class_getter constructor_id : UInt32 = 0xD1451883_u32

      getter id : Bytes | Nil
      getter shipping_options : Array(Root::TypeShippingOption) | Nil

      def initialize(
        id : Bytes | Nil = nil,
        shipping_options : Array(Root::TypeShippingOption) | Nil = nil
      )
        @id = TL::Utils.parse_bytes(id)
        @shipping_options = shipping_options
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!id.nil? ? 0x01 : 0) |
            (!shipping_options.nil? ? 0x02 : 0)
        ).tl_serialize(io)
        @id.tl_serialize(io) unless @id.nil?
        @shipping_options.tl_serialize(io) unless @shipping_options.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        flags = UInt32.tl_deserialize(io)
        new(
          id: flags & 0x01 > 0 ? Bytes.tl_deserialize(io) : nil,
          shipping_options: flags & 0x02 > 0 ? Array(Root::TypeShippingOption).tl_deserialize(io) : nil,
        )
      end
    end

    class PaymentResult < TypePaymentResult
      getter constructor_id : UInt32 = 0x4E5F810D_u32
      class_getter constructor_id : UInt32 = 0x4E5F810D_u32

      getter updates : Root::TypeUpdates

      def initialize(
        updates : Root::TypeUpdates
      )
        @updates = updates
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @updates.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          updates: Root::TypeUpdates.tl_deserialize(io),
        )
      end
    end

    class PaymentVerificationNeeded < TypePaymentResult
      getter constructor_id : UInt32 = 0xD8411139_u32
      class_getter constructor_id : UInt32 = 0xD8411139_u32

      getter url : Bytes

      def initialize(
        url : Bytes | String | IO
      )
        @url = TL::Utils.parse_bytes!(url)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @url.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          url: Bytes.tl_deserialize(io),
        )
      end
    end

    class PaymentReceipt < TypePaymentReceipt
      getter constructor_id : UInt32 = 0x70C4FE03_u32
      class_getter constructor_id : UInt32 = 0x70C4FE03_u32

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
        @date = TL::Utils.parse_int!(date, Int32)
        @bot_id = bot_id
        @provider_id = provider_id
        @title = TL::Utils.parse_bytes!(title)
        @description = TL::Utils.parse_bytes!(description)
        @invoice = invoice
        @currency = TL::Utils.parse_bytes!(currency)
        @total_amount = total_amount
        @credentials_title = TL::Utils.parse_bytes!(credentials_title)
        @users = users
        @photo = photo
        @info = info
        @shipping = shipping
        @tip_amount = tip_amount
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!photo.nil? ? 0x04 : 0) |
            (!info.nil? ? 0x01 : 0) |
            (!shipping.nil? ? 0x02 : 0) |
            (!tip_amount.nil? ? 0x08 : 0)
        ).tl_serialize(io)
        @date.tl_serialize(io)
        @bot_id.tl_serialize(io)
        @provider_id.tl_serialize(io)
        @title.tl_serialize(io)
        @description.tl_serialize(io)
        @photo.tl_serialize(io) unless @photo.nil?
        @invoice.tl_serialize(io)
        @info.tl_serialize(io) unless @info.nil?
        @shipping.tl_serialize(io) unless @shipping.nil?
        @tip_amount.tl_serialize(io) unless @tip_amount.nil?
        @currency.tl_serialize(io)
        @total_amount.tl_serialize(io)
        @credentials_title.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        flags = UInt32.tl_deserialize(io)
        new(
          date: Int32.tl_deserialize(io),
          bot_id: Int64.tl_deserialize(io),
          provider_id: Int64.tl_deserialize(io),
          title: Bytes.tl_deserialize(io),
          description: Bytes.tl_deserialize(io),
          invoice: Root::TypeInvoice.tl_deserialize(io),
          currency: Bytes.tl_deserialize(io),
          total_amount: Int64.tl_deserialize(io),
          credentials_title: Bytes.tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
          photo: flags & 0x04 > 0 ? Root::TypeWebDocument.tl_deserialize(io) : nil,
          info: flags & 0x01 > 0 ? Root::TypePaymentRequestedInfo.tl_deserialize(io) : nil,
          shipping: flags & 0x02 > 0 ? Root::TypeShippingOption.tl_deserialize(io) : nil,
          tip_amount: flags & 0x08 > 0 ? Int64.tl_deserialize(io) : nil,
        )
      end
    end

    class SavedInfo < TypeSavedInfo
      getter constructor_id : UInt32 = 0xFB8FE43C_u32
      class_getter constructor_id : UInt32 = 0xFB8FE43C_u32

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
        constructor_id.tl_serialize(io) unless bare
        (
          (!has_saved_credentials.nil? ? 0x02 : 0) |
            (!saved_info.nil? ? 0x01 : 0)
        ).tl_serialize(io)
        @saved_info.tl_serialize(io) unless @saved_info.nil?
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        flags = UInt32.tl_deserialize(io)
        new(
          has_saved_credentials: flags & 0x02 > 0 || nil,
          saved_info: flags & 0x01 > 0 ? Root::TypePaymentRequestedInfo.tl_deserialize(io) : nil,
        )
      end
    end

    class BankCardData < TypeBankCardData
      getter constructor_id : UInt32 = 0x3E24E573_u32
      class_getter constructor_id : UInt32 = 0x3E24E573_u32

      getter title : Bytes
      getter open_urls : Array(Root::TypeBankCardOpenUrl)

      def initialize(
        title : Bytes | String | IO,
        open_urls : Array(Root::TypeBankCardOpenUrl)
      )
        @title = TL::Utils.parse_bytes!(title)
        @open_urls = open_urls
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @title.tl_serialize(io)
        @open_urls.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          title: Bytes.tl_deserialize(io),
          open_urls: Array(Root::TypeBankCardOpenUrl).tl_deserialize(io),
        )
      end
    end

    class GetPaymentForm < TLRequest
      getter constructor_id : UInt32 = 0x8A333C8D_u32
      class_getter constructor_id : UInt32 = 0x8A333C8D_u32

      getter peer : Root::TypeInputPeer
      getter msg_id : Int32
      getter theme_params : Root::TypeDataJSON | Nil

      def initialize(
        peer : Root::TypeInputPeer,
        msg_id : Int32,
        theme_params : Root::TypeDataJSON | Nil = nil
      )
        @peer = peer
        @msg_id = TL::Utils.parse_int!(msg_id, Int32)
        @theme_params = theme_params
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!theme_params.nil? ? 0x01 : 0)
        ).tl_serialize(io)
        @peer.tl_serialize(io)
        @msg_id.tl_serialize(io)
        @theme_params.tl_serialize(io) unless @theme_params.nil?
      end

      def self.return_type : Deserializable
        Payments::TypePaymentForm
      end
    end

    class GetPaymentReceipt < TLRequest
      getter constructor_id : UInt32 = 0x2478D1CC_u32
      class_getter constructor_id : UInt32 = 0x2478D1CC_u32

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
        Payments::TypePaymentReceipt
      end
    end

    class ValidateRequestedInfo < TLRequest
      getter constructor_id : UInt32 = 0xDB103170_u32
      class_getter constructor_id : UInt32 = 0xDB103170_u32

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
        @msg_id = TL::Utils.parse_int!(msg_id, Int32)
        @info = info
        @save = save
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!save.nil? ? 0x01 : 0)
        ).tl_serialize(io)
        @peer.tl_serialize(io)
        @msg_id.tl_serialize(io)
        @info.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Payments::TypeValidatedRequestedInfo
      end
    end

    class SendPaymentForm < TLRequest
      getter constructor_id : UInt32 = 0x30C3BC9D_u32
      class_getter constructor_id : UInt32 = 0x30C3BC9D_u32

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
        @msg_id = TL::Utils.parse_int!(msg_id, Int32)
        @credentials = credentials
        @requested_info_id = TL::Utils.parse_bytes(requested_info_id)
        @shipping_option_id = TL::Utils.parse_bytes(shipping_option_id)
        @tip_amount = tip_amount
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!requested_info_id.nil? ? 0x01 : 0) |
            (!shipping_option_id.nil? ? 0x02 : 0) |
            (!tip_amount.nil? ? 0x04 : 0)
        ).tl_serialize(io)
        @form_id.tl_serialize(io)
        @peer.tl_serialize(io)
        @msg_id.tl_serialize(io)
        @requested_info_id.tl_serialize(io) unless @requested_info_id.nil?
        @shipping_option_id.tl_serialize(io) unless @shipping_option_id.nil?
        @credentials.tl_serialize(io)
        @tip_amount.tl_serialize(io) unless @tip_amount.nil?
      end

      def self.return_type : Deserializable
        Payments::TypePaymentResult
      end
    end

    class GetSavedInfo < TLRequest
      getter constructor_id : UInt32 = 0x227D824B_u32
      class_getter constructor_id : UInt32 = 0x227D824B_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.return_type : Deserializable
        Payments::TypeSavedInfo
      end
    end

    class ClearSavedInfo < TLRequest
      getter constructor_id : UInt32 = 0xD83D70C1_u32
      class_getter constructor_id : UInt32 = 0xD83D70C1_u32

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
        constructor_id.tl_serialize(io) unless bare
        (
          (!credentials.nil? ? 0x01 : 0) |
            (!info.nil? ? 0x02 : 0)
        ).tl_serialize(io)
      end

      def self.return_type : Deserializable
        Bool
      end
    end

    class GetBankCardData < TLRequest
      getter constructor_id : UInt32 = 0x2E79D779_u32
      class_getter constructor_id : UInt32 = 0x2E79D779_u32

      getter number : Bytes

      def initialize(
        number : Bytes | String | IO
      )
        @number = TL::Utils.parse_bytes!(number)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @number.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Payments::TypeBankCardData
      end
    end
  end
end
