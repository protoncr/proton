# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains a list of hashtags.
  class Hashtags < Types::Base
    include JSON::Serializable

    # A list of hashtags
    property hashtags : ::Array(::String)

    def initialize(@hashtags : ::Array(::String))
    end
  end
end
