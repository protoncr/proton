# module Proto
#   class MessageIterator
#     include Iterable(TL::Message)
#     include Enumearable(TL::Message)

#     Log = ::Log.for("proton.message_iterator")

#     @entity : TL::Chat?
#     @from_user : TL::User?
#     @query : String?
#     @offset_id : Int64?
#     @limit : Int::Primitive?
#     @filter : Filter?

#     @buffer : Array(TL::Message)
#     @total : Int32

#     def initialize(entity = nil,
#                    from_user = nil,
#                    query = nil,
#                    from_message = nil,
#                    offset = nil,
#                    limit = nil,
#                    filter : Filter? = nil)
#       # `entity` being nil will perform a global search
#       @entity = Helpers.parse_chat(entity) if entity
#       @from_user = Helpers.parse_user(from_user) if from_user
#       @offset_id = from_message.is_a?(TL::Message) ? from_message.id : (from_message || 0).to_i64
#       @query = query
#       @filter = filter

#       @buffer = [] of TL::Message
#       @total = 0

#       @offset = offset || 0
#       if @offset > 0
#         raise Errors::Error.new("offset must be negative or zero")
#       end

#       @limit = limit
#       if @offset < 0 && @limit <= @offset
#         raise Errors::Error.new("limit must be greater than offset when offset is negative")
#       end
#     end

#     def next
#       # Stop once the limit is hit
#       if (limit = @limit) && (@total >= limit)
#         return
#       end

#       # Figure out how many messages to fetch
#       if limit = @limit
#         remaining = @total - limit
#         if remaining > 100
#           count = 100
#         else
#           count = remaining
#         end
#       else
#         count = 100
#       end

#       if entity = @entity
#         # Localized search
#         messages = TL.search_chat_messages(entity.id, )
#       else
#         # Global search
#         messages = TL.search_messages()
#       end
#     end

#     def each(&block : TL::Message ->)

#     end

#     enum Filter
#       Empty
#       Animation
#       Audio
#       Document
#       Photo
#       Video
#       VoiceNote
#       PhotoOrVideo
#       Url
#       ChatPhoto
#       Call
#       MissedCall
#       VideoNote
#       VideoOrVoiceNote
#       Mention
#       UnreadMention

#       def self.to_tl
#         case self
#         when Empty
#           TL::SearchMessagesFilterEmpty
#         when Animation
#           TL::SearchMessagesFilterAnimation
#         when Audio
#           TL::SearchMessagesFilterAudio
#         when Document
#           TL::SearchMessagesFilterDocument
#         when Photo
#           TL::SearchMessagesFilterPhoto
#         when Video
#           TL::SearchMessagesFilterVideo
#         when VoiceNote
#           TL::SearchMessagesFilterVoiceNote
#         when PhotoOrVideo
#           TL::SearchMessagesFilterPhotoAndVideo
#         when Url
#           TL::SearchMessagesFilterUrl
#         when ChatPhoto
#           TL::SearchMessagesFilterChatPhoto
#         when Call
#           TL::SearchMessagesFilterCall
#         when MissedCall
#           TL::SearchMessagesFilterMissedCall
#         when VideoNote
#           TL::SearchMessagesFilterVideoNote
#         when VideoOrVoiceNote
#           TL::SearchMessagesFilterVideoAndVoiceNote
#         when Mention
#           TL::SearchMessagesFilterMention
#         when UnreadMention
#           TL::SearchMessagesFilterUnreadMention
#         else
#           raise "unreachable"
#         end
#       end
#     end
#   end
# end
