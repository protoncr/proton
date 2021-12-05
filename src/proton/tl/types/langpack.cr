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
  module Langpack
    abstract class TypeLangPackDifference < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        else
          raise "Unknown constructor id: 0x%08X" % constructor_id
        end
      end
    end

    abstract class TypeLangPackLanguage < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        else
          raise "Unknown constructor id: 0x%08X" % constructor_id
        end
      end
    end

    class GetLangPack < TLRequest
      getter constructor_id : UInt32 = 0xF2F2330A_u32
      class_getter constructor_id : UInt32 = 0xF2F2330A_u32

      getter lang_pack : Bytes
      getter lang_code : Bytes

      def initialize(
        lang_pack : Bytes | String | IO,
        lang_code : Bytes | String | IO
      )
        @lang_pack = Utils.parse_bytes!(lang_pack)
        @lang_code = Utils.parse_bytes!(lang_code)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @lang_pack.tl_serialize(io)
        @lang_code.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeLangPackDifference
      end
    end

    class GetStrings < TLRequest
      getter constructor_id : UInt32 = 0xEFEA3803_u32
      class_getter constructor_id : UInt32 = 0xEFEA3803_u32

      getter lang_pack : Bytes
      getter lang_code : Bytes
      getter keys : Array(Bytes)

      def initialize(
        lang_pack : Bytes | String | IO,
        lang_code : Bytes | String | IO,
        keys : Array(Bytes)
      )
        @lang_pack = Utils.parse_bytes!(lang_pack)
        @lang_code = Utils.parse_bytes!(lang_code)
        @keys = keys
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @lang_pack.tl_serialize(io)
        @lang_code.tl_serialize(io)
        @keys.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Array(Root::TypeLangPackString)
      end
    end

    class GetDifference < TLRequest
      getter constructor_id : UInt32 = 0xCD984AA5_u32
      class_getter constructor_id : UInt32 = 0xCD984AA5_u32

      getter lang_pack : Bytes
      getter lang_code : Bytes
      getter from_version : Int32

      def initialize(
        lang_pack : Bytes | String | IO,
        lang_code : Bytes | String | IO,
        from_version : Int32
      )
        @lang_pack = Utils.parse_bytes!(lang_pack)
        @lang_code = Utils.parse_bytes!(lang_code)
        @from_version = TL::Utils.parse_int!(from_version, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @lang_pack.tl_serialize(io)
        @lang_code.tl_serialize(io)
        @from_version.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeLangPackDifference
      end
    end

    class GetLanguages < TLRequest
      getter constructor_id : UInt32 = 0x42C6978F_u32
      class_getter constructor_id : UInt32 = 0x42C6978F_u32

      getter lang_pack : Bytes

      def initialize(
        lang_pack : Bytes | String | IO
      )
        @lang_pack = Utils.parse_bytes!(lang_pack)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @lang_pack.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Array(Root::TypeLangPackLanguage)
      end
    end

    class GetLanguage < TLRequest
      getter constructor_id : UInt32 = 0x6A596502_u32
      class_getter constructor_id : UInt32 = 0x6A596502_u32

      getter lang_pack : Bytes
      getter lang_code : Bytes

      def initialize(
        lang_pack : Bytes | String | IO,
        lang_code : Bytes | String | IO
      )
        @lang_pack = Utils.parse_bytes!(lang_pack)
        @lang_code = Utils.parse_bytes!(lang_code)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @lang_pack.tl_serialize(io)
        @lang_code.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeLangPackLanguage
      end
    end
  end
end
