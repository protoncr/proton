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
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        else
          raise "Unknown constructor id: 0x%08X" % constructor_id
        end
      end
    end

    class SendCustomRequest < TLRequest
      getter constructor_id : UInt32 = 0xAA2769ED_u32
      class_getter constructor_id : UInt32 = 0xAA2769ED_u32

      getter custom_method : String
      getter params : Root::TypeDataJSON

      def initialize(
        custom_method : Bytes | String | IO,
        params : Root::TypeDataJSON
      )
        @custom_method = Utils.parse_string!(custom_method)
        @params = params
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @custom_method.tl_serialize(io)
        @params.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          custom_method: String.tl_deserialize(io),
          params: Root::TypeDataJSON.tl_deserialize(io),
        )
      end

      def self.return_type : TL::Deserializable
        Root::TypeDataJSON
      end
    end

    class AnswerWebhookJSONQuery < TLRequest
      getter constructor_id : UInt32 = 0xE6213F4D_u32
      class_getter constructor_id : UInt32 = 0xE6213F4D_u32

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
        constructor_id.tl_serialize(io) unless bare
        @query_id.tl_serialize(io)
        @data.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          query_id: Int64.tl_deserialize(io),
          data: Root::TypeDataJSON.tl_deserialize(io),
        )
      end

      def self.return_type : TL::Deserializable
        Bool
      end
    end

    class SetBotCommands < TLRequest
      getter constructor_id : UInt32 = 0x0517165A_u32
      class_getter constructor_id : UInt32 = 0x0517165A_u32

      getter scope : Root::TypeBotCommandScope
      getter lang_code : String
      getter commands : Array(Root::TypeBotCommand)

      def initialize(
        scope : Root::TypeBotCommandScope,
        lang_code : Bytes | String | IO,
        commands : Array(Root::TypeBotCommand)
      )
        @scope = scope
        @lang_code = Utils.parse_string!(lang_code)
        @commands = commands
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @scope.tl_serialize(io)
        @lang_code.tl_serialize(io)
        @commands.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          scope: Root::TypeBotCommandScope.tl_deserialize(io),
          lang_code: String.tl_deserialize(io),
          commands: Array(Root::TypeBotCommand).tl_deserialize(io),
        )
      end

      def self.return_type : TL::Deserializable
        Bool
      end
    end

    class ResetBotCommands < TLRequest
      getter constructor_id : UInt32 = 0x3D8DE0F9_u32
      class_getter constructor_id : UInt32 = 0x3D8DE0F9_u32

      getter scope : Root::TypeBotCommandScope
      getter lang_code : String

      def initialize(
        scope : Root::TypeBotCommandScope,
        lang_code : Bytes | String | IO
      )
        @scope = scope
        @lang_code = Utils.parse_string!(lang_code)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @scope.tl_serialize(io)
        @lang_code.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          scope: Root::TypeBotCommandScope.tl_deserialize(io),
          lang_code: String.tl_deserialize(io),
        )
      end

      def self.return_type : TL::Deserializable
        Bool
      end
    end

    class GetBotCommands < TLRequest
      getter constructor_id : UInt32 = 0xE34C0DD6_u32
      class_getter constructor_id : UInt32 = 0xE34C0DD6_u32

      getter scope : Root::TypeBotCommandScope
      getter lang_code : String

      def initialize(
        scope : Root::TypeBotCommandScope,
        lang_code : Bytes | String | IO
      )
        @scope = scope
        @lang_code = Utils.parse_string!(lang_code)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @scope.tl_serialize(io)
        @lang_code.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          scope: Root::TypeBotCommandScope.tl_deserialize(io),
          lang_code: String.tl_deserialize(io),
        )
      end

      def self.return_type : TL::Deserializable
        Array(Root::TypeBotCommand)
      end
    end
  end
end
