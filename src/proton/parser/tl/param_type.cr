module Proton::Parser
  abstract struct ParamType
    def self.parse(str : String)
      str = str.strip
      raise ParseError::Empty.new if str.empty?

      # parse `#`
      if str == "#"
        return FlagsParam.new
      end

      # parse `flag_name.flag_index?type`
      ty, flag = if (pos = str.index('?'))
                   {str[(pos + 1)..], Flag.parse(str[...pos])}
                 else
                   {str, nil}
                 end

      # parse `type<generic_arg>`
      ty = Type.parse(ty)

      NormalParam.new(ty, flag)
    end

    # def flag?
    #   self.is_a?(NormalParam) &&
    #   !!self.flag
    # end

    # def vector?
    #   self.is_a?(NormalParam) &&
    #   self.type.name.match(/[Vv]ector/)
    # end
  end

  struct FlagsParam < ParamType
    def ==(other)
      other.is_a?(FlagsParam)
    end

    def to_s(io)
      io << "#"
    end
  end

  struct NormalParam < ParamType
    getter type : Type
    getter flag : Flag?

    def initialize(@type, @flag = nil)
    end

    # def type_hint
    #   result = type.inner_type

    #   if flag? && type.name != "date"
    #     result = "#{result}?"
    #   end

    #   result
    # end

    def ==(other)
      other.is_a?(NormalParam) &&
        @type == other.type &&
        @flag == other.flag
    end

    def to_s(io)
      if flag = @flag
        io << "#{flag}?"
      end
      io << @type
    end
  end
end
