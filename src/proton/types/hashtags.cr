# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains a list of hashtags.
  # hashtags [::Array(::String)] A list of hashtags.
  class Hashtags < Types::Base
    property hashtags : ::Array(::String)

    def initialize(@hashtags : ::Array(::String))
    end
  end
end

