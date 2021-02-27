require "./parser/**"

module Proton::Parser
  def self.parse_tl(contents : String)
    Parser::Iter.new(contents)
  end

  def self.tl_to_a(contents : String)
    defs = [] of Definition
    def_iter = parse_tl(contents)
    loop do
      if d = (def_iter.next rescue nil)
        break if d.is_a?(Iterator::Stop)
        defs << d
      end
    end
    defs
  end
end
