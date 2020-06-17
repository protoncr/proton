module Proton
  class MessageHandler < EventHandler
    property edited : Bool

    property pattern : Regex?

    property outgoing : Bool

    property incoming : Bool

    property no_caption : Bool

    def initialize(pattern : (Regex | String)? = nil, @outgoing = true, @incoming = true, @edited = false, @no_caption = false, &block : Context ->)
      @proc = block
      if pat = pattern
        pat = Regex.escape(pat) unless pat.is_a?(Regex)
        @pattern = /#{pat}/
      end
    end

    def call(update : TL::Update)
      update_events = Event.from_tl_update(update)
      if update_events.includes?(Event::NewMessage)
        was_edited = false
        message = update.as(TL::UpdateNewMessage).message!
      elsif update_events.includes?(Event::MessageEdited) && @edited
        was_edited = true
        edited_message = update.as(TL::UpdateMessageEdited)
        message = TL.get_message_locally(edited_message.chat_id!, edited_message.message_id!)
      else
        return
      end

      return if message.is_outgoing && !@outgoing
      return if !message.is_outgoing && !@incoming

      if pattern = @pattern
        if text = message.text(!@no_caption)
          match = text.match(pattern)
        end
        return unless match
      end

      context = Context.new(message, message.text(!@no_caption), message.raw_text(!@no_caption), match, message.entities, was_edited)
      @proc.call(context)
    end

    # :nodoc:
    def self.annotate(client)
      {% for command_class in Proton::Client.subclasses %}
        {% for method in command_class.methods %}

          # Handle `On` annotation
          {% for ann in method.annotations(OnMessage) %}
            %pattern    = {{ ann[:pattern] || ann[0] }}
            %outgoing   = {{ ann[:outgoing] }}.nil? ? true : !!{{ ann[:outgoing] }}
            %incoming   = {{ ann[:incoming] }}.nil? ? true : !!{{ ann[:incoming] }}
            %edited     = {{ !!ann[:edited] }}
            %no_caption = {{ !!ann[:no_caption] }}

            %handler = MessageHandler.new(%pattern, %outgoing, %incoming, %edited, %no_caption) { |ctx| client.{{ method.name.id }}(ctx); nil }
            client.add_event_handler(%handler)
          {% end %}
        {% end %}
      {% end %}
    end

    record Context, message : TL::Message, text : String?, raw_text : String?, match : Regex::MatchData?, entities : Array(TL::TextEntity), edited : Bool
  end
end
