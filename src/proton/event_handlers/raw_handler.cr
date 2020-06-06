module Proton
  class RawHandler < EventHandler
    def initialize(@event : Event, &block : TL::Update ->)
      @proc = block
    end

    def call(update : TL::Update)
      update_events = Event.from_tl_update(update)
      if update_events.includes?(@event)
        spawn @proc.call(update)
      end
    end

    # :nodoc:
    def self.annotate(client)
      {% for command_class in Proton::Client.subclasses %}
        {% for method in command_class.methods %}

          # Handle `On` annotation
          {% for ann in method.annotations(On) %}
            %events = {{ ann[:event] || ann[:events] || ann[0] }}

            %events  = if %events.is_a?(Array)
              %events.map do |ev|
                ev.is_a?(Event) ? ev : Event.parse(ev.to_s)
              end
            elsif %events.is_a?(Event)
              [%events]
            else
              [Event.parse(%events.to_s)]
            end

            %events.each do |ev|
              %handler = RawHandler.new(ev, &->(update : TL::Update) { client.{{ method.name.id }}(update) })
              client.add_event_handler(%handler)
            end
          {% end %}
        {% end %}
      {% end %}
    end
  end
end
