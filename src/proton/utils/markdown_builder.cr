module Proton
  module Utils
    class MarkdownBuilder
      @nested : Bool

      getter items : Array(String | Component | Section)

      def initialize(@items = [] of String | Component | Section)
        @nested = false
      end

      def self.new(*args)
        new(*args.to_a)
      end

      def self.build(**options, &block)
        builder = new(**options)
        with builder yield builder
        builder
      end

      def nested(&block : self ->)
        @nested = true
        with self yield self
        @nested = false
      end

      def add_item(item)
        @items << item unless @nested
        item
      end

      def text(txt)
        add_item txt.to_s
      end

      def bold(txt)
        add_item Bold.new(txt)
      end

      def italic(txt)
        add_item Italic.new(txt)
      end

      def code(txt)
        add_item Code.new(txt)
      end

      def pre(txt, language = nil)
        add_item Pre.new(txt, language)
      end

      def link(txt, url)
        add_item Link.new(txt, url)
      end

      def mention(txt, user)
        add_item Mention.new(txt, user)
      end

      def key_value_item(key, value)
        @items.delete key
        @items.delete value
        add_item KeyValueItem.new(key, value)
      end

      def section(items, indent = 4)
        add_item Section.new(items, indent)
      end

      def section(*items, indent = 4)
        section(items.to_a, indent)
      end

      def section(indent = 4, &block)
        builder = MarkdownBuilder.new
        nested do
          with builder yield builder
        end
        section(builder.items, indent)
      end

      def sub_section(items, indent = 8)
        add_item SubSection.new(items, indent)
      end

      def sub_section(*items, indent = 8)
        sub_section(items.to_a, indent)
      end

      def sub_section(indent = 8, &block)
        builder = MarkdownBuilder.new
        nested do
          with builder yield builder
        end
        sub_section(builder.items, indent)
      end

      def sub_sub_section(items, indent = 12)
        add_item SubSubSection.new(items, indent)
      end

      def sub_sub_section(*items, indent = 12)
        sub_sub_section(items.to_a, indent)
      end

      def sub_sub_section(indent = 12, &block)
        builder = MarkdownBuilder.new
        nested do
          with builder yield builder
        end
        sub_sub_section(builder.items, indent)
      end

      def to_s(io)
        @items.each do |item|
          io << item.to_s
        end
      end

      abstract class Component
        getter text : String

        def initialize(@text)
        end

        def validate_text(text)
          text = text.to_s
          text.empty? ? " " : text
        end

        def to_s(io)
          io << @text
        end
      end

      class Bold < Component
        def initialize(text)
          super("*#{validate_text(text)}*")
        end
      end

      class Italic < Component
        def initialize(text)
          super("_#{validate_text(text)}_")
        end
      end

      class Code < Component
        def initialize(text)
          super("`#{validate_text(text)}`")
        end
      end

      class Pre < Component
        def initialize(text, language = nil)
          super("```#{language}\n#{validate_text(text)}\n```")
        end
      end

      class Link < Component
        def initialize(text, url)
          super("[#{validate_text(text)}](#{url})")
        end
      end

      class Mention < Link
        def initialize(text, user)
          user_id = user.is_a?(TL::User) ? user.id : user
          super(validate_text(text), "tg://user?id=#{user_id}")
        end
      end

      class KeyValueItem < Component
        def initialize(key, value)
          super("#{key.to_s}: #{value.to_s}")
        end
      end

      class Text; end

      class Section
        property indent : Int32

        getter header : String

        getter items  : Array(String)

        def initialize(args, @indent = 4)
          raise "Empty section" if args.empty?
          @header = args[0].to_s
          @items = args.size > 1 ? args[1..].compact.map(&.to_s) : [] of String
        end

        def item(other)
          items << other.to_s
        end

        def to_s(io)
          io.puts @header
          items.each do |item|
            io.puts (" " * @indent) + item
          end
        end
      end

      class SubSection < Section
        def initialize(args, indent = 8)
          super(args, indent)
        end
      end

      class SubSubSection < SubSection
        def initialize(args, indent = 12)
          super(args, indent)
        end
      end
    end
  end
end
