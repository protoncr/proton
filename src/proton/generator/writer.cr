module Proton::Generator
  module Writer
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
        ns_name = ns.empty? ? "Root" : ns.map { |n| classify_name(n) }.join("::")
        abstracts = metadata.ns_abstracts[ns]?
        write_module(builder, ns_name) do
          if !is_function
            abstracts.try &.each do |abs|
              builder.writeln("abstract class #{classify_name(abs)} < TLObject")
              builder.writeln("end")
              builder.writeln
            end
          end

          defs.each_with_index do |d, i|
            name = classify_name(d.name)
            name = "#{name}Request" if is_function

            abstract_base = false
            parent_type = is_function ? "TLRequest" : "TLObject"

            # Check if the type is a subclass of an abstract type
            if abstracts && abstracts.includes?(classify_name(d.type.name))
              abstract_base = true
              parent_type = classify_name(d.type.name)
            end

            builder.writeln("class #{name} < #{parent_type}")
            builder.writeln("getter contructor_id = 0x%08x" % d.id)

            init_args = d.params
              .select { |a| a.type.is_a?(Parser::NormalParam) }
              .sort_by { |a| a.type.flag? ? 1 : 0 }
              .map do |a|
                type = a.type.as(Parser::NormalParam)
                {a.fixed_name, type}
              end

            # Write properties and intitializer
            unless init_args.empty?
              builder.writeln
              init_args.each do |name, type|
                builder.writeln("property #{name} : #{type.type_hint}")
              end

              builder.writeln
              builder.write("def initialize(")
              init_args.each_with_index do |(name, type), i|
                builder.write("@#{name} : #{type.type_hint}")
                builder.write(" = nil") if !!type.flag
                builder.write(", ") if i < init_args.size - 1
              end
              builder.write(")")
              builder.indent
              builder.writeln
              builder.writeln("end")
            end

            # Write serialization function
            write_tl_serialize(builder, d, metadata, abstract_base)

            # Write de-serialization function
            write_tl_deserialize(builder, d, metadata, abstract_base)

            builder.writeln("end")
            builder.writeln unless i >= defs.size - 1
          end
        end
        builder.writeln
      end

      builder.writeln
    end

    def self.write_tl_serialize(builder, definition, metadata, abstract_base)
      builder.writeln
      builder.writeln("def tl_serialize(io)")

      case definition.category
      when Parser::Category::Types
        # Bare types should not write their constructor id
        builder.writeln("@constructor_id.tl_serialize(io)") if abstract_base
      else
        builder.writeln("@constructor_id.tl_serialize(io)")
      end

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
                builder.write(" | @#{p.fixed_name} ? #{1 << flag.index} : 0")
              end
            end
          end

          builder.writeln(").tl_serialize(io)")
        when Parser::NormalParam
          ty = type.type
          if ty.name != true
            if flag = type.flag
              builder.writeln("if #{param.fixed_name} = @#{param.fixed_name}")
              builder.writeln("#{param.fixed_name}.tl_serialize(io)")
              builder.writeln("end")
            else
              builder.writeln("@#{param.fixed_name}.tl_serialize(io)")
            end
          end
        end
      end

      builder.writeln("end")
    end

    def self.write_tl_deserialize(builder, definition, metadata, abstract_base)
      builder.writeln
      builder.writeln("def tl_deserialize(io)")
      builder.writeln("@constructor_id.tl_deserialize(io)")
      builder.writeln("end")
    end

    def self.write_aliases(builder, definitions, metadata)
    end

    def self.classify_name(name)
      name.camelcase
    end
  end
end
