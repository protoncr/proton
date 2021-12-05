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
  module Storage
    abstract class TypeFileType < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xAA963B05
          FileUnknown.tl_deserialize(io, bare)
        when 0x40BC6F52
          FilePartial.tl_deserialize(io, bare)
        when 0x007EFE0E
          FileJpeg.tl_deserialize(io, bare)
        when 0xCAE1AADF
          FileGif.tl_deserialize(io, bare)
        when 0x0A4F63C0
          FilePng.tl_deserialize(io, bare)
        when 0xAE1E508D
          FilePdf.tl_deserialize(io, bare)
        when 0x528A0677
          FileMp3.tl_deserialize(io, bare)
        when 0x4B09EBBC
          FileMov.tl_deserialize(io, bare)
        when 0xB3CEA0E4
          FileMp4.tl_deserialize(io, bare)
        when 0x1081464C
          FileWebp.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: 0x%08X" % constructor_id
        end
      end
    end

    class FileUnknown < TypeFileType
      getter constructor_id : UInt32 = 0xAA963B05_u32
      class_getter constructor_id : UInt32 = 0xAA963B05_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new()
      end
    end

    class FilePartial < TypeFileType
      getter constructor_id : UInt32 = 0x40BC6F52_u32
      class_getter constructor_id : UInt32 = 0x40BC6F52_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new()
      end
    end

    class FileJpeg < TypeFileType
      getter constructor_id : UInt32 = 0x007EFE0E_u32
      class_getter constructor_id : UInt32 = 0x007EFE0E_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new()
      end
    end

    class FileGif < TypeFileType
      getter constructor_id : UInt32 = 0xCAE1AADF_u32
      class_getter constructor_id : UInt32 = 0xCAE1AADF_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new()
      end
    end

    class FilePng < TypeFileType
      getter constructor_id : UInt32 = 0x0A4F63C0_u32
      class_getter constructor_id : UInt32 = 0x0A4F63C0_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new()
      end
    end

    class FilePdf < TypeFileType
      getter constructor_id : UInt32 = 0xAE1E508D_u32
      class_getter constructor_id : UInt32 = 0xAE1E508D_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new()
      end
    end

    class FileMp3 < TypeFileType
      getter constructor_id : UInt32 = 0x528A0677_u32
      class_getter constructor_id : UInt32 = 0x528A0677_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new()
      end
    end

    class FileMov < TypeFileType
      getter constructor_id : UInt32 = 0x4B09EBBC_u32
      class_getter constructor_id : UInt32 = 0x4B09EBBC_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new()
      end
    end

    class FileMp4 < TypeFileType
      getter constructor_id : UInt32 = 0xB3CEA0E4_u32
      class_getter constructor_id : UInt32 = 0xB3CEA0E4_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new()
      end
    end

    class FileWebp < TypeFileType
      getter constructor_id : UInt32 = 0x1081464C_u32
      class_getter constructor_id : UInt32 = 0x1081464C_u32

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new()
      end
    end
  end
end
