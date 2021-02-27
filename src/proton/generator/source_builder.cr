module Proton::Generator
  class SourceBuilder
    INDENT_PATTERN = /(^(abstract class|class |module |def |when |if |begin))|({|\(|do|do \|[\w\d\s,_]+\|)$/
    DEDENT_PATTERN = /((^|\s)end|})$/

    property current_indent : Int32

    def initialize(@io : IO, @indent_size = 2)
      @current_indent = 0
      @last_line_newline = false
    end

    def indent(n = 1)
      @current_indent += n
    end

    def dedent(n = 1)
      @current_indent -= n
    end

    # Writes a string into the source code, applying indentation if required
    def write(string = "")
      @io.print(get_indent + string)
      @last_line_newline = string.ends_with?("\n") ? true : false
    end

    def <<(string)
      write(string)
    end

    def writeln(string = "")
      should_indent = string.strip.match(INDENT_PATTERN) && !string.strip.match(DEDENT_PATTERN)
      should_dedent = string.strip.match(DEDENT_PATTERN) && !string.strip.match(INDENT_PATTERN)

      if should_dedent
        dedent
      end

      write(string + "\n")

      if should_indent
        indent
      end

      @last_line_newline = true
    end

    private def get_indent
      @last_line_newline ? " " * (@current_indent * @indent_size).abs : ""
    end
  end
end
