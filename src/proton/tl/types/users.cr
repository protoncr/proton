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
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x3B6D152E
          UserFull.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    class UserFull < TypeUserFull
      getter constructor_id : UInt32 = 0x3B6D152E_u32
      class_getter constructor_id : UInt32 = 0x3B6D152E_u32

      getter full_user : Root::TypeUserFull
      getter chats : Array(Root::TypeChat)
      getter users : Array(Root::TypeUser)

      def initialize(
        full_user : Root::TypeUserFull,
        chats : Array(Root::TypeChat),
        users : Array(Root::TypeUser)
      )
        @full_user = full_user
        @chats = chats
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @full_user.tl_serialize(io)
        @chats.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          full_user: Root::TypeUserFull.tl_deserialize(io),
          chats: Array(Root::TypeChat).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
        )
      end
    end

    class GetUsers < TLRequest
      getter constructor_id : UInt32 = 0x0D91A548_u32
      class_getter constructor_id : UInt32 = 0x0D91A548_u32

      getter id : Array(Root::TypeInputUser)

      def initialize(
        id : Array(Root::TypeInputUser)
      )
        @id = id
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @id.tl_serialize(io)
      end

      def self.return_type
        Array(Root::TypeUser)
      end
    end

    class GetFullUser < TLRequest
      getter constructor_id : UInt32 = 0xB60F5918_u32
      class_getter constructor_id : UInt32 = 0xB60F5918_u32

      getter id : Root::TypeInputUser

      def initialize(
        id : Root::TypeInputUser
      )
        @id = id
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @id.tl_serialize(io)
      end

      def self.return_type
        Users::TypeUserFull
      end
    end

    class SetSecureValueErrors < TLRequest
      getter constructor_id : UInt32 = 0x90C894B5_u32
      class_getter constructor_id : UInt32 = 0x90C894B5_u32

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
        constructor_id.tl_serialize(io) unless bare
        @id.tl_serialize(io)
        @errors.tl_serialize(io)
      end

      def self.return_type
        Bool
      end
    end
  end
end
