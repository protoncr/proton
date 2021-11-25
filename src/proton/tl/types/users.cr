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
  module Users
    abstract class TypeUserFull < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xCA30A5B1
          GetFullUser.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    class GetUsers < TLRequest
      CONSTRUCTOR_ID = 0x0D91A548

      getter id : Array(Root::TypeInputUser)

      def initialize(
        id : Array(Root::TypeInputUser)
      )
        @id = id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, false)
      end

      def return_type
        Array(Root::TypeUser)
      end
    end

    class GetFullUser < TLRequest
      CONSTRUCTOR_ID = 0xCA30A5B1

      getter id : Root::TypeInputUser

      def initialize(
        id : Root::TypeInputUser
      )
        @id = id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, false)
      end

      def return_type
        Root::TypeUserFull
      end
    end

    class SetSecureValueErrors < TLRequest
      CONSTRUCTOR_ID = 0x90C894B5

      getter id : Root::TypeInputUser
      getter errors : Array(Root::TypeSecureValueError)

      def initialize(
        id : Root::TypeInputUser,
        errors : Array(Root::TypeSecureValueError)
      )
        @id = id
        @errors = errors
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @id.tl_serialize(io, false)
        @errors.tl_serialize(io, false)
      end

      def return_type
        Bool
      end
    end
  end
end
