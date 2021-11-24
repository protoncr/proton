require "json"
require "../proton/generator/generator"

GEN_TL = Bool.from_json(ENV.fetch("PROTON_GEN_TL", "true"))
TL_API_FILE = ENV.fetch("PROTON_TL_API_FILE", Path[__DIR__, "../proton/generator/data/api.tl"].expand.to_s)

GEN_MT = Bool.from_json(ENV.fetch("PROTON_GEN_MT", "true"))
MT_API_FILE = ENV.fetch("PROTON_MT_API_FILE", Path[__DIR__, "../proton/generator/data/mtproto.tl"].expand.to_s)

OUTPUT_DIR = ENV.fetch("PROTON_TL_OUTPUT_DIR", Path[__DIR__, "../proton/tl"].expand.to_s)

defs = [] of TLParser::Definition

if GEN_TL
  tl = File.read(TL_API_FILE)
  defs.concat TLParser.parse(tl)
end

if GEN_MT
  tl = File.read(MT_API_FILE)
  defs.concat TLParser.parse(tl)
end

layer = Proton::Generator.extract_layer(File.read(TL_API_FILE))
Proton::Generator.generate_tl_types(OUTPUT_DIR, defs, layer || 0)
