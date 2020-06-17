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
                   &block : Context ->)
      command = Regex.escape(command) unless command.is_a?(Regex)
      @command = /^#{command}(?:\s|$)/
      @proc = block
    end

    def call(update : TL::Update)
      update_events = Event.from_tl_update(update)
      if update_events.includes?(Event::NewMessage)
        was_edited = false
        message = update.as(TL::UpdateNewMessage).message!
      elsif update_events.includes?(Event::MessageEdited) && @edited
        was_edited = true
        edited_message = update.as(TL::UpdateMessageEdited)
        message = TL.get_message(edited_message.chat_id!, edited_message.message_id!)
      else
        return
      end

      return if message.is_outgoing && !@outgoing
      return if !message.is_outgoing && !@incoming

      text = message.text
      raw_text = message.raw_text

      return unless text && raw_text
      return unless raw_text.match(command)

      text = text.sub(/#{@command}\s*/, "")

      if pattern = @pattern
        match = text.match(pattern)
        return unless match
      end

      context = Context.new(message, text, raw_text, match, message.entities, was_edited)
      @proc.call(context)
    end

    # :nodoc:
    def self.annotate(client)
      {% begin %}
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
                %handler = CommandHandler.new(cmd, %outgoing, %incoming, %edited, %no_caption, %pattern) { |ctx| client.{{ method.name.id }}(ctx); nil }
                client.add_event_handler(%handler)
              end
            {% end %}
          {% end %}
        {% end %}
      {% end %}
    end

    record Context, message : TL::Message, text : String, raw_text : String, match : Regex::MatchData?, entities : Array(TL::TextEntity), edited : Bool
  end
end
