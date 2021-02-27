require "digest/crc32"

module Proton::Parser
  module Utils
    # Removes all single-line comments from the contents.
    def self.remove_tl_comments(contents : String) : String
      in_comment = false

      String.build do |str|
        contents.each_char_with_index do |c, i|
          if c == '/' && contents[i + 1]? == '/'
            in_comment = true
          elsif in_comment && c == '\n'
            in_comment = false
          end

          str.print(c) unless in_comment
        end
      end
    end

    # Infers the identifier for a definition by finding its
    # CRC32 hash.
    def self.infer_id(definition : String) : UInt32
      rep = definition
        .gsub(":bytes", ": string")
        .gsub("?bytes", "? string")
        .gsub("<", " ")
        .gsub(">", "")
        .gsub("{", "")
        .gsub("}", "")
        .gsub(/ \w+:flags\.\d+\?true/, "")

      Digest::CRC32.checksum(rep)
    end
  end
end
