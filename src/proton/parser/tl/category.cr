module Proton::Parser
  # The category to which a definition belongs.
  enum Category
    # The default category, a definition represents a type.
    Types

    # A definition represents a callable function.
    Functions
  end
end
