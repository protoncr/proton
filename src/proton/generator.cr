require "log"
require "./parser"
require "./generator/*"

module Proton::Generator
  Log = ::Log.for(self)

  DEFAULT_HEADER = <<-EOF
  # Copyright 2021 - Chris Watson and contributors.
  #
  # Licensed under the MIT License. You should have received a copy of the license
  # with this project. By using this project you agree to abide by all terms
  # contained therein.
  EOF

  DEFAULT_MOD_COMMENT = <<-EOF
  # This module contains generated, raw MTProto types for Telegram's user API.
  # It is not advised to modify this code directly, other than to test
  # changes. All changes should be made in the code generator.
  EOF

  CORE_TYPES = {
    0xbc799737, # boolFalse#bc799737 = Bool;
    0x997275b5, # boolTrue#997275b5 = Bool;
    0x3fedd339, # true#3fedd339 = True;
    0xc4b9f9bb, # error#c4b9f9bb code:int text:string = Error;
    0x56730bcc, # null#56730bcc = Null;
  }

  def self.generate_crystal_code(
    file : IO,
    definitions : Array(Parser::Definition),
    layer : Int32
  )
    defs = definitions.reject { |d| d.id.in?(CORE_TYPES) }
    builder = SourceBuilder.new(file)
    metadata = Metadata.new(defs)

    builder.writeln(DEFAULT_HEADER % [layer])
    builder.writeln

    Writer.write_module(builder, "Proton::TL", DEFAULT_MOD_COMMENT) do
      builder.writeln "# The schema layer from which the definitions were generated."
      builder.writeln "LAYER = #{layer}"
      builder.writeln

      Writer.write_category(builder, Parser::Category::Types, defs, metadata)
      Writer.write_category(builder, Parser::Category::Functions, defs, metadata)
    end
  end
end
