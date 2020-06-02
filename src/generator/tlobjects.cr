require "tl_parser"
require "./source_builder"

module Proton
  module Generator
    class TLObjects
      HEADER = <<-CRYSTAL
      # Copyright 2020 - Chris Watson <cawatson1993@gmail.com>
      #
      # You should have received with this program a copy of the MIT license. This code is
      # subject to the terms and conditions outlined in said license. For more information,
      # please see https://en.wikipedia.org/wiki/MIT_License.
      #
      # This file was auto generated. Please do not modify directly.
      CRYSTAL

      PATCHED_TYPES = {
        message: "Message",
        message_empty: "Message",
        message_service: "Message",
      }

      PRIMITIVE_SUPER_CLASSES = ["Bool", "True", "Null"]
      PRIMITIVE_TYPES = ["int", "int53", "int128", "int256", "long", "double", "bytes", "string", "true", "date", "vector", "Vector"]
      OPTIONAL_KEYS = ["may be null", "may be empty", "for bots only"]

      # [Types|Functions] => Namespace => []TLParser::Definition
      @definitions : Hash(String, Hash(String, Array(TLParser::Definition)))

      def initialize(sources : Array(String))
        @definitions = build_definitions(sources)
      end

      def generate_types(outdir : String, namespace : Array(String) = [] of String)
        definitions = @definitions["Types"]
        tlobjects = definitions[""]


        # Find all primitives (types with no subclass)
        primitives = tlobjects.select { |o| PRIMITIVE_SUPER_CLASSES.includes?(o.type.name) }
        tlobjects -= primitives

        # Get names of all classes
        class_names = tlobjects.map { |o| make_class_name(o.name) }

        # Find all super classes
        super_classes = tlobjects.reduce(Hash(String, Array(TLParser::Definition)).new) do |acc, o|
          unless class_names.includes?(o.type.name)
            acc[o.type.name] ||= [] of TLParser::Definition
            acc[o.type.name] << o
          end
          acc
        end.to_a

        # Figure out file name
        filename = File.join(outdir, "types.cr")

        # Create directory
        Dir.mkdir_p(outdir)

        # Write the file
        write_file(filename, namespace) do |builder|
          unless primitives.empty?
            primitives.each { |pr| write_primitive(builder, pr) }
            builder.writeln
          end

          super_classes.each_with_index do |(sc, tlos), i|
            write_superclass(builder, sc, tlos)
            builder.writeln
          end

          tlobjects.each_with_index do |tlo, i|
            write_tlobject(builder, tlo)
            builder.writeln if i < tlobjects.size - 1
          end
        end

        write_file(File.join(outdir, "tlobject.cr"), namespace) do |builder|
          builder.writeln "abstract class TLObject"
          builder.writeln "include JSON::Serializable"
          builder.writeln
          builder.writeln "use_json_discriminator \"@type\", {"
          tlobjects.each do |tlo|
            cls = make_class_name(tlo.name)
            builder.writeln("\"#{tlo.name}\" => #{cls},")
          end
          builder.writeln "}"
          builder.writeln
          builder.writeln "end"
        end
      end

      def generate_functions(outdir : String, namespace : Array(String) = [] of String)
        definitions = @definitions["Functions"]
        tlobjects = definitions[""]

        # Figure out file name
        filename = File.join(outdir, "functions.cr")

        # Create directory
        Dir.mkdir_p(outdir)

        # Write the file
        write_file(filename, namespace) do |builder|
          tlobjects.each_with_index do |tlo, i|
            method_name = tlo.name.underscore
            return_type = to_crystal_type(tlo.type)
            comments = description_to_comments(tlo.description)
            params = sort_params(tlo.params, comments)

            unless comments.empty?
              if desc = comments.delete("description")
                desc.each_line do |line|
                  builder.writeln("# #{line}")
                end
              end

              if comments.size > 1
                builder.writeln("#")
                builder.writeln("# **Params:**")
                padding = comments.keys.max_by(&.size).size
                comments.each do |(param, desc)|
                  desc.lines.each_with_index do |line, k|
                    if k == 0
                      builder.writeln("# `#{param.ljust(padding)}` - #{line}")
                    else
                      builder.writeln("# #{" " * (padding + 4)} #{line}")
                    end
                  end
                end
              end
            end

            builder.write("def #{method_name}")
            unless params.empty?
              builder.write("(")
              params.each_with_index do |param, j|
                if param.type.is_a?(TLParser::NormalParam)
                  name = param.name
                  tltype = param.type.as(TLParser::NormalParam).type
                  type = to_crystal_type(tltype)
                  builder.write("#{name} : ")
                  if PRIMITIVE_TYPES.includes?(tltype.name)
                    builder.write(type)
                  else
                    builder.write("(#{type} | NamedTuple)")
                  end
                  builder.write("? = nil") if param_optional?(param, comments)
                  builder.write(", ") if j < (params.size - 1)
                end
              end
              builder.write(")")
            end

            builder.writeln(" : #{return_type == "Ok" ? "Ok?" : return_type}")
            builder.indent

            params.each do |param|
              tltype = param.type.as(TLParser::NormalParam).type
              unless PRIMITIVE_TYPES.includes?(tltype.name)
                type = to_crystal_type(tltype)
                builder.writeln("#{param.name} = #{param.name}.is_a?(NamedTuple) ? #{type}.new(**#{param.name}) : #{param.name}")
              end
            end

            builder.writeln
            builder.writeln("res = send({")
            builder.writeln("\"@type\" => \"#{tlo.name}\",")
            params.each do |param|
              builder.writeln("\"#{param.name}\" => #{param.name},")
            end
            builder.dedent
            builder.writeln("}, true)")
            builder.writeln

            if return_type == "Ok"
              builder.writeln("res.nil? ? nil : #{return_type}.from_json(res.to_json)")
            else
              builder.writeln("#{return_type}.from_json(res.to_json)")
            end

            builder.writeln("end")
            builder.writeln if i < (tlobjects.size - 1)
          end
        end
      end

      private def write_file(filename, namespace, &block)
        output = File.open(filename, mode: "w+")
        output.rewind

        builder = SourceBuilder.new(output)

        path = Path.new(filename)
        builder.writeln HEADER

        namespace.each do |ns|
          builder.writeln "module #{ns}"
        end

        yield builder

        namespace.each do |ns|
          builder.writeln "end"
        end

        output.close
      end

      private def write_primitive(builder, type)
        clsname = make_class_name(type.name)
        supername = superlcass_name(type)

        builder.writeln "class #{clsname} < #{supername}"
        builder.writeln "end"
      end

      private def write_superclass(builder, type, tlobjects)
        clsname = make_class_name(type)

        builder.writeln "class #{clsname} < TLObject"
        builder.writeln "include JSON::Serializable"
        builder.writeln
        builder.writeln "use_json_discriminator \"@type\", {"
        tlobjects.each do |tlo|
          cls = make_class_name(tlo.name)
          builder.writeln("\"#{tlo.name}\" => #{cls},")
        end
        builder.dedent
        builder.writeln "}"
        builder.writeln "end"
      end

      private def write_tlobject(builder, type)
        clsname = make_class_name(type.name)
        supername = superlcass_name(type)
        comments = description_to_comments(type.description)

        comments["description"]?.try &.lines.each do |line|
          builder.writeln "# #{line}"
        end

        builder.writeln "class #{clsname} < #{supername}"
        builder.writeln
        builder.writeln "@[JSON::Field(key: \"@type\")]"
        builder.writeln "getter _type = \"#{type.name}\""

        unless type.params.empty?
          builder.writeln
          write_param_props(builder, type.params, comments)
          write_initializer(builder, type.params, comments)
        end

        builder.writeln("end")
      end

      private def description_to_comments(description)
        last_key = nil
        description.split('\n').reduce({} of String => String) do |acc, str|
          if str.starts_with?("@")
            key, value = str[1..].split(/\s+/, 2)
            acc[key] = value
            last_key = key
          elsif str.starts_with?("-") && (lk = last_key)
            acc[lk] += "\n" + str[1..]
          else
            puts "Hit this with: #{str}"
          end
          acc
        end
      end

      private def build_definitions(sources)
        sources.reduce({} of String => Hash(String, Array(TLParser::Definition))) do |acc, d|
          acc["Types"] ||= {} of String => Array(TLParser::Definition)
          acc["Functions"] ||= {} of String => Array(TLParser::Definition)

          defs = TLParser.parse(d)
          defs.each do |x|
            cat = x[0].to_s
            de = x[1]
            ns = de.namespace.join(".")
            acc[cat][ns] ||= [] of TLParser::Definition
            acc[cat][ns] << de
          end

          acc
        end
      end

      private def make_class_name(name)
        name.split('_').join(&.camelcase)
      end

      private def superlcass_name(obj)
        subclass = make_class_name(obj.type.name)
        if ["Bool", "True", "Error", "Null"].includes?(subclass) ||
            subclass.downcase == obj.name.downcase
          subclass = "TLObject"
        end
        subclass
      end

      private def to_crystal_type(param)
        case param.name
        when "int"
          "Int32"
        when "long", "int53"
          "Int64"
        when "double"
          "Float64"
        when "string", "bytes", "int64", "int128", "int256"
          "String"
        when "true"
          "Bool"
        when "date"
          "Time"
        when "Vector", "vector"
          "Array(#{to_crystal_type(param.generic_arg.not_nil!)})"
        else
          make_class_name(param.name)
        end
      end

      private def write_param_props(builder, params, comments)
        params = sort_params(params, comments)
        params.each do |p|
          type = p.type
          comment = comments[p.name]?
          if type.is_a?(TLParser::NormalParam)
            cr_type = to_crystal_type(p.type.as(TLParser::NormalParam).type)

            if comment
              comment.lines.each do |line|
                builder.writeln("# #{line}")
              end
            end

            builder.write("property #{p.name} : #{cr_type}")
            builder.write("?") if param_optional?(p, comments)
            builder.writeln
            builder.writeln
          end
        end
      end

      private def write_initializer(builder, params, comments)
        params = sort_params(params, comments)
        unless params.empty?
          builder.writeln "def initialize("
          params.each_with_index do |p, i|
            write_param(builder, p, comments)
            builder.writeln(i < (params.size - 1) ? "," : "")
          end
          builder.dedent
          builder.writeln ")"
          builder.indent
          builder.writeln("end")
        end
      end

      private def write_param(builder, param, comments)
        type = param.type.as(TLParser::NormalParam)
        cr_type = to_crystal_type(type.type)
        builder.write("@#{param.name} : #{cr_type}")
        if param_optional?(param, comments)
          builder.write("? = nil")
        end
      end

      private def sort_params(params, comments)
        params
          .select(&.type.is_a?(TLParser::NormalParam))
          .sort do |a, b|
            a_index = param_optional?(a, comments) ? 1 : 0
            b_index = param_optional?(b, comments) ? 1 : 0

            a_index <=> b_index
          end
      end

      private def param_optional?(param, comments)
        comment = comments[param.name]?
        optional = comment ? OPTIONAL_KEYS.any? { |key| comment.includes?("; #{key}") } : false
      end
    end
  end
end

# api_data = File.read(File.expand_path("./data/api.tl", __DIR__))
# mtproto_data = File.read(File.expand_path("./data/mtproto.tl", __DIR__))
td_api = File.read(File.expand_path("./data/td_api.tl", __DIR__))

# generator = Proton::Generator::TLObjects.new([api_data, mtproto_data])
generator = Proton::Generator::TLObjects.new([td_api])
generator.generate_types(File.expand_path("../proton/tl", __DIR__), ["Proton", "TL"])
generator.generate_functions(File.expand_path("../proton/tl", __DIR__), ["Proton", "TL"])
