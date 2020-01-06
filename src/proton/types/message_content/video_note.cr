# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A video note message.
  class MessageContent::VideoNote < Types::MessageContent
    include JSON::Serializable

    # Message content
    property video_note : Proton::Types::VideoNote

    # True, if at least one of the recipients has viewed the video note
    property is_viewed : ::Bool = false

    # True, if the video note thumbnail must be blurred and the video note must be shown only while tapped
    property is_secret : ::Bool = false

    def initialize(@video_note : Proton::Types::VideoNote, @is_viewed : ::Bool = false, @is_secret : ::Bool = false)
    end
  end
end
