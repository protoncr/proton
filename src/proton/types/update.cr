# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains notifications about data changes.
  abstract class Update < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "updateAuthorizationState" => Types::Update::AuthorizationState,
      "updateNewMessage" => Types::Update::NewMessage,
      "updateMessageSendAcknowledged" => Types::Update::MessageSendAcknowledged,
      "updateMessageSendSucceeded" => Types::Update::MessageSendSucceeded,
      "updateMessageSendFailed" => Types::Update::MessageSendFailed,
      "updateMessageContent" => Types::Update::MessageContent,
      "updateMessageEdited" => Types::Update::MessageEdited,
      "updateMessageViews" => Types::Update::MessageViews,
      "updateMessageContentOpened" => Types::Update::MessageContentOpened,
      "updateMessageMentionRead" => Types::Update::MessageMentionRead,
      "updateNewChat" => Types::Update::NewChat,
      "updateChatTitle" => Types::Update::ChatTitle,
      "updateChatPhoto" => Types::Update::ChatPhoto,
      "updateChatPermissions" => Types::Update::ChatPermissions,
      "updateChatLastMessage" => Types::Update::ChatLastMessage,
      "updateChatOrder" => Types::Update::ChatOrder,
      "updateChatIsPinned" => Types::Update::ChatIsPinned,
      "updateChatIsMarkedAsUnread" => Types::Update::ChatIsMarkedAsUnread,
      "updateChatIsSponsored" => Types::Update::ChatIsSponsored,
      "updateChatDefaultDisableNotification" => Types::Update::ChatDefaultDisableNotification,
      "updateChatReadInbox" => Types::Update::ChatReadInbox,
      "updateChatReadOutbox" => Types::Update::ChatReadOutbox,
      "updateChatUnreadMentionCount" => Types::Update::ChatUnreadMentionCount,
      "updateChatNotificationSettings" => Types::Update::ChatNotificationSettings,
      "updateScopeNotificationSettings" => Types::Update::ScopeNotificationSettings,
      "updateChatPinnedMessage" => Types::Update::ChatPinnedMessage,
      "updateChatReplyMarkup" => Types::Update::ChatReplyMarkup,
      "updateChatDraftMessage" => Types::Update::ChatDraftMessage,
      "updateChatOnlineMemberCount" => Types::Update::ChatOnlineMemberCount,
      "updateNotification" => Types::Update::Notification,
      "updateNotificationGroup" => Types::Update::NotificationGroup,
      "updateActiveNotifications" => Types::Update::ActiveNotifications,
      "updateHavePendingNotifications" => Types::Update::HavePendingNotifications,
      "updateDeleteMessages" => Types::Update::DeleteMessages,
      "updateUserChatAction" => Types::Update::UserChatAction,
      "updateUserStatus" => Types::Update::UserStatus,
      "updateUser" => Types::Update::User,
      "updateBasicGroup" => Types::Update::BasicGroup,
      "updateSupergroup" => Types::Update::Supergroup,
      "updateSecretChat" => Types::Update::SecretChat,
      "updateUserFullInfo" => Types::Update::UserFullInfo,
      "updateBasicGroupFullInfo" => Types::Update::BasicGroupFullInfo,
      "updateSupergroupFullInfo" => Types::Update::SupergroupFullInfo,
      "updateServiceNotification" => Types::Update::ServiceNotification,
      "updateFile" => Types::Update::File,
      "updateFileGenerationStart" => Types::Update::FileGenerationStart,
      "updateFileGenerationStop" => Types::Update::FileGenerationStop,
      "updateCall" => Types::Update::Call,
      "updateUserPrivacySettingRules" => Types::Update::UserPrivacySettingRules,
      "updateUnreadMessageCount" => Types::Update::UnreadMessageCount,
      "updateUnreadChatCount" => Types::Update::UnreadChatCount,
      "updateOption" => Types::Update::Option,
      "updateInstalledStickerSets" => Types::Update::InstalledStickerSets,
      "updateTrendingStickerSets" => Types::Update::TrendingStickerSets,
      "updateRecentStickers" => Types::Update::RecentStickers,
      "updateFavoriteStickers" => Types::Update::FavoriteStickers,
      "updateSavedAnimations" => Types::Update::SavedAnimations,
      "updateSelectedBackground" => Types::Update::SelectedBackground,
      "updateLanguagePackStrings" => Types::Update::LanguagePackStrings,
      "updateConnectionState" => Types::Update::ConnectionState,
      "updateTermsOfService" => Types::Update::TermsOfService,
      "updateNewInlineQuery" => Types::Update::NewInlineQuery,
      "updateNewChosenInlineResult" => Types::Update::NewChosenInlineResult,
      "updateNewCallbackQuery" => Types::Update::NewCallbackQuery,
      "updateNewInlineCallbackQuery" => Types::Update::NewInlineCallbackQuery,
      "updateNewShippingQuery" => Types::Update::NewShippingQuery,
      "updateNewPreCheckoutQuery" => Types::Update::NewPreCheckoutQuery,
      "updateNewCustomEvent" => Types::Update::NewCustomEvent,
      "updateNewCustomQuery" => Types::Update::NewCustomQuery,
      "updatePoll" => Types::Update::Poll
    })
  end
end

require "./update/authorization_state"
require "./update/new_message"
require "./update/message_send_acknowledged"
require "./update/message_send_succeeded"
require "./update/message_send_failed"
require "./update/message_content"
require "./update/message_edited"
require "./update/message_views"
require "./update/message_content_opened"
require "./update/message_mention_read"
require "./update/new_chat"
require "./update/chat_title"
require "./update/chat_photo"
require "./update/chat_permissions"
require "./update/chat_last_message"
require "./update/chat_order"
require "./update/chat_is_pinned"
require "./update/chat_is_marked_as_unread"
require "./update/chat_is_sponsored"
require "./update/chat_default_disable_notification"
require "./update/chat_read_inbox"
require "./update/chat_read_outbox"
require "./update/chat_unread_mention_count"
require "./update/chat_notification_settings"
require "./update/scope_notification_settings"
require "./update/chat_pinned_message"
require "./update/chat_reply_markup"
require "./update/chat_draft_message"
require "./update/chat_online_member_count"
require "./update/notification"
require "./update/notification_group"
require "./update/active_notifications"
require "./update/have_pending_notifications"
require "./update/delete_messages"
require "./update/user_chat_action"
require "./update/user_status"
require "./update/user"
require "./update/basic_group"
require "./update/supergroup"
require "./update/secret_chat"
require "./update/user_full_info"
require "./update/basic_group_full_info"
require "./update/supergroup_full_info"
require "./update/service_notification"
require "./update/file"
require "./update/file_generation_start"
require "./update/file_generation_stop"
require "./update/call"
require "./update/user_privacy_setting_rules"
require "./update/unread_message_count"
require "./update/unread_chat_count"
require "./update/option"
require "./update/installed_sticker_sets"
require "./update/trending_sticker_sets"
require "./update/recent_stickers"
require "./update/favorite_stickers"
require "./update/saved_animations"
require "./update/selected_background"
require "./update/language_pack_strings"
require "./update/connection_state"
require "./update/terms_of_service"
require "./update/new_inline_query"
require "./update/new_chosen_inline_result"
require "./update/new_callback_query"
require "./update/new_inline_callback_query"
require "./update/new_shipping_query"
require "./update/new_pre_checkout_query"
require "./update/new_custom_event"
require "./update/new_custom_query"
require "./update/poll"
