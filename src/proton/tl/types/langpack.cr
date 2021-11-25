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
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xF2F2330A
          GetLangPack.tl_deserialize(io, bare)
        when 0xCD984AA5
          GetDifference.tl_deserialize(io, bare)
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
        when 0x6A596502
          GetLanguage.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    class GetLangPack < TLRequest
      CONSTRUCTOR_ID = 0xF2F2330A

      getter lang_pack : Bytes
      getter lang_code : Bytes

      def initialize(
        lang_pack : Bytes | String | IO,
        lang_code : Bytes | String | IO
      )
        @lang_pack = lang_pack
        @lang_code = lang_code
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @lang_pack.tl_serialize(io, true)
        @lang_code.tl_serialize(io, true)
      end

      def return_type
        Root::TypeLangPackDifference
      end
    end

    class GetStrings < TLRequest
      CONSTRUCTOR_ID = 0xEFEA3803

      getter lang_pack : Bytes
      getter lang_code : Bytes
      getter keys : Array(Bytes)

      def initialize(
        lang_pack : Bytes | String | IO,
        lang_code : Bytes | String | IO,
        keys : Array(Bytes)
      )
        @lang_pack = lang_pack
        @lang_code = lang_code
        @keys = keys
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @lang_pack.tl_serialize(io, true)
        @lang_code.tl_serialize(io, true)
        @keys.tl_serialize(io, false)
      end

      def return_type
        Array(Root::TypeLangPackString)
      end
    end

    class GetDifference < TLRequest
      CONSTRUCTOR_ID = 0xCD984AA5

      getter lang_pack : Bytes
      getter lang_code : Bytes
      getter from_version : Int32

      def initialize(
        lang_pack : Bytes | String | IO,
        lang_code : Bytes | String | IO,
        from_version : Int32
      )
        @lang_pack = lang_pack
        @lang_code = lang_code
        @from_version = from_version
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @lang_pack.tl_serialize(io, true)
        @lang_code.tl_serialize(io, true)
        @from_version.tl_serialize(io, true)
      end

      def return_type
        Root::TypeLangPackDifference
      end
    end

    class GetLanguages < TLRequest
      CONSTRUCTOR_ID = 0x42C6978F

      getter lang_pack : Bytes

      def initialize(
        lang_pack : Bytes | String | IO
      )
        @lang_pack = lang_pack
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @lang_pack.tl_serialize(io, true)
      end

      def return_type
        Array(Root::TypeLangPackLanguage)
      end
    end

    class GetLanguage < TLRequest
      CONSTRUCTOR_ID = 0x6A596502

      getter lang_pack : Bytes
      getter lang_code : Bytes

      def initialize(
        lang_pack : Bytes | String | IO,
        lang_code : Bytes | String | IO
      )
        @lang_pack = lang_pack
        @lang_code = lang_code
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @lang_pack.tl_serialize(io, true)
        @lang_code.tl_serialize(io, true)
      end

      def return_type
        Root::TypeLangPackLanguage
      end
    end
  end
end
