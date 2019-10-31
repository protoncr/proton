# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A new incoming event; for bots only.
  # event [::String] A JSON-serialized event.
  class Update::NewCustomEvent < Types::Update
    property event : ::String

    def initialize(@event : ::String)
    end
  end
end

