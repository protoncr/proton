require "json"
require "./src/proton/parser"
require "./src/proton/generator"

GEN_TL = Bool.from_json(ENV.fetch("PROTON_GEN_TL", "true"))
GEN_MT = Bool.from_json(ENV.fetch("PROTON_GEN_MT", "true"))

File.open("src/proton/tl/generated.cr", mode: "w") do |file|
  defs = [] of Proton::Parser::Definition

  if GEN_TL
    defs.concat Proton::Parser.tl_to_a(File.read("src/proton/tl/data/api.tl"))
  end

  if GEN_MT
    defs.concat Proton::Parser.tl_to_a(File.read("src/proton/tl/data/mtproto.tl"))
  end

  Proton::Generator.generate_crystal_code(file, defs, 123)
end
