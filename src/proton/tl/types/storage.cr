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
        constructor_id = Int32.tl_deserialize(io)
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
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    class FileUnknown < TypeFileType
      CONSTRUCTOR_ID = 0xAA963B05

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class FilePartial < TypeFileType
      CONSTRUCTOR_ID = 0x40BC6F52

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class FileJpeg < TypeFileType
      CONSTRUCTOR_ID = 0x007EFE0E

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class FileGif < TypeFileType
      CONSTRUCTOR_ID = 0xCAE1AADF

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class FilePng < TypeFileType
      CONSTRUCTOR_ID = 0x0A4F63C0

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class FilePdf < TypeFileType
      CONSTRUCTOR_ID = 0xAE1E508D

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class FileMp3 < TypeFileType
      CONSTRUCTOR_ID = 0x528A0677

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class FileMov < TypeFileType
      CONSTRUCTOR_ID = 0x4B09EBBC

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class FileMp4 < TypeFileType
      CONSTRUCTOR_ID = 0xB3CEA0E4

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end

    class FileWebp < TypeFileType
      CONSTRUCTOR_ID = 0x1081464C

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
      end

      def self.tl_deserialize(io : IO, bare = false)
        new()
      end
    end
  end
end
