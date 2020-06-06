module Proton
  enum Event
    NewMessage
    MessageEdited
    MessageDeleted
    MessageRead
    MessageSent
    MessageSendingFailed
    MessageOpened
    MessageNewViews
    ChatAction
    UserUpdate
    UserStatusChanged
    CallbackQuery
    InlineQuery
    ChosenInlineResult
    Album
    Raw

    def self.from_tl_update(update)
      actions = [] of Event

      case update
      when TL::UpdateNewMessage
        actions << NewMessage
      when TL::UpdateMessageEdited
        actions << MessageEdited
      when TL::UpdateMessageSendAcknowledged
        actions << MessageRead
      when TL::UpdateMessageSendSucceeded
        actions << MessageSent
      when TL::UpdateMessageSendFailed
        actions << MessageSendingFailed
      when TL::UpdateMessageViews
        actions << MessageNewViews
      when TL::UpdateMessageContentOpened
        actions << MessageOpened
      when TL::UpdateMessageMentionRead
        actions << MessageRead
      when TL::UpdateUserChatAction
        actions << ChatAction
      when TL::UpdateUser
        actions << UserUpdate
      when TL::UpdateUserStatus
        actions << UserStatusChanged
      when TL::UpdateNewInlineQuery
        actions << InlineQuery
      when TL::UpdateNewCallbackQuery
        actions << CallbackQuery
      when TL::UpdateNewChosenInlineResult
        actions << ChosenInlineResult
      else
      end

      actions << Raw
      actions
    end
  end
end
