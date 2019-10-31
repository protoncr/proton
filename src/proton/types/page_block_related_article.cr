# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about a related article.
  # url [::String] Related article URL.
  # title [::String, nil] Article title; may be empty.
  # description [::String, nil] Article description; may be empty.
  # photo [Proton::Types::Photo, nil] Article photo; may be null.
  # author [::String, nil] Article author; may be empty.
  # publish_date [::Int32] Point in time (Unix timestamp) when the article was published; 0 if unknown.
  class PageBlockRelatedArticle < Types::Base
    property url : ::String
    property title : ::String?
    property description : ::String?
    property photo : Proton::Types::Photo?
    property author : ::String?
    property publish_date : ::Int32

    def initialize(@url : ::String, @publish_date : ::Int32, @title : ::String? = nil, @description : ::String? = nil, @photo : Proton::Types::Photo? = nil, @author : ::String? = nil)
    end
  end
end

