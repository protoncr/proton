# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about the current localization target.
  class LocalizationTargetInfo < Types::Base
    include JSON::Serializable

    # List of available language packs for this application
    property language_packs : ::Array(Proton::Types::LanguagePackInfo)

    def initialize(@language_packs : ::Array(Proton::Types::LanguagePackInfo))
    end
  end
end
