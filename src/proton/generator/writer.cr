module Proton::Generator
  module Writer
    include Crystalize

    def self.write_module(builder, name, comment = nil, &block)
      if comment
        builder.writeln(comment)
      end
      builder.writeln("module #{name}")
      yield
      builder.writeln("end")
    end

    def self.write_category(builder, category, definitions, metadata)
      is_function = category == Parser::Category::Functions
      metadata.cat_ns_defs[category].each do |ns, defs|
        ns_name = ns.empty? ? "Root" : ns.map { |n| Crystalize.classify(n) }.join("::")
        write_module(builder, ns_name) do
          write_abstracts(builder, category, defs, metadata) unless is_function

          defs.each_with_index do |d|
            write_class(builder, category, d, metadata)
          end
        end
        builder.writeln
      end

      builder.writeln
    end

    def self.write_abstracts(builder, category, defs, metadata)
      parent = category == Parser::Category::Types ? "TLObject" : "TLRequest"
      bases = Set(String).new
      defs.each do |d|
        bases.add(Types.type_name(d.type, interface: true))
        bases.add(Definitions.type_name(d, interface: true))
      end
      bases.to_a.sort.each do |b|
        builder.writeln("abstract class #{b} < #{parent}; end")
      end
    end

    def self.write_class(builder, category, definition, metadata)
      is_function = category == Parser::Category::Functions
      class_name = Definitions.type_name(definition)
      extending_type = is_function ? "TLRequest" : Types.type_name(definition.type, interface: true)

      params = definition.params.sort_by do |d|
        type = d.type
        type.is_a?(Parser::NormalParam) && type.flag ? 1 : 0
      end

      builder.writeln
      builder.writeln("class #{class_name} < #{extending_type}")
      builder.writeln("CONSTRUCTOR_ID = 0x%08X" % definition.id)
      if params.size > 0
        builder.writeln
        params.each do |p|
          _type = p.type
          case _type
          when Proton::Parser::NormalParam
            builder.writeln("property #{Parameters.attr_name(p)} : #{Parameters.qual_name(p, interface: true)}")
          end
        end

        builder.writeln
        builder.write("def initialize(")
        params.each_with_index do |p, i|
          _type = p.type
          case _type
          when Proton::Parser::NormalParam
            builder.write("@#{Parameters.attr_name(p)} : #{Parameters.qual_name(p, interface: true)}")
            builder.write(" = nil") if _type.flag
            builder.write(", ") if i < params.size - 1
          end
        end
        builder.writeln(")")
        builder.indent
        builder.writeln("end")
      end

      write_tl_serialize(builder, definition, metadata)
      write_tl_deserialize(builder, definition, metadata) unless is_function
      write_return_type(builder, definition, metadata) if is_function

      builder.writeln("end")
    end

    def self.write_tl_serialize(builder, definition, metadata)
      builder.writeln
      builder.writeln("def tl_serialize(io, boxed = false)")
      builder.writeln("CONSTRUCTOR_ID.tl_serialize(io) if boxed")

      definition.params.each do |param|
        type = param.type
        case type
        when Parser::FlagsParam
          builder.write("(0_u32")

          # Compute flags as a single expression
          definition.params.each do |p|
            ty = p.type
            case ty
            when Parser::NormalParam
              if (flag = ty.flag) && (flag.name == param.name)
                # We make sure this `p` uses the flag we're currently
                # parsing by comparing (`p`'s) `flag.name == param.name`.

                # OR (if the flag is present) the correct bit index.
                # Only the special-cased "true" flags are booleans.
                builder.write(" | @#{Parameters.attr_name(p)} ? #{1 << flag.index} : 0")
              end
            end
          end

          builder.writeln(").tl_serialize(io)")
        when Parser::NormalParam
          ty = type.type
          if ty.name != true
            param_name = Parameters.attr_name(param)
            if flag = type.flag
              builder.writeln("if #{param_name} = @#{param_name}")
              builder.writeln("#{param_name}.tl_serialize(io)")
              builder.writeln("end")
            else
              builder.writeln("@#{param_name}.tl_serialize(io)")
            end
          end
        end
      end

      builder.writeln("end")
    end

    def self.write_tl_deserialize(builder, definition, metadata)
      builder.writeln
      builder.writeln("def self.tl_deserialize(io, boxed = false)")
      builder.writeln("if boxed")
      builder.writeln("constructor_id = UInt64.tl_deserialize(io)" % definition.id)
      builder.writeln("raise \"Invalid constructor_id\" unless constructor_id == CONSTRUCTOR_ID")
      builder.writeln("end")

      definition.params.each_with_index do |param, i|
        type = param.type
        case type
        when Parser::FlagsParam
          builder.writeln("#{Parameters.attr_name(param)} = UInt32.tl_deserialize(io)")
        when Parser::NormalParam
          ty = type.type
          if ty.name == "true"
            if flag = type.flag
              builder.writeln("#{Parameters.attr_name(param)} = (#{flag.name} & #{1 << flag.index}) != 0")
            else
              raise "the `true` type must always be used in a flag"
            end
          else
            builder.write("#{Parameters.attr_name(param)} = ")
            if flag = type.flag
              builder.write("(#{flag.name} & #{1 << flag.index}) != 0 ? ")
              builder.indent
            end

            if ty.generic_ref
              # Deserialization of a generic reference requires
              # parsing *any* constructor, because the length is
              # not included anywhere. Unfortunately, we do not
              # have the machinery to do that; we would need a
              # single `match` with all the possible constructors!.
              #
              # But, if the generic is the last parameter, we can
              # just read the entire remaining thing.
              #
              # This will only potentially happen while
              # deserializing functions anyway.
              if i == definition.params.size - 1
                builder.write("io.gets_to_end.to_slice")
              else
                builder.write("raise \"cannot read generic params in the middle\"")
              end
            else
              builder.write("#{Types.qual_name(ty)}.tl_deserialize(io)")
            end

            if flag = type.flag
              builder.writeln(" : nil")
              builder.dedent
            else
              builder.writeln
            end
          end
        end
      end

      builder.write("new(")
      definition.params.each_with_index do |param, i|
        case param.type
        when Parser::NormalParam
          builder.write("#{Parameters.attr_name(param)}: #{Parameters.attr_name(param)}")
          builder.write(", ") if i < definition.params.size - 1
        end
      end
      builder.writeln(")")
      builder.writeln("end")
    end

    def self.write_return_type(builder, definition, metadata)
      builder.writeln
      builder.writeln("def self.return_type : TLObject")
      builder.writeln(Types.qual_name(definition.type))
      builder.writeln("end")
    end
  end
end
