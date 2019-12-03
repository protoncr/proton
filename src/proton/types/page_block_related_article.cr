# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about a related article.
  class PageBlockRelatedArticle < Types::Base
    include JSON::Serializable

    # Related article URL
    property url : ::String

    # Point in time (Unix timestamp) when the article was published; 0 if unknown
    property publish_date : ::Int32

    # Article title; may be empty
    property title : ::String? = nil

    # Article description; may be empty
    property description : ::String? = nil

    # Article photo; may be null
    property photo : Proton::Types::Photo? = nil

    # Article author; may be empty
    property author : ::String? = nil

    def initialize(@url : ::String, @publish_date : ::Int32, @title : ::String? = nil, @description : ::String? = nil, @photo : Proton::Types::Photo? = nil, @author : ::String? = nil)
    end
  end
end
