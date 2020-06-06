module Proton
  class CommandHandler < EventHandler
    property command    : Regex
    property outgoing   : Bool
    property incoming   : Bool
    property edited     : Bool
    property no_caption : Bool
    property pattern    : Regex?

    def initialize(command : String | Regex,
                   @outgoing = true,
                   @incoming = false,
                   @edited = false,
                   @no_caption = false,
                   @pattern = nil,
                   &block : CommandContext ->)
      command = Regex.escape(command) unless command.is_a?(Regex)
      @command = /^#{command}(?:\s|$)/
      @proc = block
    end

    def call(update : TL::Update)
      update_events = Event.from_tl_update(update)
      if update_events.includes?(Event::NewMessage)
        message = update.as(TL::UpdateNewMessage).message
        if (@outgoing && message.is_outgoing) ||
            (@incoming && !message.is_outgoing)

          content = message.content
          formatted_text = case content
          when TL::MessageText
            content.text
          when TL::MessageAnimation, TL::MessageAudio, TL::MessageDocument, TL::MessagePhoto, TL::MessageVideo, TL::MessageVoiceNote
            if content.responds_to?(:caption) && !@no_caption
              content.caption
            end
          else
          end

          return unless formatted_text
          return unless formatted_text.text.match(command)

          raw_text = formatted_text.text
          text = raw_text.sub(command, "")
          entities = formatted_text.entities

          if pattern = @pattern
            match = text.match(pattern)
            return unless match
          end

          context = CommandContext.new(message, text, raw_text, match, entities)
          spawn @proc.call(context)
        end
      end
    end

    # :nodoc:
    def self.annotate(client)
      {% for command_class in Proton::Client.subclasses %}
        {% for method in command_class.methods %}

          # Handle `Command` annotation
          {% for ann in method.annotations(Command) %}
            %commands   = {{ ann[:commands] || ann[:commands] || ann[0] }}
            %commands   = %commands.is_a?(Array) ? %commands : [%commands]

            %outgoing   = {{ ann[:outgoing] }}.nil? ? true : !!{{ ann[:outgoing] }}
            %incoming   = {{ !!ann[:incoming] }}
            %edited     = {{ !!ann[:edited] }}
            %no_caption = {{ !!ann[:no_caption] }}
            %pattern    = {{ ann[:pattern] }}

            %commands.each do |cmd|
              %handler = CommandHandler.new(cmd, %outgoing, %incoming, %edited, %no_caption, %pattern) { |ctx| client.{{ method.name.id }}(ctx) }
              client.add_event_handler(%handler)
            end
          {% end %}
        {% end %}
      {% end %}
    end

    record CommandContext, message : TL::Message, text : String, raw_text : String, match : Regex::MatchData?, entities : Array(TL::TextEntity)
  end
end
