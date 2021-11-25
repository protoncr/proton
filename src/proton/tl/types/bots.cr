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
  module Bots
    abstract class TypeDataJSON < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xAA2769ED
          SendCustomRequest.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    class SendCustomRequest < TLRequest
      CONSTRUCTOR_ID = 0xAA2769ED

      getter custom_method : Bytes
      getter params : Root::TypeDataJSON

      def initialize(
        custom_method : Bytes | String | IO,
        params : Root::TypeDataJSON
      )
        @custom_method = custom_method
        @params = params
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @custom_method.tl_serialize(io, true)
        @params.tl_serialize(io, false)
      end

      def return_type
        Root::TypeDataJSON
      end
    end

    class AnswerWebhookJSONQuery < TLRequest
      CONSTRUCTOR_ID = 0xE6213F4D

      getter query_id : Int64
      getter data : Root::TypeDataJSON

      def initialize(
        query_id : Int64,
        data : Root::TypeDataJSON
      )
        @query_id = query_id
        @data = data
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @query_id.tl_serialize(io, true)
        @data.tl_serialize(io, false)
      end

      def return_type
        Bool
      end
    end

    class SetBotCommands < TLRequest
      CONSTRUCTOR_ID = 0x0517165A

      getter scope : Root::TypeBotCommandScope
      getter lang_code : Bytes
      getter commands : Array(Root::TypeBotCommand)

      def initialize(
        scope : Root::TypeBotCommandScope,
        lang_code : Bytes | String | IO,
        commands : Array(Root::TypeBotCommand)
      )
        @scope = scope
        @lang_code = lang_code
        @commands = commands
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @scope.tl_serialize(io, false)
        @lang_code.tl_serialize(io, true)
        @commands.tl_serialize(io, false)
      end

      def return_type
        Bool
      end
    end

    class ResetBotCommands < TLRequest
      CONSTRUCTOR_ID = 0x3D8DE0F9

      getter scope : Root::TypeBotCommandScope
      getter lang_code : Bytes

      def initialize(
        scope : Root::TypeBotCommandScope,
        lang_code : Bytes | String | IO
      )
        @scope = scope
        @lang_code = lang_code
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @scope.tl_serialize(io, false)
        @lang_code.tl_serialize(io, true)
      end

      def return_type
        Bool
      end
    end

    class GetBotCommands < TLRequest
      CONSTRUCTOR_ID = 0xE34C0DD6

      getter scope : Root::TypeBotCommandScope
      getter lang_code : Bytes

      def initialize(
        scope : Root::TypeBotCommandScope,
        lang_code : Bytes | String | IO
      )
        @scope = scope
        @lang_code = lang_code
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @scope.tl_serialize(io, false)
        @lang_code.tl_serialize(io, true)
      end

      def return_type
        Array(Root::TypeBotCommand)
      end
    end
  end
end
