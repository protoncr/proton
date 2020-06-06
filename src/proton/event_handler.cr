module Proton
  abstract class EventHandler
    abstract def call(update : TL::Update)

    module Annotator
      private def register_event_handler_annotations
        {% for subclass in Proton::EventHandler.subclasses %}
          {{ subclass.id }}.annotate(self)
        {% end %}
      end
    end
  end
end

require "./event_handlers/*"
