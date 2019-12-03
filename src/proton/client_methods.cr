# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

module Proton::ClientMethods
  # Accepts an incoming call.
  #
  # call_id [::Int32] Call identifier.
  # protocol [Proton::Types::CallProtocol] Description of the call protocols supported by the client.
  def accept_call(call_id : ::Int32, protocol : Proton::Types::CallProtocol) # : Proton::Types::Ok
    broadcast({"@type"    => "acceptCall",
              "call_id"  => call_id,
              "protocol" => protocol})
  end  

  # Accepts Telegram terms of services.
  #
  # terms_of_service_id [::String] Terms of service identifier.
  def accept_terms_of_service(terms_of_service_id : ::String) # : Proton::Types::Ok
    broadcast({"@type"               => "acceptTermsOfService",
              "terms_of_service_id" => terms_of_service_id})
  end  

  # Adds a new member to a chat.
  # Members can't be added to private or secret chats.
  # Members will not be added until the chat state has been synchronized with the server.
  #
  # chat_id [::Int32] Chat identifier.
  # user_id [::Int32] Identifier of the user.
  # forward_limit [::Int32] The number of earlier messages from the chat to be forwarded to the new member; up to 100.
  #   Ignored for supergroups and channels.
  def add_chat_member(chat_id : ::Int32, user_id : ::Int32, forward_limit : ::Int32) # : Proton::Types::Ok
    broadcast({"@type"         => "addChatMember",
              "chat_id"       => chat_id,
              "user_id"       => user_id,
              "forward_limit" => forward_limit})
  end  

  # Adds multiple new members to a chat.
  # Currently this option is only available for supergroups and channels.
  # This option can't be used to join a chat.
  # Members can't be added to a channel if it has more than 200 members.
  # Members will not be added until the chat state has been synchronized with the server.
  #
  # chat_id [::Int32] Chat identifier.
  # user_ids [::Array(::Int32)] Identifiers of the users to be added to the chat.
  def add_chat_members(chat_id : ::Int32, user_ids : ::Array(::Int32)) # : Proton::Types::Ok
    broadcast({"@type"    => "addChatMembers",
              "chat_id"  => chat_id,
              "user_ids" => user_ids})
  end  

  # Adds a custom server language pack to the list of installed language packs in current localization target.
  # Can be called before authorization.
  #
  # language_pack_id [::String] Identifier of a language pack to be added; may be different from a name that is used in
  #   an "https://t.me/setlanguage/" link.
  def add_custom_server_language_pack(language_pack_id : ::String) # : Proton::Types::Ok
    broadcast({"@type"            => "addCustomServerLanguagePack",
              "language_pack_id" => language_pack_id})
  end  

  # Adds a new sticker to the list of favorite stickers.
  # The new sticker is added to the top of the list.
  # If the sticker was already in the list, it is removed from the list first.
  # Only stickers belonging to a sticker set can be added to this list.
  #
  # sticker [Proton::Types::InputFile] Sticker file to add.
  def add_favorite_sticker(sticker : Proton::Types::InputFile) # : Proton::Types::Ok
    broadcast({"@type"   => "addFavoriteSticker",
              "sticker" => sticker})
  end  

  # Adds a local message to a chat.
  # The message is persistent across application restarts only if the message database is used.
  # Returns the added message.
  #
  # chat_id [::Int32] Target chat.
  # sender_user_id [::Int32] Identifier of the user who will be shown as the sender of the message; may be 0 for
  #   channel posts.
  # reply_to_message_id [::Int32] Identifier of the message to reply to or 0.
  # disable_notification [::Bool] Pass true to disable notification for the message.
  # input_message_content [Proton::Types::InputMessageContent] The content of the message to be added.
  def add_local_message(chat_id : ::Int32, sender_user_id : ::Int32, reply_to_message_id : ::Int32, disable_notification : ::Bool, input_message_content : Proton::Types::InputMessageContent) # : Proton::Types::Message
    broadcast({"@type"                 => "addLocalMessage",
              "chat_id"               => chat_id,
              "sender_user_id"        => sender_user_id,
              "reply_to_message_id"   => reply_to_message_id,
              "disable_notification"  => disable_notification,
              "input_message_content" => input_message_content})
  end  

  # Adds a message to TDLib internal log.
  # This is an offline method.
  # Can be called before authorization.
  # Can be called synchronously.
  #
  # verbosity_level [::Int32] Minimum verbosity level needed for the message to be logged, 0-1023.
  # text [::String] Text of a message to log.
  def add_log_message(verbosity_level : ::Int32, text : ::String) # : Proton::Types::Ok
    broadcast({"@type"           => "addLogMessage",
              "verbosity_level" => verbosity_level,
              "text"            => text})
  end  

  # Adds the specified data to data usage statistics.
  # Can be called before authorization.
  #
  # entry [Proton::Types::NetworkStatisticsEntry] The network statistics entry with the data to be added to statistics.
  def add_network_statistics(entry : Proton::Types::NetworkStatisticsEntry) # : Proton::Types::Ok
    broadcast({"@type" => "addNetworkStatistics",
              "entry" => entry})
  end  

  # Adds a proxy server for network requests.
  # Can be called before authorization.
  #
  # server [::String] Proxy server IP address.
  # port [::Int32] Proxy server port.
  # enable [::Bool] True, if the proxy should be enabled.
  # type [Proton::Types::ProxyType] Proxy type.
  def add_proxy(server : ::String, port : ::Int32, enable : ::Bool, type : Proton::Types::ProxyType) # : Proton::Types::Proxy
    broadcast({"@type"  => "addProxy",
              "server" => server,
              "port"   => port,
              "enable" => enable,
              "type"   => type})
  end  

  # Manually adds a new sticker to the list of recently used stickers.
  # The new sticker is added to the top of the list.
  # If the sticker was already in the list, it is removed from the list first.
  # Only stickers belonging to a sticker set can be added to this list.
  #
  # is_attached [::Bool] Pass true to add the sticker to the list of stickers recently attached to photo or video
  #   files; pass false to add the sticker to the list of recently sent stickers.
  # sticker [Proton::Types::InputFile] Sticker file to add.
  def add_recent_sticker(is_attached : ::Bool, sticker : Proton::Types::InputFile) # : Proton::Types::Stickers
    broadcast({"@type"       => "addRecentSticker",
              "is_attached" => is_attached,
              "sticker"     => sticker})
  end  

  # Adds a chat to the list of recently found chats.
  # The chat is added to the beginning of the list.
  # If the chat is already in the list, it will be removed from the list first.
  #
  # chat_id [::Int32] Identifier of the chat to add.
  def add_recently_found_chat(chat_id : ::Int32) # : Proton::Types::Ok
    broadcast({"@type"   => "addRecentlyFoundChat",
              "chat_id" => chat_id})
  end  

  # Manually adds a new animation to the list of saved animations.
  # The new animation is added to the beginning of the list.
  # If the animation was already in the list, it is removed first.
  # Only non-secret video animations with MIME type "video/mp4" can be added to the list.
  #
  # animation [Proton::Types::InputFile] The animation file to be added.
  #   Only animations known to the server (i.e.
  #   successfully sent via a message) can be added to the list.
  def add_saved_animation(animation : Proton::Types::InputFile) # : Proton::Types::Ok
    broadcast({"@type"     => "addSavedAnimation",
              "animation" => animation})
  end  

  # Adds a new sticker to a set; for bots only.
  # Returns the sticker set.
  #
  # user_id [::Int32] Sticker set owner.
  # name [::String] Sticker set name.
  # sticker [Proton::Types::InputSticker] Sticker to add to the set.
  def add_sticker_to_set(user_id : ::Int32, name : ::String, sticker : Proton::Types::InputSticker) # : Proton::Types::StickerSet
    broadcast({"@type"   => "addStickerToSet",
              "user_id" => user_id,
              "name"    => name,
              "sticker" => sticker})
  end  

  # Sets the result of a callback query; for bots only.
  #
  # callback_query_id [::String] Identifier of the callback query.
  # text [::String] Text of the answer.
  # show_alert [::Bool] If true, an alert should be shown to the user instead of a toast notification.
  # url [::String] URL to be opened.
  # cache_time [::Int32] Time during which the result of the query can be cached, in seconds.
  def answer_callback_query(callback_query_id : ::String, text : ::String, show_alert : ::Bool, url : ::String, cache_time : ::Int32) # : Proton::Types::Ok
    broadcast({"@type"             => "answerCallbackQuery",
              "callback_query_id" => callback_query_id,
              "text"              => text,
              "show_alert"        => show_alert,
              "url"               => url,
              "cache_time"        => cache_time})
  end  

  # Answers a custom query; for bots only.
  #
  # custom_query_id [::String] Identifier of a custom query.
  # data [::String] JSON-serialized answer to the query.
  def answer_custom_query(custom_query_id : ::String, data : ::String) # : Proton::Types::Ok
    broadcast({"@type"           => "answerCustomQuery",
              "custom_query_id" => custom_query_id,
              "data"            => data})
  end  

  # Sets the result of an inline query; for bots only.
  #
  # inline_query_id [::String] Identifier of the inline query.
  # is_personal [::Bool] True, if the result of the query can be cached for the specified user.
  # results [::Array(Proton::Types::InputInlineQueryResult)] The results of the query.
  # cache_time [::Int32] Allowed time to cache the results of the query, in seconds.
  # next_offset [::String] Offset for the next inline query; pass an empty string if there are no more results.
  # switch_pm_text [::String] If non-empty, this text should be shown on the button that opens a private chat with the
  #   bot and sends a start message to the bot with the parameter switch_pm_parameter.
  # switch_pm_parameter [::String] The parameter for the bot start message.
  def answer_inline_query(inline_query_id : ::String, is_personal : ::Bool, results : ::Array(Proton::Types::InputInlineQueryResult), cache_time : ::Int32, next_offset : ::String, switch_pm_text : ::String, switch_pm_parameter : ::String) # : Proton::Types::Ok
    broadcast({"@type"               => "answerInlineQuery",
              "inline_query_id"     => inline_query_id,
              "is_personal"         => is_personal,
              "results"             => results,
              "cache_time"          => cache_time,
              "next_offset"         => next_offset,
              "switch_pm_text"      => switch_pm_text,
              "switch_pm_parameter" => switch_pm_parameter})
  end  

  # Sets the result of a pre-checkout query; for bots only.
  #
  # pre_checkout_query_id [::String] Identifier of the pre-checkout query.
  # error_message [::String] An error message, empty on success.
  def answer_pre_checkout_query(pre_checkout_query_id : ::String, error_message : ::String) # : Proton::Types::Ok
    broadcast({"@type"                 => "answerPreCheckoutQuery",
              "pre_checkout_query_id" => pre_checkout_query_id,
              "error_message"         => error_message})
  end  

  # Sets the result of a shipping query; for bots only.
  #
  # shipping_query_id [::String] Identifier of the shipping query.
  # shipping_options [::Array(Proton::Types::ShippingOption)] Available shipping options.
  # error_message [::String] An error message, empty on success.
  def answer_shipping_query(shipping_query_id : ::String, shipping_options : ::Array(Proton::Types::ShippingOption), error_message : ::String) # : Proton::Types::Ok
    broadcast({"@type"             => "answerShippingQuery",
              "shipping_query_id" => shipping_query_id,
              "shipping_options"  => shipping_options,
              "error_message"     => error_message})
  end  

  # Adds a user to the blacklist.
  #
  # user_id [::Int32] User identifier.
  def block_user(user_id : ::Int32) # : Proton::Types::Ok
    broadcast({"@type"   => "blockUser",
              "user_id" => user_id})
  end  

  # Stops the downloading of a file.
  # If a file has already been downloaded, does nothing.
  #
  # file_id [::Int32] Identifier of a file to stop downloading.
  # only_if_pending [::Bool] Pass true to stop downloading only if it hasn't been started, i.e.
  #   request hasn't been sent to server.
  def cancel_download_file(file_id : ::Int32, only_if_pending : ::Bool) # : Proton::Types::Ok
    broadcast({"@type"           => "cancelDownloadFile",
              "file_id"         => file_id,
              "only_if_pending" => only_if_pending})
  end  

  # Stops the uploading of a file.
  # Supported only for files uploaded by using uploadFile.
  # For other files the behavior is undefined.
  #
  # file_id [::Int32] Identifier of the file to stop uploading.
  def cancel_upload_file(file_id : ::Int32) # : Proton::Types::Ok
    broadcast({"@type"   => "cancelUploadFile",
              "file_id" => file_id})
  end  

  # Reports to the server whether a chat is a spam chat or not.
  # Can be used only if ChatReportSpamState.can_report_spam is true.
  # After this request, ChatReportSpamState.can_report_spam becomes false forever.
  #
  # chat_id [::Int32] Chat identifier.
  # is_spam_chat [::Bool] If true, the chat will be reported as spam; otherwise it will be marked as not spam.
  def change_chat_report_spam_state(chat_id : ::Int32, is_spam_chat : ::Bool) # : Proton::Types::Ok
    broadcast({"@type"        => "changeChatReportSpamState",
              "chat_id"      => chat_id,
              "is_spam_chat" => is_spam_chat})
  end  

  # Changes imported contacts using the list of current user contacts saved on the device.
  # Imports newly added contacts and, if at least the file database is enabled, deletes recently deleted contacts.
  # Query result depends on the result of the previous query, so only one query is possible at the same time.
  #
  # contacts [::Array(Proton::Types::Contact)] The new list of contacts, contact's vCard are ignored and are not
  #   imported.
  def change_imported_contacts(contacts : ::Array(Proton::Types::Contact)) # : Proton::Types::ImportedContacts
    broadcast({"@type"    => "changeImportedContacts",
              "contacts" => contacts})
  end  

  # Changes the phone number of the user and sends an authentication code to the user's new phone number.
  # On success, returns information about the sent code.
  #
  # phone_number [::String] The new phone number of the user in international format.
  # settings [Proton::Types::PhoneNumberAuthenticationSettings] Settings for the authentication of the user's phone
  #   number.
  def change_phone_number(phone_number : ::String, settings : Proton::Types::PhoneNumberAuthenticationSettings) # : Proton::Types::AuthenticationCodeInfo
    broadcast({"@type"        => "changePhoneNumber",
              "phone_number" => phone_number,
              "settings"     => settings})
  end  

  # Installs/uninstalls or activates/archives a sticker set.
  #
  # set_id [::String] Identifier of the sticker set.
  # is_installed [::Bool] The new value of is_installed.
  # is_archived [::Bool] The new value of is_archived.
  #   A sticker set can't be installed and archived simultaneously.
  def change_sticker_set(set_id : ::String, is_installed : ::Bool, is_archived : ::Bool) # : Proton::Types::Ok
    broadcast({"@type"        => "changeStickerSet",
              "set_id"       => set_id,
              "is_installed" => is_installed,
              "is_archived"  => is_archived})
  end  

  # Checks the authentication token of a bot; to log in as a bot.
  # Works only when the current authorization state is authorizationStateWaitPhoneNumber.
  # Can be used instead of setAuthenticationPhoneNumber and checkAuthenticationCode to log in.
  #
  # token [::String] The bot token.
  def check_authentication_bot_token(token : ::String) # : Proton::Types::Ok
    broadcast({"@type" => "checkAuthenticationBotToken",
              "token" => token})
  end  

  # Checks the authentication code.
  # Works only when the current authorization state is authorizationStateWaitCode.
  #
  # code [::String] The verification code received via SMS, Telegram message, phone call, or flash call.
  def check_authentication_code(code : ::String) # : Proton::Types::Ok
    broadcast({"@type" => "checkAuthenticationCode",
              "code"  => code})
  end  

  # Checks the authentication password for correctness.
  # Works only when the current authorization state is authorizationStateWaitPassword.
  #
  # password [::String] The password to check.
  def check_authentication_password(password : ::String) # : Proton::Types::Ok
    broadcast({"@type"    => "checkAuthenticationPassword",
              "password" => password})
  end  

  # Checks the authentication code sent to confirm a new phone number of the user.
  #
  # code [::String] Verification code received by SMS, phone call or flash call.
  def check_change_phone_number_code(code : ::String) # : Proton::Types::Ok
    broadcast({"@type" => "checkChangePhoneNumberCode",
              "code"  => code})
  end  

  # Checks the validity of an invite link for a chat and returns information about the corresponding chat.
  #
  # invite_link [::String] Invite link to be checked; should begin with "https://t.me/joinchat/",
  #   "https://telegram.me/joinchat/", or "https://telegram.dog/joinchat/".
  def check_chat_invite_link(invite_link : ::String) # : Proton::Types::ChatInviteLinkInfo
    broadcast({"@type"       => "checkChatInviteLink",
              "invite_link" => invite_link})
  end  

  # Checks whether a username can be set for a chat.
  #
  # chat_id [::Int32] Chat identifier; should be identifier of a supergroup chat, or a channel chat, or a private chat
  #   with self, or zero if chat is being created.
  # username [::String] Username to be checked.
  def check_chat_username(chat_id : ::Int32, username : ::String) # : Proton::Types::CheckChatUsernameResult
    broadcast({"@type"    => "checkChatUsername",
              "chat_id"  => chat_id,
              "username" => username})
  end  

  # Checks the database encryption key for correctness.
  # Works only when the current authorization state is authorizationStateWaitEncryptionKey.
  #
  # encryption_key [::String] Encryption key to check or set up.
  def check_database_encryption_key(encryption_key : ::String) # : Proton::Types::Ok
    broadcast({"@type"          => "checkDatabaseEncryptionKey",
              "encryption_key" => encryption_key})
  end  

  # Checks the email address verification code for Telegram Passport.
  #
  # code [::String] Verification code.
  def check_email_address_verification_code(code : ::String) # : Proton::Types::Ok
    broadcast({"@type" => "checkEmailAddressVerificationCode",
              "code"  => code})
  end  

  # Checks phone number confirmation code.
  #
  # code [::String] The phone number confirmation code.
  def check_phone_number_confirmation_code(code : ::String) # : Proton::Types::Ok
    broadcast({"@type" => "checkPhoneNumberConfirmationCode",
              "code"  => code})
  end  

  # Checks the phone number verification code for Telegram Passport.
  #
  # code [::String] Verification code.
  def check_phone_number_verification_code(code : ::String) # : Proton::Types::Ok
    broadcast({"@type" => "checkPhoneNumberVerificationCode",
              "code"  => code})
  end  

  # Checks the 2-step verification recovery email address verification code.
  #
  # code [::String] Verification code.
  def check_recovery_email_address_code(code : ::String) # : Proton::Types::PasswordState
    broadcast({"@type" => "checkRecoveryEmailAddressCode",
              "code"  => code})
  end  

  # Removes potentially dangerous characters from the name of a file.
  # The encoding of the file name is supposed to be UTF-8.
  # Returns an empty string on failure.
  # This is an offline method.
  # Can be called before authorization.
  # Can be called synchronously.
  #
  # file_name [::String] File name or path to the file.
  def clean_file_name(file_name : ::String) # : Proton::Types::Text
    broadcast({"@type"     => "cleanFileName",
              "file_name" => file_name})
  end  

  # Clears draft messages in all chats.
  #
  # exclude_secret_chats [::Bool] If true, local draft messages in secret chats will not be cleared.
  def clear_all_draft_messages(exclude_secret_chats : ::Bool) # : Proton::Types::Ok
    broadcast({"@type"                => "clearAllDraftMessages",
              "exclude_secret_chats" => exclude_secret_chats})
  end  

  # Clears all imported contacts, contact list remains unchanged.
  #
  def clear_imported_contacts # : Proton::Types::Ok
    broadcast({"@type" => "clearImportedContacts"})
  end  

  # Clears the list of recently used stickers.
  #
  # is_attached [::Bool] Pass true to clear the list of stickers recently attached to photo or video files; pass false
  #   to clear the list of recently sent stickers.
  def clear_recent_stickers(is_attached : ::Bool) # : Proton::Types::Ok
    broadcast({"@type"       => "clearRecentStickers",
              "is_attached" => is_attached})
  end  

  # Clears the list of recently found chats.
  #
  def clear_recently_found_chats # : Proton::Types::Ok
    broadcast({"@type" => "clearRecentlyFoundChats"})
  end  

  # Closes the TDLib instance.
  # All databases will be flushed to disk and properly closed.
  # After the close completes, updateAuthorizationState with authorizationStateClosed will be sent.
  #
  def close # : Proton::Types::Ok
    broadcast({"@type" => "close"})
  end  

  # Informs TDLib that the chat is closed by the user.
  # Many useful activities depend on the chat being opened or closed.
  #
  # chat_id [::Int32] Chat identifier.
  def close_chat(chat_id : ::Int32) # : Proton::Types::Ok
    broadcast({"@type"   => "closeChat",
              "chat_id" => chat_id})
  end  

  # Closes a secret chat, effectively transfering its state to secretChatStateClosed.
  #
  # secret_chat_id [::Int32] Secret chat identifier.
  def close_secret_chat(secret_chat_id : ::Int32) # : Proton::Types::Ok
    broadcast({"@type"          => "closeSecretChat",
              "secret_chat_id" => secret_chat_id})
  end  

  # Returns an existing chat corresponding to a known basic group.
  #
  # basic_group_id [::Int32] Basic group identifier.
  # force [::Bool] If true, the chat will be created without network request.
  #   In this case all information about the chat except its type, title and photo can be incorrect.
  def create_basic_group_chat(basic_group_id : ::Int32, force : ::Bool) # : Proton::Types::Chat
    broadcast({"@type"          => "createBasicGroupChat",
              "basic_group_id" => basic_group_id,
              "force"          => force})
  end  

  # Creates a new call.
  #
  # user_id [::Int32] Identifier of the user to be called.
  # protocol [Proton::Types::CallProtocol] Description of the call protocols supported by the client.
  def create_call(user_id : ::Int32, protocol : Proton::Types::CallProtocol) # : Proton::Types::CallId
    broadcast({"@type"    => "createCall",
              "user_id"  => user_id,
              "protocol" => protocol})
  end  

  # Creates a new basic group and sends a corresponding messageBasicGroupChatCreate.
  # Returns the newly created chat.
  #
  # user_ids [::Array(::Int32)] Identifiers of users to be added to the basic group.
  # title [::String] Title of the new basic group; 1-128 characters.
  def create_new_basic_group_chat(user_ids : ::Array(::Int32), title : ::String) # : Proton::Types::Chat
    broadcast({"@type"    => "createNewBasicGroupChat",
              "user_ids" => user_ids,
              "title"    => title})
  end  

  # Creates a new secret chat.
  # Returns the newly created chat.
  #
  # user_id [::Int32] Identifier of the target user.
  def create_new_secret_chat(user_id : ::Int32) # : Proton::Types::Chat
    broadcast({"@type"   => "createNewSecretChat",
              "user_id" => user_id})
  end  

  # Creates a new sticker set; for bots only.
  # Returns the newly created sticker set.
  #
  # user_id [::Int32] Sticker set owner.
  # title [::String] Sticker set title; 1-64 characters.
  # name [::String] Sticker set name.
  #   Can contain only English letters, digits and underscores.
  #   Must end with *"_by_<bot username>"* (*<bot_username>* is case insensitive); 1-64 characters.
  # is_masks [::Bool] True, if stickers are masks.
  # stickers [::Array(Proton::Types::InputSticker)] List of stickers to be added to the set.
  def create_new_sticker_set(user_id : ::Int32, title : ::String, name : ::String, is_masks : ::Bool, stickers : ::Array(Proton::Types::InputSticker)) # : Proton::Types::StickerSet
    broadcast({"@type"    => "createNewStickerSet",
              "user_id"  => user_id,
              "title"    => title,
              "name"     => name,
              "is_masks" => is_masks,
              "stickers" => stickers})
  end  

  # Creates a new supergroup or channel and sends a corresponding messageSupergroupChatCreate.
  # Returns the newly created chat.
  #
  # title [::String] Title of the new chat; 1-128 characters.
  # is_channel [::Bool] True, if a channel chat should be created.
  # description [::String] Chat description; 0-255 characters.
  def create_new_supergroup_chat(title : ::String, is_channel : ::Bool, description : ::String) # : Proton::Types::Chat
    broadcast({"@type"       => "createNewSupergroupChat",
              "title"       => title,
              "is_channel"  => is_channel,
              "description" => description})
  end  

  # Returns an existing chat corresponding to a given user.
  #
  # user_id [::Int32] User identifier.
  # force [::Bool] If true, the chat will be created without network request.
  #   In this case all information about the chat except its type, title and photo can be incorrect.
  def create_private_chat(user_id : ::Int32, force : ::Bool) # : Proton::Types::Chat
    broadcast({"@type"   => "createPrivateChat",
              "user_id" => user_id,
              "force"   => force})
  end  

  # Returns an existing chat corresponding to a known secret chat.
  #
  # secret_chat_id [::Int32] Secret chat identifier.
  def create_secret_chat(secret_chat_id : ::Int32) # : Proton::Types::Chat
    broadcast({"@type"          => "createSecretChat",
              "secret_chat_id" => secret_chat_id})
  end  

  # Returns an existing chat corresponding to a known supergroup or channel.
  #
  # supergroup_id [::Int32] Supergroup or channel identifier.
  # force [::Bool] If true, the chat will be created without network request.
  #   In this case all information about the chat except its type, title and photo can be incorrect.
  def create_supergroup_chat(supergroup_id : ::Int32, force : ::Bool) # : Proton::Types::Chat
    broadcast({"@type"         => "createSupergroupChat",
              "supergroup_id" => supergroup_id,
              "force"         => force})
  end  

  # Creates a new temporary password for processing payments.
  #
  # password [::String] Persistent user password.
  # valid_for [::Int32] Time during which the temporary password will be valid, in seconds; should be between 60 and
  #   86400.
  def create_temporary_password(password : ::String, valid_for : ::Int32) # : Proton::Types::TemporaryPasswordState
    broadcast({"@type"     => "createTemporaryPassword",
              "password"  => password,
              "valid_for" => valid_for})
  end  

  # Deletes the account of the current user, deleting all information associated with the user from the server.
  # The phone number of the account can be used to create a new account.
  # Can be called before authorization when the current authorization state is authorizationStateWaitPassword.
  #
  # reason [::String, nil] The reason why the account was deleted; optional.
  def delete_account(reason : ::String? = nil) # : Proton::Types::Ok
    broadcast({"@type"  => "deleteAccount",
              "reason" => reason})
  end  

  # Deletes all messages in the chat.
  # Use Chat.can_be_deleted_only_for_self and Chat.can_be_deleted_for_all_users fields to find whether and how the
  #   method can be applied to the chat.
  #
  # chat_id [::Int32] Chat identifier.
  # remove_from_chat_list [::Bool] Pass true if the chat should be removed from the chat list.
  # revoke [::Bool] Pass true to try to delete chat history for all users.
  def delete_chat_history(chat_id : ::Int32, remove_from_chat_list : ::Bool, revoke : ::Bool) # : Proton::Types::Ok
    broadcast({"@type"                 => "deleteChatHistory",
              "chat_id"               => chat_id,
              "remove_from_chat_list" => remove_from_chat_list,
              "revoke"                => revoke})
  end  

  # Deletes all messages sent by the specified user to a chat.
  # Supported only in supergroups; requires can_delete_messages administrator privileges.
  #
  # chat_id [::Int32] Chat identifier.
  # user_id [::Int32] User identifier.
  def delete_chat_messages_from_user(chat_id : ::Int32, user_id : ::Int32) # : Proton::Types::Ok
    broadcast({"@type"   => "deleteChatMessagesFromUser",
              "chat_id" => chat_id,
              "user_id" => user_id})
  end  

  # Deletes the default reply markup from a chat.
  # Must be called after a one-time keyboard or a ForceReply reply markup has been used.
  # UpdateChatReplyMarkup will be sent if the reply markup will be changed.
  #
  # chat_id [::Int32] Chat identifier.
  # message_id [::Int32] The message identifier of the used keyboard.
  def delete_chat_reply_markup(chat_id : ::Int32, message_id : ::Int32) # : Proton::Types::Ok
    broadcast({"@type"      => "deleteChatReplyMarkup",
              "chat_id"    => chat_id,
              "message_id" => message_id})
  end  

  # Deletes a file from the TDLib file cache.
  #
  # file_id [::Int32] Identifier of the file to delete.
  def delete_file(file_id : ::Int32) # : Proton::Types::Ok
    broadcast({"@type"   => "deleteFile",
              "file_id" => file_id})
  end  

  # Deletes all information about a language pack in the current localization target.
  # The language pack which is currently in use (including base language pack) or is being synchronized can't be
  #   deleted.
  # Can be called before authorization.
  #
  # language_pack_id [::String] Identifier of the language pack to delete.
  def delete_language_pack(language_pack_id : ::String) # : Proton::Types::Ok
    broadcast({"@type"            => "deleteLanguagePack",
              "language_pack_id" => language_pack_id})
  end  

  # Deletes messages.
  #
  # chat_id [::Int32] Chat identifier.
  # message_ids [::Array(::Int32)] Identifiers of the messages to be deleted.
  # revoke [::Bool] Pass true to try to delete messages for all chat members.
  #   Always true for supergroups, channels and secret chats.
  def delete_messages(chat_id : ::Int32, message_ids : ::Array(::Int32), revoke : ::Bool) # : Proton::Types::Ok
    broadcast({"@type"       => "deleteMessages",
              "chat_id"     => chat_id,
              "message_ids" => message_ids,
              "revoke"      => revoke})
  end  

  # Deletes a Telegram Passport element.
  #
  # type [Proton::Types::PassportElementType] Element type.
  def delete_passport_element(type : Proton::Types::PassportElementType) # : Proton::Types::Ok
    broadcast({"@type" => "deletePassportElement",
              "type"  => type})
  end  

  # Deletes a profile photo.
  # If something changes, updateUser will be sent.
  #
  # profile_photo_id [::String] Identifier of the profile photo to delete.
  def delete_profile_photo(profile_photo_id : ::String) # : Proton::Types::Ok
    broadcast({"@type"            => "deleteProfilePhoto",
              "profile_photo_id" => profile_photo_id})
  end  

  # Deletes saved credentials for all payment provider bots.
  #
  def delete_saved_credentials # : Proton::Types::Ok
    broadcast({"@type" => "deleteSavedCredentials"})
  end  

  # Deletes saved order info.
  #
  def delete_saved_order_info # : Proton::Types::Ok
    broadcast({"@type" => "deleteSavedOrderInfo"})
  end  

  # Deletes a supergroup or channel along with all messages in the corresponding chat.
  # This will release the supergroup or channel username and remove all members; requires creator privileges in the
  #   supergroup or channel.
  # Chats with more than 1000 members can't be deleted using this method.
  #
  # supergroup_id [::Int32] Identifier of the supergroup or channel.
  def delete_supergroup(supergroup_id : ::Int32) # : Proton::Types::Ok
    broadcast({"@type"         => "deleteSupergroup",
              "supergroup_id" => supergroup_id})
  end  

  # Closes the TDLib instance, destroying all local data without a proper logout.
  # The current user session will remain in the list of all active sessions.
  # All local data will be destroyed.
  # After the destruction completes updateAuthorizationState with authorizationStateClosed will be sent.
  #
  def destroy # : Proton::Types::Ok
    broadcast({"@type" => "destroy"})
  end  

  # Disables the currently enabled proxy.
  # Can be called before authorization.
  #
  def disable_proxy # : Proton::Types::Ok
    broadcast({"@type" => "disableProxy"})
  end  

  # Discards a call.
  #
  # call_id [::Int32] Call identifier.
  # is_disconnected [::Bool] True, if the user was disconnected.
  # duration [::Int32] The call duration, in seconds.
  # connection_id [::String] Identifier of the connection used during the call.
  def discard_call(call_id : ::Int32, is_disconnected : ::Bool, duration : ::Int32, connection_id : ::String) # : Proton::Types::Ok
    broadcast({"@type"           => "discardCall",
              "call_id"         => call_id,
              "is_disconnected" => is_disconnected,
              "duration"        => duration,
              "connection_id"   => connection_id})
  end  

  # Disconnects all websites from the current user's Telegram account.
  #
  def disconnect_all_websites # : Proton::Types::Ok
    broadcast({"@type" => "disconnectAllWebsites"})
  end  

  # Disconnects website from the current user's Telegram account.
  #
  # website_id [::String] Website identifier.
  def disconnect_website(website_id : ::String) # : Proton::Types::Ok
    broadcast({"@type"      => "disconnectWebsite",
              "website_id" => website_id})
  end  

  # Downloads a file from the cloud.
  # Download progress and completion of the download will be notified through updateFile updates.
  #
  # file_id [::Int32] Identifier of the file to download.
  # priority [::Int32] Priority of the download (1-32).
  #   The higher the priority, the earlier the file will be downloaded.
  #   If the priorities of two files are equal, then the last one for which downloadFile was called will be downloaded
  #   first.
  # offset [::Int32] The starting position from which the file should be downloaded.
  # limit [::Int32] Number of bytes which should be downloaded starting from the "offset" position before the download
  #   will be automatically cancelled; use 0 to download without a limit.
  # synchronous [::Bool] If false, this request returns file state just after the download has been started.
  #   If true, this request returns file state only after the download has succeeded, has failed, has been cancelled or
  #   a new downloadFile request with different offset/limit parameters was sent.
  def download_file(file_id : ::Int32, priority : ::Int32, offset : ::Int32, limit : ::Int32, synchronous : ::Bool) # : Proton::Types::File
    broadcast({"@type"       => "downloadFile",
              "file_id"     => file_id,
              "priority"    => priority,
              "offset"      => offset,
              "limit"       => limit,
              "synchronous" => synchronous})
  end  

  # Edits information about a custom local language pack in the current localization target.
  # Can be called before authorization.
  #
  # info [Proton::Types::LanguagePackInfo] New information about the custom local language pack.
  def edit_custom_language_pack_info(info : Proton::Types::LanguagePackInfo) # : Proton::Types::Ok
    broadcast({"@type" => "editCustomLanguagePackInfo",
              "info"  => info})
  end  

  # Edits the caption of an inline message sent via a bot; for bots only.
  #
  # inline_message_id [::String] Inline message identifier.
  # reply_markup [Proton::Types::ReplyMarkup] The new message reply markup.
  # caption [Proton::Types::FormattedText] New message content caption; 0-GetOption("message_caption_length_max")
  #   characters.
  def edit_inline_message_caption(inline_message_id : ::String, reply_markup : Proton::Types::ReplyMarkup, caption : Proton::Types::FormattedText) # : Proton::Types::Ok
    broadcast({"@type"             => "editInlineMessageCaption",
              "inline_message_id" => inline_message_id,
              "reply_markup"      => reply_markup,
              "caption"           => caption})
  end  

  # Edits the content of a live location in an inline message sent via a bot; for bots only.
  #
  # inline_message_id [::String] Inline message identifier.
  # reply_markup [Proton::Types::ReplyMarkup] The new message reply markup.
  # location [Proton::Types::Location, nil] New location content of the message; may be null.
  #   Pass null to stop sharing the live location.
  def edit_inline_message_live_location(inline_message_id : ::String, reply_markup : Proton::Types::ReplyMarkup, location : Proton::Types::Location? = nil) # : Proton::Types::Ok
    broadcast({"@type"             => "editInlineMessageLiveLocation",
              "inline_message_id" => inline_message_id,
              "reply_markup"      => reply_markup,
              "location"          => location})
  end  

  # Edits the content of a message with an animation, an audio, a document, a photo or a video in an inline message
  #   sent via a bot; for bots only.
  #
  # inline_message_id [::String] Inline message identifier.
  # reply_markup [Proton::Types::ReplyMarkup] The new message reply markup; for bots only.
  # input_message_content [Proton::Types::InputMessageContent] New content of the message.
  #   Must be one of the following types: InputMessageAnimation, InputMessageAudio, InputMessageDocument,
  #   InputMessagePhoto or InputMessageVideo.
  def edit_inline_message_media(inline_message_id : ::String, reply_markup : Proton::Types::ReplyMarkup, input_message_content : Proton::Types::InputMessageContent) # : Proton::Types::Ok
    broadcast({"@type"                 => "editInlineMessageMedia",
              "inline_message_id"     => inline_message_id,
              "reply_markup"          => reply_markup,
              "input_message_content" => input_message_content})
  end  

  # Edits the reply markup of an inline message sent via a bot; for bots only.
  #
  # inline_message_id [::String] Inline message identifier.
  # reply_markup [Proton::Types::ReplyMarkup] The new message reply markup.
  def edit_inline_message_reply_markup(inline_message_id : ::String, reply_markup : Proton::Types::ReplyMarkup) # : Proton::Types::Ok
    broadcast({"@type"             => "editInlineMessageReplyMarkup",
              "inline_message_id" => inline_message_id,
              "reply_markup"      => reply_markup})
  end  

  # Edits the text of an inline text or game message sent via a bot; for bots only.
  #
  # inline_message_id [::String] Inline message identifier.
  # reply_markup [Proton::Types::ReplyMarkup] The new message reply markup.
  # input_message_content [Proton::Types::InputMessageContent] New text content of the message.
  #   Should be of type InputMessageText.
  def edit_inline_message_text(inline_message_id : ::String, reply_markup : Proton::Types::ReplyMarkup, input_message_content : Proton::Types::InputMessageContent) # : Proton::Types::Ok
    broadcast({"@type"                 => "editInlineMessageText",
              "inline_message_id"     => inline_message_id,
              "reply_markup"          => reply_markup,
              "input_message_content" => input_message_content})
  end  

  # Edits the message content caption.
  # Returns the edited message after the edit is completed on the server side.
  #
  # chat_id [::Int32] The chat the message belongs to.
  # message_id [::Int32] Identifier of the message.
  # reply_markup [Proton::Types::ReplyMarkup] The new message reply markup; for bots only.
  # caption [Proton::Types::FormattedText] New message content caption; 0-GetOption("message_caption_length_max")
  #   characters.
  def edit_message_caption(chat_id : ::Int32, message_id : ::Int32, reply_markup : Proton::Types::ReplyMarkup, caption : Proton::Types::FormattedText) # : Proton::Types::Message
    broadcast({"@type"        => "editMessageCaption",
              "chat_id"      => chat_id,
              "message_id"   => message_id,
              "reply_markup" => reply_markup,
              "caption"      => caption})
  end  

  # Edits the message content of a live location.
  # Messages can be edited for a limited period of time specified in the live location.
  # Returns the edited message after the edit is completed on the server side.
  #
  # chat_id [::Int32] The chat the message belongs to.
  # message_id [::Int32] Identifier of the message.
  # reply_markup [Proton::Types::ReplyMarkup] The new message reply markup; for bots only.
  # location [Proton::Types::Location, nil] New location content of the message; may be null.
  #   Pass null to stop sharing the live location.
  def edit_message_live_location(chat_id : ::Int32, message_id : ::Int32, reply_markup : Proton::Types::ReplyMarkup, location : Proton::Types::Location? = nil) # : Proton::Types::Message
    broadcast({"@type"        => "editMessageLiveLocation",
              "chat_id"      => chat_id,
              "message_id"   => message_id,
              "reply_markup" => reply_markup,
              "location"     => location})
  end  

  # Edits the content of a message with an animation, an audio, a document, a photo or a video.
  # The media in the message can't be replaced if the message was set to self-destruct.
  # Media can't be replaced by self-destructing media.
  # Media in an album can be edited only to contain a photo or a video.
  # Returns the edited message after the edit is completed on the server side.
  #
  # chat_id [::Int32] The chat the message belongs to.
  # message_id [::Int32] Identifier of the message.
  # reply_markup [Proton::Types::ReplyMarkup] The new message reply markup; for bots only.
  # input_message_content [Proton::Types::InputMessageContent] New content of the message.
  #   Must be one of the following types: InputMessageAnimation, InputMessageAudio, InputMessageDocument,
  #   InputMessagePhoto or InputMessageVideo.
  def edit_message_media(chat_id : ::Int32, message_id : ::Int32, reply_markup : Proton::Types::ReplyMarkup, input_message_content : Proton::Types::InputMessageContent) # : Proton::Types::Message
    broadcast({"@type"                 => "editMessageMedia",
              "chat_id"               => chat_id,
              "message_id"            => message_id,
              "reply_markup"          => reply_markup,
              "input_message_content" => input_message_content})
  end  

  # Edits the message reply markup; for bots only.
  # Returns the edited message after the edit is completed on the server side.
  #
  # chat_id [::Int32] The chat the message belongs to.
  # message_id [::Int32] Identifier of the message.
  # reply_markup [Proton::Types::ReplyMarkup] The new message reply markup.
  def edit_message_reply_markup(chat_id : ::Int32, message_id : ::Int32, reply_markup : Proton::Types::ReplyMarkup) # : Proton::Types::Message
    broadcast({"@type"        => "editMessageReplyMarkup",
              "chat_id"      => chat_id,
              "message_id"   => message_id,
              "reply_markup" => reply_markup})
  end  

  # Edits the text of a message (or a text of a game message).
  # Returns the edited message after the edit is completed on the server side.
  #
  # chat_id [::Int32] The chat the message belongs to.
  # message_id [::Int32] Identifier of the message.
  # reply_markup [Proton::Types::ReplyMarkup] The new message reply markup; for bots only.
  # input_message_content [Proton::Types::InputMessageContent] New text content of the message.
  #   Should be of type InputMessageText.
  def edit_message_text(chat_id : ::Int32, message_id : ::Int32, reply_markup : Proton::Types::ReplyMarkup, input_message_content : Proton::Types::InputMessageContent) # : Proton::Types::Message
    broadcast({"@type"                 => "editMessageText",
              "chat_id"               => chat_id,
              "message_id"            => message_id,
              "reply_markup"          => reply_markup,
              "input_message_content" => input_message_content})
  end  

  # Edits an existing proxy server for network requests.
  # Can be called before authorization.
  #
  # proxy_id [::Int32] Proxy identifier.
  # server [::String] Proxy server IP address.
  # port [::Int32] Proxy server port.
  # enable [::Bool] True, if the proxy should be enabled.
  # type [Proton::Types::ProxyType] Proxy type.
  def edit_proxy(proxy_id : ::Int32, server : ::String, port : ::Int32, enable : ::Bool, type : Proton::Types::ProxyType) # : Proton::Types::Proxy
    broadcast({"@type"    => "editProxy",
              "proxy_id" => proxy_id,
              "server"   => server,
              "port"     => port,
              "enable"   => enable,
              "type"     => type})
  end  

  # Enables a proxy.
  # Only one proxy can be enabled at a time.
  # Can be called before authorization.
  #
  # proxy_id [::Int32] Proxy identifier.
  def enable_proxy(proxy_id : ::Int32) # : Proton::Types::Ok
    broadcast({"@type"    => "enableProxy",
              "proxy_id" => proxy_id})
  end  

  # Finishes the file generation.
  #
  # generation_id [::String] The identifier of the generation process.
  # error [Proton::Types::Error] If set, means that file generation has failed and should be terminated.
  def finish_file_generation(generation_id : ::String, error : Proton::Types::Error) # : Proton::Types::Ok
    broadcast({"@type"         => "finishFileGeneration",
              "generation_id" => generation_id,
              "error"         => error})
  end  

  # Forwards previously sent messages.
  # Returns the forwarded messages in the same order as the message identifiers passed in message_ids.
  # If a message can't be forwarded, null will be returned instead of the message.
  #
  # chat_id [::Int32] Identifier of the chat to which to forward messages.
  # from_chat_id [::Int32] Identifier of the chat from which to forward messages.
  # message_ids [::Array(::Int32)] Identifiers of the messages to forward.
  # disable_notification [::Bool] Pass true to disable notification for the message, doesn't work if messages are
  #   forwarded to a secret chat.
  # from_background [::Bool] Pass true if the messages are sent from the background.
  # as_album [::Bool] True, if the messages should be grouped into an album after forwarding.
  #   For this to work, no more than 10 messages may be forwarded, and all of them must be photo or video messages.
  # send_copy [::Bool] True, if content of the messages needs to be copied without links to the original messages.
  #   Always true if the messages are forwarded to a secret chat.
  # remove_caption [::Bool] True, if media captions of message copies needs to be removed.
  #   Ignored if send_copy is false.
  def forward_messages(chat_id : ::Int32, from_chat_id : ::Int32, message_ids : ::Array(::Int32), disable_notification : ::Bool, from_background : ::Bool, as_album : ::Bool, send_copy : ::Bool, remove_caption : ::Bool) # : Proton::Types::Messages
    broadcast({"@type"                => "forwardMessages",
              "chat_id"              => chat_id,
              "from_chat_id"         => from_chat_id,
              "message_ids"          => message_ids,
              "disable_notification" => disable_notification,
              "from_background"      => from_background,
              "as_album"             => as_album,
              "send_copy"            => send_copy,
              "remove_caption"       => remove_caption})
  end  

  # Generates a new invite link for a chat; the previously generated link is revoked.
  # Available for basic groups, supergroups, and channels.
  # Requires administrator privileges and can_invite_users right.
  #
  # chat_id [::Int32] Chat identifier.
  def generate_chat_invite_link(chat_id : ::Int32) # : Proton::Types::ChatInviteLink
    broadcast({"@type"   => "generateChatInviteLink",
              "chat_id" => chat_id})
  end  

  # Returns the period of inactivity after which the account of the current user will automatically be deleted.
  #
  def get_account_ttl # : Proton::Types::AccountTtl
    broadcast({"@type" => "getAccountTtl"})
  end  

  # Returns all active live locations that should be updated by the client.
  # The list is persistent across application restarts only if the message database is used.
  #
  def get_active_live_location_messages # : Proton::Types::Messages
    broadcast({"@type" => "getActiveLiveLocationMessages"})
  end  

  # Returns all active sessions of the current user.
  #
  def get_active_sessions # : Proton::Types::Sessions
    broadcast({"@type" => "getActiveSessions"})
  end  

  # Returns all available Telegram Passport elements.
  #
  # password [::String] Password of the current user.
  def get_all_passport_elements(password : ::String) # : Proton::Types::PassportElements
    broadcast({"@type"    => "getAllPassportElements",
              "password" => password})
  end  

  # Returns application config, provided by the server.
  # Can be called before authorization.
  #
  def get_application_config # : Proton::Types::JsonValue
    broadcast({"@type" => "getApplicationConfig"})
  end  

  # Returns a list of archived sticker sets.
  #
  # is_masks [::Bool] Pass true to return mask stickers sets; pass false to return ordinary sticker sets.
  # offset_sticker_set_id [::String] Identifier of the sticker set from which to return the result.
  # limit [::Int32] Maximum number of sticker sets to return.
  def get_archived_sticker_sets(is_masks : ::Bool, offset_sticker_set_id : ::String, limit : ::Int32) # : Proton::Types::StickerSets
    broadcast({"@type"                 => "getArchivedStickerSets",
              "is_masks"              => is_masks,
              "offset_sticker_set_id" => offset_sticker_set_id,
              "limit"                 => limit})
  end  

  # Returns a list of sticker sets attached to a file.
  # Currently only photos and videos can have attached sticker sets.
  #
  # file_id [::Int32] File identifier.
  def get_attached_sticker_sets(file_id : ::Int32) # : Proton::Types::StickerSets
    broadcast({"@type"   => "getAttachedStickerSets",
              "file_id" => file_id})
  end  

  # Returns the current authorization state; this is an offline request.
  # For informational purposes only.
  # Use updateAuthorizationState instead to maintain the current authorization state.
  #
  def get_authorization_state # : Proton::Types::AuthorizationState
    broadcast({"@type" => "getAuthorizationState"})
  end  

  # Returns auto-download settings presets for the currently logged in user.
  #
  def get_auto_download_settings_presets # : Proton::Types::AutoDownloadSettingsPresets
    broadcast({"@type" => "getAutoDownloadSettingsPresets"})
  end  

  # Constructs a persistent HTTP URL for a background.
  #
  # name [::String] Background name.
  # type [Proton::Types::BackgroundType] Background type.
  def get_background_url(name : ::String, type : Proton::Types::BackgroundType) # : Proton::Types::HttpUrl
    broadcast({"@type" => "getBackgroundUrl",
              "name"  => name,
              "type"  => type})
  end  

  # Returns backgrounds installed by the user.
  #
  # for_dark_theme [::Bool] True, if the backgrounds needs to be ordered for dark theme.
  def get_backgrounds(for_dark_theme : ::Bool) # : Proton::Types::Backgrounds
    broadcast({"@type"          => "getBackgrounds",
              "for_dark_theme" => for_dark_theme})
  end  

  # Returns information about a basic group by its identifier.
  # This is an offline request if the current user is not a bot.
  #
  # basic_group_id [::Int32] Basic group identifier.
  def get_basic_group(basic_group_id : ::Int32) # : Proton::Types::BasicGroup
    broadcast({"@type"          => "getBasicGroup",
              "basic_group_id" => basic_group_id})
  end  

  # Returns full information about a basic group by its identifier.
  #
  # basic_group_id [::Int32] Basic group identifier.
  def get_basic_group_full_info(basic_group_id : ::Int32) # : Proton::Types::BasicGroupFullInfo
    broadcast({"@type"          => "getBasicGroupFullInfo",
              "basic_group_id" => basic_group_id})
  end  

  # Returns users that were blocked by the current user.
  #
  # offset [::Int32] Number of users to skip in the result; must be non-negative.
  # limit [::Int32] Maximum number of users to return; up to 100.
  def get_blocked_users(offset : ::Int32, limit : ::Int32) # : Proton::Types::Users
    broadcast({"@type"  => "getBlockedUsers",
              "offset" => offset,
              "limit"  => limit})
  end  

  # Sends a callback query to a bot and returns an answer.
  # Returns an error with code 502 if the bot fails to answer the query before the query timeout expires.
  #
  # chat_id [::Int32] Identifier of the chat with the message.
  # message_id [::Int32] Identifier of the message from which the query originated.
  # payload [Proton::Types::CallbackQueryPayload] Query payload.
  def get_callback_query_answer(chat_id : ::Int32, message_id : ::Int32, payload : Proton::Types::CallbackQueryPayload) # : Proton::Types::CallbackQueryAnswer
    broadcast({"@type"      => "getCallbackQueryAnswer",
              "chat_id"    => chat_id,
              "message_id" => message_id,
              "payload"    => payload})
  end  

  # Returns information about a chat by its identifier, this is an offline request if the current user is not a bot.
  #
  # chat_id [::Int32] Chat identifier.
  def get_chat(chat_id : ::Int32) # : Proton::Types::Chat
    broadcast({"@type"   => "getChat",
              "chat_id" => chat_id})
  end  

  # Returns a list of users who are administrators of the chat.
  #
  # chat_id [::Int32] Chat identifier.
  def get_chat_administrators(chat_id : ::Int32) # : Proton::Types::Users
    broadcast({"@type"   => "getChatAdministrators",
              "chat_id" => chat_id})
  end  

  # Returns a list of service actions taken by chat members and administrators in the last 48 hours.
  # Available only in supergroups and channels.
  # Requires administrator rights.
  # Returns results in reverse chronological order (i.
  # e., in order of decreasing event_id).
  #
  # chat_id [::Int32] Chat identifier.
  # query [::String] Search query by which to filter events.
  # from_event_id [::String] Identifier of an event from which to return results.
  #   Use 0 to get results from the latest events.
  # limit [::Int32] Maximum number of events to return; up to 100.
  # filters [Proton::Types::ChatEventLogFilters] The types of events to return.
  #   By default, all types will be returned.
  # user_ids [::Array(::Int32)] User identifiers by which to filter events.
  #   By default, events relating to all users will be returned.
  def get_chat_event_log(chat_id : ::Int32, query : ::String, from_event_id : ::String, limit : ::Int32, filters : Proton::Types::ChatEventLogFilters, user_ids : ::Array(::Int32)) # : Proton::Types::ChatEvents
    broadcast({"@type"         => "getChatEventLog",
              "chat_id"       => chat_id,
              "query"         => query,
              "from_event_id" => from_event_id,
              "limit"         => limit,
              "filters"       => filters,
              "user_ids"      => user_ids})
  end  

  # Returns messages in a chat.
  # The messages are returned in a reverse chronological order (i.e., in order of decreasing message_id).
  # For optimal performance the number of returned messages is chosen by the library.
  # This is an offline request if only_local is true.
  #
  # chat_id [::Int32] Chat identifier.
  # from_message_id [::Int32] Identifier of the message starting from which history must be fetched; use 0 to get
  #   results from the last message.
  # offset [::Int32] Specify 0 to get results from exactly the from_message_id or a negative offset up to 99 to get
  #   additionally some newer messages.
  # limit [::Int32] The maximum number of messages to be returned; must be positive and can't be greater than 100.
  #   If the offset is negative, the limit must be greater or equal to -offset.
  #   Fewer messages may be returned than specified by the limit, even if the end of the message history has not been
  #   reached.
  # only_local [::Bool] If true, returns only messages that are available locally without sending network requests.
  def get_chat_history(chat_id : ::Int32, from_message_id : ::Int32, offset : ::Int32, limit : ::Int32, only_local : ::Bool) # : Proton::Types::Messages
    broadcast({"@type"           => "getChatHistory",
              "chat_id"         => chat_id,
              "from_message_id" => from_message_id,
              "offset"          => offset,
              "limit"           => limit,
              "only_local"      => only_local})
  end  

  # Returns information about a single member of a chat.
  #
  # chat_id [::Int32] Chat identifier.
  # user_id [::Int32] User identifier.
  def get_chat_member(chat_id : ::Int32, user_id : ::Int32) # : Proton::Types::ChatMember
    broadcast({"@type"   => "getChatMember",
              "chat_id" => chat_id,
              "user_id" => user_id})
  end  

  # Returns the last message sent in a chat no later than the specified date.
  #
  # chat_id [::Int32] Chat identifier.
  # date [::Int32] Point in time (Unix timestamp) relative to which to search for messages.
  def get_chat_message_by_date(chat_id : ::Int32, date : ::Int32) # : Proton::Types::Message
    broadcast({"@type"   => "getChatMessageByDate",
              "chat_id" => chat_id,
              "date"    => date})
  end  

  # Returns approximate number of messages of the specified type in the chat.
  #
  # chat_id [::Int32] Identifier of the chat in which to count messages.
  # filter [Proton::Types::SearchMessagesFilter] Filter for message content; searchMessagesFilterEmpty is unsupported
  #   in this function.
  # return_local [::Bool] If true, returns count that is available locally without sending network requests, returning
  #   -1 if the number of messages is unknown.
  def get_chat_message_count(chat_id : ::Int32, filter : Proton::Types::SearchMessagesFilter, return_local : ::Bool) # : Proton::Types::Count
    broadcast({"@type"        => "getChatMessageCount",
              "chat_id"      => chat_id,
              "filter"       => filter,
              "return_local" => return_local})
  end  

  # Returns list of chats with non-default notification settings.
  #
  # scope [Proton::Types::NotificationSettingsScope] If specified, only chats from the specified scope will be
  #   returned.
  # compare_sound [::Bool] If true, also chats with non-default sound will be returned.
  def get_chat_notification_settings_exceptions(scope : Proton::Types::NotificationSettingsScope, compare_sound : ::Bool) # : Proton::Types::Chats
    broadcast({"@type"         => "getChatNotificationSettingsExceptions",
              "scope"         => scope,
              "compare_sound" => compare_sound})
  end  

  # Returns information about a pinned chat message.
  #
  # chat_id [::Int32] Identifier of the chat the message belongs to.
  def get_chat_pinned_message(chat_id : ::Int32) # : Proton::Types::Message
    broadcast({"@type"   => "getChatPinnedMessage",
              "chat_id" => chat_id})
  end  

  # Returns information on whether the current chat can be reported as spam.
  #
  # chat_id [::Int32] Chat identifier.
  def get_chat_report_spam_state(chat_id : ::Int32) # : Proton::Types::ChatReportSpamState
    broadcast({"@type"   => "getChatReportSpamState",
              "chat_id" => chat_id})
  end  

  # Returns an HTTP URL with the chat statistics.
  # Currently this method can be used only for channels.
  #
  # chat_id [::Int32] Chat identifier.
  # parameters [::String] Parameters from "tg://statsrefresh?params=******" link.
  # is_dark [::Bool] Pass true if a URL with the dark theme must be returned.
  def get_chat_statistics_url(chat_id : ::Int32, parameters : ::String, is_dark : ::Bool) # : Proton::Types::HttpUrl
    broadcast({"@type"      => "getChatStatisticsUrl",
              "chat_id"    => chat_id,
              "parameters" => parameters,
              "is_dark"    => is_dark})
  end  

  # Returns an ordered list of chats.
  # Chats are sorted by the pair (order, chat_id) in decreasing order.
  # (For example, to get a list of chats from the beginning, the offset_order should be equal to a biggest signed
  #   64-bit number 9223372036854775807 == 2^63 - 1).
  # For optimal performance the number of returned chats is chosen by the library.
  #
  # offset_order [::String] Chat order to return chats from.
  # offset_chat_id [::Int32] Chat identifier to return chats from.
  # limit [::Int32] The maximum number of chats to be returned.
  #   It is possible that fewer chats than the limit are returned even if the end of the list is not reached.
  def get_chats(offset_order : ::String, offset_chat_id : ::Int32, limit : ::Int32) # : Proton::Types::Chats
    broadcast({"@type"          => "getChats",
              "offset_order"   => offset_order,
              "offset_chat_id" => offset_chat_id,
              "limit"          => limit})
  end  

  # Returns all website where the current user used Telegram to log in.
  #
  def get_connected_websites # : Proton::Types::ConnectedWebsites
    broadcast({"@type" => "getConnectedWebsites"})
  end  

  # Returns all user contacts.
  #
  def get_contacts # : Proton::Types::Users
    broadcast({"@type" => "getContacts"})
  end  

  # Uses current user IP to found their country.
  # Returns two-letter ISO 3166-1 alpha-2 country code.
  # Can be called before authorization.
  #
  def get_country_code # : Proton::Types::Text
    broadcast({"@type" => "getCountryCode"})
  end  

  # Returns a list of public chats with username created by the user.
  #
  def get_created_public_chats # : Proton::Types::Chats
    broadcast({"@type" => "getCreatedPublicChats"})
  end  

  # Returns all updates needed to restore current TDLib state, i.e.
  # all actual UpdateAuthorizationState/UpdateUser/UpdateNewChat and others.
  # This is especially usefull if TDLib is run in a separate process.
  # This is an offline method.
  # Can be called before authorization.
  #
  def get_current_state # : Proton::Types::Updates
    broadcast({"@type" => "getCurrentState"})
  end  

  # Returns database statistics.
  #
  def get_database_statistics # : Proton::Types::DatabaseStatistics
    broadcast({"@type" => "getDatabaseStatistics"})
  end  

  # Returns information about a tg:// deep link.
  # Use "tg://need_update_for_some_feature" or "tg:some_unsupported_feature" for testing.
  # Returns a 404 error for unknown links.
  # Can be called before authorization.
  #
  # link [::String] The link.
  def get_deep_link_info(link : ::String) # : Proton::Types::DeepLinkInfo
    broadcast({"@type" => "getDeepLinkInfo",
              "link"  => link})
  end  

  # Returns an HTTP URL which can be used to automatically log in to the translation platform and suggest new emoji
  #   replacements.
  # The URL will be valid for 30 seconds after generation.
  #
  # language_code [::String] Language code for which the emoji replacements will be suggested.
  def get_emoji_suggestions_url(language_code : ::String) # : Proton::Types::HttpUrl
    broadcast({"@type"         => "getEmojiSuggestionsUrl",
              "language_code" => language_code})
  end  

  # Returns favorite stickers.
  #
  def get_favorite_stickers # : Proton::Types::Stickers
    broadcast({"@type" => "getFavoriteStickers"})
  end  

  # Returns information about a file; this is an offline request.
  #
  # file_id [::Int32] Identifier of the file to get.
  def get_file(file_id : ::Int32) # : Proton::Types::File
    broadcast({"@type"   => "getFile",
              "file_id" => file_id})
  end  

  # Returns file downloaded prefix size from a given offset.
  #
  # file_id [::Int32] Identifier of the file.
  # offset [::Int32] Offset from which downloaded prefix size should be calculated.
  def get_file_downloaded_prefix_size(file_id : ::Int32, offset : ::Int32) # : Proton::Types::Count
    broadcast({"@type"   => "getFileDownloadedPrefixSize",
              "file_id" => file_id,
              "offset"  => offset})
  end  

  # Returns the extension of a file, guessed by its MIME type.
  # Returns an empty string on failure.
  # This is an offline method.
  # Can be called before authorization.
  # Can be called synchronously.
  #
  # mime_type [::String] The MIME type of the file.
  def get_file_extension(mime_type : ::String) # : Proton::Types::Text
    broadcast({"@type"     => "getFileExtension",
              "mime_type" => mime_type})
  end  

  # Returns the MIME type of a file, guessed by its extension.
  # Returns an empty string on failure.
  # This is an offline method.
  # Can be called before authorization.
  # Can be called synchronously.
  #
  # file_name [::String] The name of the file or path to the file.
  def get_file_mime_type(file_name : ::String) # : Proton::Types::Text
    broadcast({"@type"     => "getFileMimeType",
              "file_name" => file_name})
  end  

  # Returns the high scores for a game and some part of the high score table in the range of the specified user; for
  #   bots only.
  #
  # chat_id [::Int32] The chat that contains the message with the game.
  # message_id [::Int32] Identifier of the message.
  # user_id [::Int32] User identifier.
  def get_game_high_scores(chat_id : ::Int32, message_id : ::Int32, user_id : ::Int32) # : Proton::Types::GameHighScores
    broadcast({"@type"      => "getGameHighScores",
              "chat_id"    => chat_id,
              "message_id" => message_id,
              "user_id"    => user_id})
  end  

  # Returns a list of common group chats with a given user.
  # Chats are sorted by their type and creation date.
  #
  # user_id [::Int32] User identifier.
  # offset_chat_id [::Int32] Chat identifier starting from which to return chats; use 0 for the first request.
  # limit [::Int32] Maximum number of chats to be returned; up to 100.
  def get_groups_in_common(user_id : ::Int32, offset_chat_id : ::Int32, limit : ::Int32) # : Proton::Types::Chats
    broadcast({"@type"          => "getGroupsInCommon",
              "user_id"        => user_id,
              "offset_chat_id" => offset_chat_id,
              "limit"          => limit})
  end  

  # Returns the total number of imported contacts.
  #
  def get_imported_contact_count # : Proton::Types::Count
    broadcast({"@type" => "getImportedContactCount"})
  end  

  # Returns game high scores and some part of the high score table in the range of the specified user; for bots only.
  #
  # inline_message_id [::String] Inline message identifier.
  # user_id [::Int32] User identifier.
  def get_inline_game_high_scores(inline_message_id : ::String, user_id : ::Int32) # : Proton::Types::GameHighScores
    broadcast({"@type"             => "getInlineGameHighScores",
              "inline_message_id" => inline_message_id,
              "user_id"           => user_id})
  end  

  # Sends an inline query to a bot and returns its results.
  # Returns an error with code 502 if the bot fails to answer the query before the query timeout expires.
  #
  # bot_user_id [::Int32] The identifier of the target bot.
  # chat_id [::Int32] Identifier of the chat, where the query was sent.
  # user_location [Proton::Types::Location] Location of the user, only if needed.
  # query [::String] Text of the query.
  # offset [::String] Offset of the first entry to return.
  def get_inline_query_results(bot_user_id : ::Int32, chat_id : ::Int32, user_location : Proton::Types::Location, query : ::String, offset : ::String) # : Proton::Types::InlineQueryResults
    broadcast({"@type"         => "getInlineQueryResults",
              "bot_user_id"   => bot_user_id,
              "chat_id"       => chat_id,
              "user_location" => user_location,
              "query"         => query,
              "offset"        => offset})
  end  

  # Returns a list of installed sticker sets.
  #
  # is_masks [::Bool] Pass true to return mask sticker sets; pass false to return ordinary sticker sets.
  def get_installed_sticker_sets(is_masks : ::Bool) # : Proton::Types::StickerSets
    broadcast({"@type"    => "getInstalledStickerSets",
              "is_masks" => is_masks})
  end  

  # Returns the default text for invitation messages to be used as a placeholder when the current user invites friends
  #   to Telegram.
  #
  def get_invite_text # : Proton::Types::Text
    broadcast({"@type" => "getInviteText"})
  end  

  # Converts a JsonValue object to corresponding JSON-serialized string.
  # This is an offline method.
  # Can be called before authorization.
  # Can be called synchronously.
  #
  # json_value [Proton::Types::JsonValue] The JsonValue object.
  def get_json_string(json_value : Proton::Types::JsonValue) # : Proton::Types::Text
    broadcast({"@type"      => "getJsonString",
              "json_value" => json_value})
  end  

  # Converts a JSON-serialized string to corresponding JsonValue object.
  # This is an offline method.
  # Can be called before authorization.
  # Can be called synchronously.
  #
  # json [::String] The JSON-serialized string.
  def get_json_value(json : ::String) # : Proton::Types::JsonValue
    broadcast({"@type" => "getJsonValue",
              "json"  => json})
  end  

  # Returns information about a language pack.
  # Returned language pack identifier may be different from a provided one.
  # Can be called before authorization.
  #
  # language_pack_id [::String] Language pack identifier.
  def get_language_pack_info(language_pack_id : ::String) # : Proton::Types::LanguagePackInfo
    broadcast({"@type"            => "getLanguagePackInfo",
              "language_pack_id" => language_pack_id})
  end  

  # Returns a string stored in the local database from the specified localization target and language pack by its key.
  # Returns a 404 error if the string is not found.
  # This is an offline method.
  # Can be called before authorization.
  # Can be called synchronously.
  #
  # language_pack_database_path [::String] Path to the language pack database in which strings are stored.
  # localization_target [::String] Localization target to which the language pack belongs.
  # language_pack_id [::String] Language pack identifier.
  # key [::String] Language pack key of the string to be returned.
  def get_language_pack_string(language_pack_database_path : ::String, localization_target : ::String, language_pack_id : ::String, key : ::String) # : Proton::Types::LanguagePackStringValue
    broadcast({"@type"                       => "getLanguagePackString",
              "language_pack_database_path" => language_pack_database_path,
              "localization_target"         => localization_target,
              "language_pack_id"            => language_pack_id,
              "key"                         => key})
  end  

  # Returns strings from a language pack in the current localization target by their keys.
  # Can be called before authorization.
  #
  # language_pack_id [::String] Language pack identifier of the strings to be returned.
  # keys [::Array(::String)] Language pack keys of the strings to be returned; leave empty to request all available
  #   strings.
  def get_language_pack_strings(language_pack_id : ::String, keys : ::Array(::String)) # : Proton::Types::LanguagePackStrings
    broadcast({"@type"            => "getLanguagePackStrings",
              "language_pack_id" => language_pack_id,
              "keys"             => keys})
  end  

  # Returns information about the current localization target.
  # This is an offline request if only_local is true.
  # Can be called before authorization.
  #
  # only_local [::Bool] If true, returns only locally available information without sending network requests.
  def get_localization_target_info(only_local : ::Bool) # : Proton::Types::LocalizationTargetInfo
    broadcast({"@type"      => "getLocalizationTargetInfo",
              "only_local" => only_local})
  end  

  # Returns information about currently used log stream for internal logging of TDLib.
  # This is an offline method.
  # Can be called before authorization.
  # Can be called synchronously.
  #
  def get_log_stream # : Proton::Types::LogStream
    broadcast({"@type" => "getLogStream"})
  end  

  # Returns current verbosity level for a specified TDLib internal log tag.
  # This is an offline method.
  # Can be called before authorization.
  # Can be called synchronously.
  #
  # tag [::String] Logging tag to change verbosity level.
  def get_log_tag_verbosity_level(tag : ::String) # : Proton::Types::LogVerbosityLevel
    broadcast({"@type" => "getLogTagVerbosityLevel",
              "tag"   => tag})
  end  

  # Returns list of available TDLib internal log tags, for example, ["actor", "binlog", "connections", "notifications",
  #   "proxy"].
  # This is an offline method.
  # Can be called before authorization.
  # Can be called synchronously.
  #
  def get_log_tags # : Proton::Types::LogTags
    broadcast({"@type" => "getLogTags"})
  end  

  # Returns current verbosity level of the internal logging of TDLib.
  # This is an offline method.
  # Can be called before authorization.
  # Can be called synchronously.
  #
  def get_log_verbosity_level # : Proton::Types::LogVerbosityLevel
    broadcast({"@type" => "getLogVerbosityLevel"})
  end  

  # Returns information about a file with a map thumbnail in PNG format.
  # Only map thumbnail files with size less than 1MB can be downloaded.
  #
  # location [Proton::Types::Location] Location of the map center.
  # zoom [::Int32] Map zoom level; 13-20.
  # width [::Int32] Map width in pixels before applying scale; 16-1024.
  # height [::Int32] Map height in pixels before applying scale; 16-1024.
  # scale [::Int32] Map scale; 1-3.
  # chat_id [::Int32] Identifier of a chat, in which the thumbnail will be shown.
  #   Use 0 if unknown.
  def get_map_thumbnail_file(location : Proton::Types::Location, zoom : ::Int32, width : ::Int32, height : ::Int32, scale : ::Int32, chat_id : ::Int32) # : Proton::Types::File
    broadcast({"@type"    => "getMapThumbnailFile",
              "location" => location,
              "zoom"     => zoom,
              "width"    => width,
              "height"   => height,
              "scale"    => scale,
              "chat_id"  => chat_id})
  end  

  # Returns the current user.
  #
  def get_me # : Proton::Types::User
    broadcast({"@type" => "getMe"})
  end  

  # Returns information about a message.
  #
  # chat_id [::Int32] Identifier of the chat the message belongs to.
  # message_id [::Int32] Identifier of the message to get.
  def get_message(chat_id : ::Int32, message_id : ::Int32) # : Proton::Types::Message
    broadcast({"@type"      => "getMessage",
              "chat_id"    => chat_id,
              "message_id" => message_id})
  end  

  # Returns a private HTTPS link to a message in a chat.
  # Available only for already sent messages in supergroups and channels.
  # The link will work only for members of the chat.
  #
  # chat_id [::Int32] Identifier of the chat to which the message belongs.
  # message_id [::Int32] Identifier of the message.
  def get_message_link(chat_id : ::Int32, message_id : ::Int32) # : Proton::Types::HttpUrl
    broadcast({"@type"      => "getMessageLink",
              "chat_id"    => chat_id,
              "message_id" => message_id})
  end  

  # Returns information about a public or private message link.
  #
  # url [::String] The message link in the format "https://t.me/c/...", or "tg://privatepost?...", or
  #   "https://t.me/username/...", or "tg://resolve?...".
  def get_message_link_info(url : ::String) # : Proton::Types::MessageLinkInfo
    broadcast({"@type" => "getMessageLinkInfo",
              "url"   => url})
  end  

  # Returns information about a message, if it is available locally without sending network request.
  # This is an offline request.
  #
  # chat_id [::Int32] Identifier of the chat the message belongs to.
  # message_id [::Int32] Identifier of the message to get.
  def get_message_locally(chat_id : ::Int32, message_id : ::Int32) # : Proton::Types::Message
    broadcast({"@type"      => "getMessageLocally",
              "chat_id"    => chat_id,
              "message_id" => message_id})
  end  

  # Returns information about messages.
  # If a message is not found, returns null on the corresponding position of the result.
  #
  # chat_id [::Int32] Identifier of the chat the messages belong to.
  # message_ids [::Array(::Int32)] Identifiers of the messages to get.
  def get_messages(chat_id : ::Int32, message_ids : ::Array(::Int32)) # : Proton::Types::Messages
    broadcast({"@type"       => "getMessages",
              "chat_id"     => chat_id,
              "message_ids" => message_ids})
  end  

  # Returns network data usage statistics.
  # Can be called before authorization.
  #
  # only_current [::Bool] If true, returns only data for the current library launch.
  def get_network_statistics(only_current : ::Bool) # : Proton::Types::NetworkStatistics
    broadcast({"@type"        => "getNetworkStatistics",
              "only_current" => only_current})
  end  

  # Returns the value of an option by its name.
  # (Check the list of available options on https://core.telegram.org/tdlib/options.) Can be called before
  #   authorization.
  #
  # name [::String] The name of the option.
  def get_option(name : ::String) # : Proton::Types::OptionValue
    broadcast({"@type" => "getOption",
              "name"  => name})
  end  

  # Returns a Telegram Passport authorization form for sharing data with a service.
  #
  # bot_user_id [::Int32] User identifier of the service's bot.
  # scope [::String] Telegram Passport element types requested by the service.
  # public_key [::String] Service's public_key.
  # nonce [::String] Authorization form nonce provided by the service.
  def get_passport_authorization_form(bot_user_id : ::Int32, scope : ::String, public_key : ::String, nonce : ::String) # : Proton::Types::PassportAuthorizationForm
    broadcast({"@type"       => "getPassportAuthorizationForm",
              "bot_user_id" => bot_user_id,
              "scope"       => scope,
              "public_key"  => public_key,
              "nonce"       => nonce})
  end  

  # Returns already available Telegram Passport elements suitable for completing a Telegram Passport authorization
  #   form.
  # Result can be received only once for each authorization form.
  #
  # autorization_form_id [::Int32] Authorization form identifier.
  # password [::String] Password of the current user.
  def get_passport_authorization_form_available_elements(autorization_form_id : ::Int32, password : ::String) # : Proton::Types::PassportElementsWithErrors
    broadcast({"@type"                => "getPassportAuthorizationFormAvailableElements",
              "autorization_form_id" => autorization_form_id,
              "password"             => password})
  end  

  # Returns one of the available Telegram Passport elements.
  #
  # type [Proton::Types::PassportElementType] Telegram Passport element type.
  # password [::String] Password of the current user.
  def get_passport_element(type : Proton::Types::PassportElementType, password : ::String) # : Proton::Types::PassportElement
    broadcast({"@type"    => "getPassportElement",
              "type"     => type,
              "password" => password})
  end  

  # Returns the current state of 2-step verification.
  #
  def get_password_state # : Proton::Types::PasswordState
    broadcast({"@type" => "getPasswordState"})
  end  

  # Returns an invoice payment form.
  # This method should be called when the user presses inlineKeyboardButtonBuy.
  #
  # chat_id [::Int32] Chat identifier of the Invoice message.
  # message_id [::Int32] Message identifier.
  def get_payment_form(chat_id : ::Int32, message_id : ::Int32) # : Proton::Types::PaymentForm
    broadcast({"@type"      => "getPaymentForm",
              "chat_id"    => chat_id,
              "message_id" => message_id})
  end  

  # Returns information about a successful payment.
  #
  # chat_id [::Int32] Chat identifier of the PaymentSuccessful message.
  # message_id [::Int32] Message identifier.
  def get_payment_receipt(chat_id : ::Int32, message_id : ::Int32) # : Proton::Types::PaymentReceipt
    broadcast({"@type"      => "getPaymentReceipt",
              "chat_id"    => chat_id,
              "message_id" => message_id})
  end  

  # Returns an IETF language tag of the language preferred in the country, which should be used to fill native fields
  #   in Telegram Passport personal details.
  # Returns a 404 error if unknown.
  #
  # country_code [::String] A two-letter ISO 3166-1 alpha-2 country code.
  def get_preferred_country_language(country_code : ::String) # : Proton::Types::Text
    broadcast({"@type"        => "getPreferredCountryLanguage",
              "country_code" => country_code})
  end  

  # Returns list of proxies that are currently set up.
  # Can be called before authorization.
  #
  def get_proxies # : Proton::Types::Proxies
    broadcast({"@type" => "getProxies"})
  end  

  # Returns an HTTPS link, which can be used to add a proxy.
  # Available only for SOCKS5 and MTProto proxies.
  # Can be called before authorization.
  #
  # proxy_id [::Int32] Proxy identifier.
  def get_proxy_link(proxy_id : ::Int32) # : Proton::Types::Text
    broadcast({"@type"    => "getProxyLink",
              "proxy_id" => proxy_id})
  end  

  # Returns a public HTTPS link to a message.
  # Available only for messages in supergroups and channels with username.
  #
  # chat_id [::Int32] Identifier of the chat to which the message belongs.
  # message_id [::Int32] Identifier of the message.
  # for_album [::Bool] Pass true if a link for a whole media album should be returned.
  def get_public_message_link(chat_id : ::Int32, message_id : ::Int32, for_album : ::Bool) # : Proton::Types::PublicMessageLink
    broadcast({"@type"      => "getPublicMessageLink",
              "chat_id"    => chat_id,
              "message_id" => message_id,
              "for_album"  => for_album})
  end  

  # Returns a globally unique push notification subscription identifier for identification of an account, which has
  #   received a push notification.
  # This is an offline method.
  # Can be called before authorization.
  # Can be called synchronously.
  #
  # payload [::String] JSON-encoded push notification payload.
  def get_push_receiver_id(payload : ::String) # : Proton::Types::PushReceiverId
    broadcast({"@type"   => "getPushReceiverId",
              "payload" => payload})
  end  

  # Returns up to 20 recently used inline bots in the order of their last usage.
  #
  def get_recent_inline_bots # : Proton::Types::Users
    broadcast({"@type" => "getRecentInlineBots"})
  end  

  # Returns a list of recently used stickers.
  #
  # is_attached [::Bool] Pass true to return stickers and masks that were recently attached to photos or video files;
  #   pass false to return recently sent stickers.
  def get_recent_stickers(is_attached : ::Bool) # : Proton::Types::Stickers
    broadcast({"@type"       => "getRecentStickers",
              "is_attached" => is_attached})
  end  

  # Returns t.me URLs recently visited by a newly registered user.
  #
  # referrer [::String] Google Play referrer to identify the user.
  def get_recently_visited_t_me_urls(referrer : ::String) # : Proton::Types::TMeUrls
    broadcast({"@type"    => "getRecentlyVisitedTMeUrls",
              "referrer" => referrer})
  end  

  # Returns a 2-step verification recovery email address that was previously set up.
  # This method can be used to verify a password provided by the user.
  #
  # password [::String] The password for the current user.
  def get_recovery_email_address(password : ::String) # : Proton::Types::RecoveryEmailAddress
    broadcast({"@type"    => "getRecoveryEmailAddress",
              "password" => password})
  end  

  # Returns information about a file by its remote ID; this is an offline request.
  # Can be used to register a URL as a file for further uploading, or sending as a message.
  #
  # remote_file_id [::String] Remote identifier of the file to get.
  # file_type [Proton::Types::FileType] File type, if known.
  def get_remote_file(remote_file_id : ::String, file_type : Proton::Types::FileType) # : Proton::Types::File
    broadcast({"@type"          => "getRemoteFile",
              "remote_file_id" => remote_file_id,
              "file_type"      => file_type})
  end  

  # Returns information about a message that is replied by given message.
  #
  # chat_id [::Int32] Identifier of the chat the message belongs to.
  # message_id [::Int32] Identifier of the message reply to which get.
  def get_replied_message(chat_id : ::Int32, message_id : ::Int32) # : Proton::Types::Message
    broadcast({"@type"      => "getRepliedMessage",
              "chat_id"    => chat_id,
              "message_id" => message_id})
  end  

  # Returns saved animations.
  #
  def get_saved_animations # : Proton::Types::Animations
    broadcast({"@type" => "getSavedAnimations"})
  end  

  # Returns saved order info, if any.
  #
  def get_saved_order_info # : Proton::Types::OrderInfo
    broadcast({"@type" => "getSavedOrderInfo"})
  end  

  # Returns the notification settings for chats of a given type.
  #
  # scope [Proton::Types::NotificationSettingsScope] Types of chats for which to return the notification settings
  #   information.
  def get_scope_notification_settings(scope : Proton::Types::NotificationSettingsScope) # : Proton::Types::ScopeNotificationSettings
    broadcast({"@type" => "getScopeNotificationSettings",
              "scope" => scope})
  end  

  # Returns information about a secret chat by its identifier.
  # This is an offline request.
  #
  # secret_chat_id [::Int32] Secret chat identifier.
  def get_secret_chat(secret_chat_id : ::Int32) # : Proton::Types::SecretChat
    broadcast({"@type"          => "getSecretChat",
              "secret_chat_id" => secret_chat_id})
  end  

  # Returns emoji corresponding to a sticker.
  # The list is only for informational purposes, because a sticker is always sent with a fixed emoji from the
  #   corresponding Sticker object.
  #
  # sticker [Proton::Types::InputFile] Sticker file identifier.
  def get_sticker_emojis(sticker : Proton::Types::InputFile) # : Proton::Types::Emojis
    broadcast({"@type"   => "getStickerEmojis",
              "sticker" => sticker})
  end  

  # Returns information about a sticker set by its identifier.
  #
  # set_id [::String] Identifier of the sticker set.
  def get_sticker_set(set_id : ::String) # : Proton::Types::StickerSet
    broadcast({"@type"  => "getStickerSet",
              "set_id" => set_id})
  end  

  # Returns stickers from the installed sticker sets that correspond to a given emoji.
  # If the emoji is not empty, favorite and recently used stickers may also be returned.
  #
  # emoji [::String] String representation of emoji.
  #   If empty, returns all known installed stickers.
  # limit [::Int32] Maximum number of stickers to be returned.
  def get_stickers(emoji : ::String, limit : ::Int32) # : Proton::Types::Stickers
    broadcast({"@type" => "getStickers",
              "emoji" => emoji,
              "limit" => limit})
  end  

  # Returns storage usage statistics.
  # Can be called before authorization.
  #
  # chat_limit [::Int32] Maximum number of chats with the largest storage usage for which separate statistics should be
  #   returned.
  #   All other chats will be grouped in entries with chat_id == 0.
  #   If the chat info database is not used, the chat_limit is ignored and is always set to 0.
  def get_storage_statistics(chat_limit : ::Int32) # : Proton::Types::StorageStatistics
    broadcast({"@type"      => "getStorageStatistics",
              "chat_limit" => chat_limit})
  end  

  # Quickly returns approximate storage usage statistics.
  # Can be called before authorization.
  #
  def get_storage_statistics_fast # : Proton::Types::StorageStatisticsFast
    broadcast({"@type" => "getStorageStatisticsFast"})
  end  

  # Returns information about a supergroup or channel by its identifier.
  # This is an offline request if the current user is not a bot.
  #
  # supergroup_id [::Int32] Supergroup or channel identifier.
  def get_supergroup(supergroup_id : ::Int32) # : Proton::Types::Supergroup
    broadcast({"@type"         => "getSupergroup",
              "supergroup_id" => supergroup_id})
  end  

  # Returns full information about a supergroup or channel by its identifier, cached for up to 1 minute.
  #
  # supergroup_id [::Int32] Supergroup or channel identifier.
  def get_supergroup_full_info(supergroup_id : ::Int32) # : Proton::Types::SupergroupFullInfo
    broadcast({"@type"         => "getSupergroupFullInfo",
              "supergroup_id" => supergroup_id})
  end  

  # Returns information about members or banned users in a supergroup or channel.
  # Can be used only if SupergroupFullInfo.can_get_members == true; additionally, administrator privileges may be
  #   required for some filters.
  #
  # supergroup_id [::Int32] Identifier of the supergroup or channel.
  # filter [Proton::Types::SupergroupMembersFilter] The type of users to return.
  #   By default, supergroupMembersRecent.
  # offset [::Int32] Number of users to skip.
  # limit [::Int32] The maximum number of users be returned; up to 200.
  def get_supergroup_members(supergroup_id : ::Int32, filter : Proton::Types::SupergroupMembersFilter, offset : ::Int32, limit : ::Int32) # : Proton::Types::ChatMembers
    broadcast({"@type"         => "getSupergroupMembers",
              "supergroup_id" => supergroup_id,
              "filter"        => filter,
              "offset"        => offset,
              "limit"         => limit})
  end  

  # Returns a user that can be contacted to get support.
  #
  def get_support_user # : Proton::Types::User
    broadcast({"@type" => "getSupportUser"})
  end  

  # Returns information about the current temporary password.
  #
  def get_temporary_password_state # : Proton::Types::TemporaryPasswordState
    broadcast({"@type" => "getTemporaryPasswordState"})
  end  

  # Returns all entities (mentions, hashtags, cashtags, bot commands, URLs, and email addresses) contained in the text.
  # This is an offline method.
  # Can be called before authorization.
  # Can be called synchronously.
  #
  # text [::String] The text in which to look for entites.
  def get_text_entities(text : ::String) # : Proton::Types::TextEntities
    broadcast({"@type" => "getTextEntities",
              "text"  => text})
  end  

  # Returns a list of frequently used chats.
  # Supported only if the chat info database is enabled.
  #
  # category [Proton::Types::TopChatCategory] Category of chats to be returned.
  # limit [::Int32] Maximum number of chats to be returned; up to 30.
  def get_top_chats(category : Proton::Types::TopChatCategory, limit : ::Int32) # : Proton::Types::Chats
    broadcast({"@type"    => "getTopChats",
              "category" => category,
              "limit"    => limit})
  end  

  # Returns a list of trending sticker sets.
  #
  def get_trending_sticker_sets # : Proton::Types::StickerSets
    broadcast({"@type" => "getTrendingStickerSets"})
  end  

  # Returns information about a user by their identifier.
  # This is an offline request if the current user is not a bot.
  #
  # user_id [::Int32] User identifier.
  def get_user(user_id : ::Int32) # : Proton::Types::User
    broadcast({"@type"   => "getUser",
              "user_id" => user_id})
  end  

  # Returns full information about a user by their identifier.
  #
  # user_id [::Int32] User identifier.
  def get_user_full_info(user_id : ::Int32) # : Proton::Types::UserFullInfo
    broadcast({"@type"   => "getUserFullInfo",
              "user_id" => user_id})
  end  

  # Returns the current privacy settings.
  #
  # setting [Proton::Types::UserPrivacySetting] The privacy setting.
  def get_user_privacy_setting_rules(setting : Proton::Types::UserPrivacySetting) # : Proton::Types::UserPrivacySettingRules
    broadcast({"@type"   => "getUserPrivacySettingRules",
              "setting" => setting})
  end  

  # Returns the profile photos of a user.
  # The result of this query may be outdated: some photos might have been deleted already.
  #
  # user_id [::Int32] User identifier.
  # offset [::Int32] The number of photos to skip; must be non-negative.
  # limit [::Int32] Maximum number of photos to be returned; up to 100.
  def get_user_profile_photos(user_id : ::Int32, offset : ::Int32, limit : ::Int32) # : Proton::Types::UserProfilePhotos
    broadcast({"@type"   => "getUserProfilePhotos",
              "user_id" => user_id,
              "offset"  => offset,
              "limit"   => limit})
  end  

  # Returns an instant view version of a web page if available.
  # Returns a 404 error if the web page has no instant view page.
  #
  # url [::String] The web page URL.
  # force_full [::Bool] If true, the full instant view for the web page will be returned.
  def get_web_page_instant_view(url : ::String, force_full : ::Bool) # : Proton::Types::WebPageInstantView
    broadcast({"@type"      => "getWebPageInstantView",
              "url"        => url,
              "force_full" => force_full})
  end  

  # Returns a web page preview by the text of the message.
  # Do not call this function too often.
  # Returns a 404 error if the web page has no preview.
  #
  # text [Proton::Types::FormattedText] Message text with formatting.
  def get_web_page_preview(text : Proton::Types::FormattedText) # : Proton::Types::WebPage
    broadcast({"@type" => "getWebPagePreview",
              "text"  => text})
  end  

  # Adds new contacts or edits existing contacts; contacts' user identifiers are ignored.
  #
  # contacts [::Array(Proton::Types::Contact)] The list of contacts to import or edit, contact's vCard are ignored and
  #   are not imported.
  def import_contacts(contacts : ::Array(Proton::Types::Contact)) # : Proton::Types::ImportedContacts
    broadcast({"@type"    => "importContacts",
              "contacts" => contacts})
  end  

  # Adds current user as a new member to a chat.
  # Private and secret chats can't be joined using this method.
  #
  # chat_id [::Int32] Chat identifier.
  def join_chat(chat_id : ::Int32) # : Proton::Types::Ok
    broadcast({"@type"   => "joinChat",
              "chat_id" => chat_id})
  end  

  # Uses an invite link to add the current user to the chat if possible.
  # The new member will not be added until the chat state has been synchronized with the server.
  #
  # invite_link [::String] Invite link to import; should begin with "https://t.me/joinchat/",
  #   "https://telegram.me/joinchat/", or "https://telegram.dog/joinchat/".
  def join_chat_by_invite_link(invite_link : ::String) # : Proton::Types::Chat
    broadcast({"@type"       => "joinChatByInviteLink",
              "invite_link" => invite_link})
  end  

  # Removes current user from chat members.
  # Private and secret chats can't be left using this method.
  #
  # chat_id [::Int32] Chat identifier.
  def leave_chat(chat_id : ::Int32) # : Proton::Types::Ok
    broadcast({"@type"   => "leaveChat",
              "chat_id" => chat_id})
  end  

  # Closes the TDLib instance after a proper logout.
  # Requires an available network connection.
  # All local data will be destroyed.
  # After the logout completes, updateAuthorizationState with authorizationStateClosed will be sent.
  #
  def log_out # : Proton::Types::Ok
    broadcast({"@type" => "logOut"})
  end  

  # Informs TDLib that the chat is opened by the user.
  # Many useful activities depend on the chat being opened or closed (e.g., in supergroups and channels all updates are
  #   received only for opened chats).
  #
  # chat_id [::Int32] Chat identifier.
  def open_chat(chat_id : ::Int32) # : Proton::Types::Ok
    broadcast({"@type"   => "openChat",
              "chat_id" => chat_id})
  end  

  # Informs TDLib that the message content has been opened (e.g., the user has opened a photo, video, document,
  #   location or venue, or has listened to an audio file or voice note message).
  # An updateMessageContentOpened update will be generated if something has changed.
  #
  # chat_id [::Int32] Chat identifier of the message.
  # message_id [::Int32] Identifier of the message with the opened content.
  def open_message_content(chat_id : ::Int32, message_id : ::Int32) # : Proton::Types::Ok
    broadcast({"@type"      => "openMessageContent",
              "chat_id"    => chat_id,
              "message_id" => message_id})
  end  

  # Optimizes storage usage, i.e.
  # deletes some files and returns new storage usage statistics.
  # Secret thumbnails can't be deleted.
  #
  # size [::Int32] Limit on the total size of files after deletion.
  #   Pass -1 to use the default limit.
  # ttl [::Int32] Limit on the time that has passed since the last time a file was accessed (or creation time for some
  #   filesystems).
  #   Pass -1 to use the default limit.
  # count [::Int32] Limit on the total count of files after deletion.
  #   Pass -1 to use the default limit.
  # immunity_delay [::Int32] The amount of time after the creation of a file during which it can't be deleted, in
  #   seconds.
  #   Pass -1 to use the default value.
  # file_types [::Array(Proton::Types::FileType)] If not empty, only files with the given type(s) are considered.
  #   By default, all types except thumbnails, profile photos, stickers and wallpapers are deleted.
  # chat_ids [::Array(::Int32)] If not empty, only files from the given chats are considered.
  #   Use 0 as chat identifier to delete files not belonging to any chat (e.g., profile photos).
  # exclude_chat_ids [::Array(::Int32)] If not empty, files from the given chats are excluded.
  #   Use 0 as chat identifier to exclude all files not belonging to any chat (e.g., profile photos).
  # chat_limit [::Int32] Same as in getStorageStatistics.
  #   Affects only returned statistics.
  def optimize_storage(size : ::Int32, ttl : ::Int32, count : ::Int32, immunity_delay : ::Int32, file_types : ::Array(Proton::Types::FileType), chat_ids : ::Array(::Int32), exclude_chat_ids : ::Array(::Int32), chat_limit : ::Int32) # : Proton::Types::StorageStatistics
    broadcast({"@type"            => "optimizeStorage",
              "size"             => size,
              "ttl"              => ttl,
              "count"            => count,
              "immunity_delay"   => immunity_delay,
              "file_types"       => file_types,
              "chat_ids"         => chat_ids,
              "exclude_chat_ids" => exclude_chat_ids,
              "chat_limit"       => chat_limit})
  end  

  # Parses Bold, Italic, Code, Pre, PreCode and TextUrl entities contained in the text.
  # This is an offline method.
  # Can be called before authorization.
  # Can be called synchronously.
  #
  # text [::String] The text which should be parsed.
  # parse_mode [Proton::Types::TextParseMode] Text parse mode.
  def parse_text_entities(text : ::String, parse_mode : Proton::Types::TextParseMode) # : Proton::Types::FormattedText
    broadcast({"@type"      => "parseTextEntities",
              "text"       => text,
              "parse_mode" => parse_mode})
  end  

  # Pins a message in a chat; requires can_pin_messages rights.
  #
  # chat_id [::Int32] Identifier of the chat.
  # message_id [::Int32] Identifier of the new pinned message.
  # disable_notification [::Bool] True, if there should be no notification about the pinned message.
  def pin_chat_message(chat_id : ::Int32, message_id : ::Int32, disable_notification : ::Bool) # : Proton::Types::Ok
    broadcast({"@type"                => "pinChatMessage",
              "chat_id"              => chat_id,
              "message_id"           => message_id,
              "disable_notification" => disable_notification})
  end  

  # Computes time needed to receive a response from a Telegram server through a proxy.
  # Can be called before authorization.
  #
  # proxy_id [::Int32] Proxy identifier.
  #   Use 0 to ping a Telegram server without a proxy.
  def ping_proxy(proxy_id : ::Int32) # : Proton::Types::Seconds
    broadcast({"@type"    => "pingProxy",
              "proxy_id" => proxy_id})
  end  

  # Handles a push notification.
  # Returns error with code 406 if the push notification is not supported and connection to the server is required to
  #   fetch new data.
  # Can be called before authorization.
  #
  # payload [::String] JSON-encoded push notification payload with all fields sent by the server, and
  #   "google.sent_time" and "google.notification.sound" fields added.
  def process_push_notification(payload : ::String) # : Proton::Types::Ok
    broadcast({"@type"   => "processPushNotification",
              "payload" => payload})
  end  

  # Marks all mentions in a chat as read.
  #
  # chat_id [::Int32] Chat identifier.
  def read_all_chat_mentions(chat_id : ::Int32) # : Proton::Types::Ok
    broadcast({"@type"   => "readAllChatMentions",
              "chat_id" => chat_id})
  end  

  # Reads a part of a file from the TDLib file cache and returns read bytes.
  # This method is intended to be used only if the client has no direct access to TDLib's file system, because it is
  #   usually slower than a direct read from the file.
  #
  # file_id [::Int32] Identifier of the file.
  #   The file must be located in the TDLib file cache.
  # offset [::Int32] The offset from which to read the file.
  # count [::Int32] Number of bytes to read.
  #   An error will be returned if there are not enough bytes available in the file from the specified position.
  #   Pass 0 to read all available data from the specified position.
  def read_file_part(file_id : ::Int32, offset : ::Int32, count : ::Int32) # : Proton::Types::FilePart
    broadcast({"@type"   => "readFilePart",
              "file_id" => file_id,
              "offset"  => offset,
              "count"   => count})
  end  

  # Recovers the password with a password recovery code sent to an email address that was previously set up.
  # Works only when the current authorization state is authorizationStateWaitPassword.
  #
  # recovery_code [::String] Recovery code to check.
  def recover_authentication_password(recovery_code : ::String) # : Proton::Types::Ok
    broadcast({"@type"         => "recoverAuthenticationPassword",
              "recovery_code" => recovery_code})
  end  

  # Recovers the password using a recovery code sent to an email address that was previously set up.
  #
  # recovery_code [::String] Recovery code to check.
  def recover_password(recovery_code : ::String) # : Proton::Types::PasswordState
    broadcast({"@type"         => "recoverPassword",
              "recovery_code" => recovery_code})
  end  

  # Registers the currently used device for receiving push notifications.
  # Returns a globally unique identifier of the push notification subscription.
  #
  # device_token [Proton::Types::DeviceToken] Device token.
  # other_user_ids [::Array(::Int32)] List of user identifiers of other users currently using the client.
  def register_device(device_token : Proton::Types::DeviceToken, other_user_ids : ::Array(::Int32)) # : Proton::Types::PushReceiverId
    broadcast({"@type"          => "registerDevice",
              "device_token"   => device_token,
              "other_user_ids" => other_user_ids})
  end  

  # Finishes user registration.
  # Works only when the current authorization state is authorizationStateWaitRegistration.
  #
  # first_name [::String] The first name of the user; 1-64 characters.
  # last_name [::String] The last name of the user; 0-64 characters.
  def register_user(first_name : ::String, last_name : ::String) # : Proton::Types::Ok
    broadcast({"@type"      => "registerUser",
              "first_name" => first_name,
              "last_name"  => last_name})
  end  

  # Removes background from the list of installed backgrounds.
  #
  # background_id [::String] The background indentifier.
  def remove_background(background_id : ::String) # : Proton::Types::Ok
    broadcast({"@type"         => "removeBackground",
              "background_id" => background_id})
  end  

  # Removes users from the contact list.
  #
  # user_ids [::Array(::Int32)] Identifiers of users to be deleted.
  def remove_contacts(user_ids : ::Array(::Int32)) # : Proton::Types::Ok
    broadcast({"@type"    => "removeContacts",
              "user_ids" => user_ids})
  end  

  # Removes a sticker from the list of favorite stickers.
  #
  # sticker [Proton::Types::InputFile] Sticker file to delete from the list.
  def remove_favorite_sticker(sticker : Proton::Types::InputFile) # : Proton::Types::Ok
    broadcast({"@type"   => "removeFavoriteSticker",
              "sticker" => sticker})
  end  

  # Removes an active notification from notification list.
  # Needs to be called only if the notification is removed by the current user.
  #
  # notification_group_id [::Int32] Identifier of notification group to which the notification belongs.
  # notification_id [::Int32] Identifier of removed notification.
  def remove_notification(notification_group_id : ::Int32, notification_id : ::Int32) # : Proton::Types::Ok
    broadcast({"@type"                 => "removeNotification",
              "notification_group_id" => notification_group_id,
              "notification_id"       => notification_id})
  end  

  # Removes a group of active notifications.
  # Needs to be called only if the notification group is removed by the current user.
  #
  # notification_group_id [::Int32] Notification group identifier.
  # max_notification_id [::Int32] Maximum identifier of removed notifications.
  def remove_notification_group(notification_group_id : ::Int32, max_notification_id : ::Int32) # : Proton::Types::Ok
    broadcast({"@type"                 => "removeNotificationGroup",
              "notification_group_id" => notification_group_id,
              "max_notification_id"   => max_notification_id})
  end  

  # Removes a proxy server.
  # Can be called before authorization.
  #
  # proxy_id [::Int32] Proxy identifier.
  def remove_proxy(proxy_id : ::Int32) # : Proton::Types::Ok
    broadcast({"@type"    => "removeProxy",
              "proxy_id" => proxy_id})
  end  

  # Removes a hashtag from the list of recently used hashtags.
  #
  # hashtag [::String] Hashtag to delete.
  def remove_recent_hashtag(hashtag : ::String) # : Proton::Types::Ok
    broadcast({"@type"   => "removeRecentHashtag",
              "hashtag" => hashtag})
  end  

  # Removes a sticker from the list of recently used stickers.
  #
  # is_attached [::Bool] Pass true to remove the sticker from the list of stickers recently attached to photo or video
  #   files; pass false to remove the sticker from the list of recently sent stickers.
  # sticker [Proton::Types::InputFile] Sticker file to delete.
  def remove_recent_sticker(is_attached : ::Bool, sticker : Proton::Types::InputFile) # : Proton::Types::Ok
    broadcast({"@type"       => "removeRecentSticker",
              "is_attached" => is_attached,
              "sticker"     => sticker})
  end  

  # Removes a chat from the list of recently found chats.
  #
  # chat_id [::Int32] Identifier of the chat to be removed.
  def remove_recently_found_chat(chat_id : ::Int32) # : Proton::Types::Ok
    broadcast({"@type"   => "removeRecentlyFoundChat",
              "chat_id" => chat_id})
  end  

  # Removes an animation from the list of saved animations.
  #
  # animation [Proton::Types::InputFile] Animation file to be removed.
  def remove_saved_animation(animation : Proton::Types::InputFile) # : Proton::Types::Ok
    broadcast({"@type"     => "removeSavedAnimation",
              "animation" => animation})
  end  

  # Removes a sticker from the set to which it belongs; for bots only.
  # The sticker set must have been created by the bot.
  #
  # sticker [Proton::Types::InputFile] Sticker.
  def remove_sticker_from_set(sticker : Proton::Types::InputFile) # : Proton::Types::Ok
    broadcast({"@type"   => "removeStickerFromSet",
              "sticker" => sticker})
  end  

  # Removes a chat from the list of frequently used chats.
  # Supported only if the chat info database is enabled.
  #
  # category [Proton::Types::TopChatCategory] Category of frequently used chats.
  # chat_id [::Int32] Chat identifier.
  def remove_top_chat(category : Proton::Types::TopChatCategory, chat_id : ::Int32) # : Proton::Types::Ok
    broadcast({"@type"    => "removeTopChat",
              "category" => category,
              "chat_id"  => chat_id})
  end  

  # Changes the order of installed sticker sets.
  #
  # is_masks [::Bool] Pass true to change the order of mask sticker sets; pass false to change the order of ordinary
  #   sticker sets.
  # sticker_set_ids [::Array(::String)] Identifiers of installed sticker sets in the new correct order.
  def reorder_installed_sticker_sets(is_masks : ::Bool, sticker_set_ids : ::Array(::String)) # : Proton::Types::Ok
    broadcast({"@type"           => "reorderInstalledStickerSets",
              "is_masks"        => is_masks,
              "sticker_set_ids" => sticker_set_ids})
  end  

  # Reports a chat to the Telegram moderators.
  # Supported only for supergroups, channels, or private chats with bots, since other chats can't be checked by
  #   moderators.
  #
  # chat_id [::Int32] Chat identifier.
  # reason [Proton::Types::ChatReportReason] The reason for reporting the chat.
  # message_ids [::Array(::Int32)] Identifiers of reported messages, if any.
  def report_chat(chat_id : ::Int32, reason : Proton::Types::ChatReportReason, message_ids : ::Array(::Int32)) # : Proton::Types::Ok
    broadcast({"@type"       => "reportChat",
              "chat_id"     => chat_id,
              "reason"      => reason,
              "message_ids" => message_ids})
  end  

  # Reports some messages from a user in a supergroup as spam; requires administrator rights in the supergroup.
  #
  # supergroup_id [::Int32] Supergroup identifier.
  # user_id [::Int32] User identifier.
  # message_ids [::Array(::Int32)] Identifiers of messages sent in the supergroup by the user.
  #   This list must be non-empty.
  def report_supergroup_spam(supergroup_id : ::Int32, user_id : ::Int32, message_ids : ::Array(::Int32)) # : Proton::Types::Ok
    broadcast({"@type"         => "reportSupergroupSpam",
              "supergroup_id" => supergroup_id,
              "user_id"       => user_id,
              "message_ids"   => message_ids})
  end  

  # Requests to send a password recovery code to an email address that was previously set up.
  # Works only when the current authorization state is authorizationStateWaitPassword.
  #
  def request_authentication_password_recovery # : Proton::Types::Ok
    broadcast({"@type" => "requestAuthenticationPasswordRecovery"})
  end  

  # Requests to send a password recovery code to an email address that was previously set up.
  #
  def request_password_recovery # : Proton::Types::EmailAddressAuthenticationCodeInfo
    broadcast({"@type" => "requestPasswordRecovery"})
  end  

  # Re-sends an authentication code to the user.
  # Works only when the current authorization state is authorizationStateWaitCode and the next_code_type of the result
  #   is not null.
  #
  def resend_authentication_code # : Proton::Types::Ok
    broadcast({"@type" => "resendAuthenticationCode"})
  end  

  # Re-sends the authentication code sent to confirm a new phone number for the user.
  # Works only if the previously received authenticationCodeInfo next_code_type was not null.
  #
  def resend_change_phone_number_code # : Proton::Types::AuthenticationCodeInfo
    broadcast({"@type" => "resendChangePhoneNumberCode"})
  end  

  # Re-sends the code to verify an email address to be added to a user's Telegram Passport.
  #
  def resend_email_address_verification_code # : Proton::Types::EmailAddressAuthenticationCodeInfo
    broadcast({"@type" => "resendEmailAddressVerificationCode"})
  end  

  # Resends messages which failed to send.
  # Can be called only for messages for which messageSendingStateFailed.can_retry is true and after specified in
  #   messageSendingStateFailed.retry_after time passed.
  # If a message is re-sent, the corresponding failed to send message is deleted.
  # Returns the sent messages in the same order as the message identifiers passed in message_ids.
  # If a message can't be re-sent, null will be returned instead of the message.
  #
  # chat_id [::Int32] Identifier of the chat to send messages.
  # message_ids [::Array(::Int32)] Identifiers of the messages to resend.
  #   Message identifiers must be in a strictly increasing order.
  def resend_messages(chat_id : ::Int32, message_ids : ::Array(::Int32)) # : Proton::Types::Messages
    broadcast({"@type"       => "resendMessages",
              "chat_id"     => chat_id,
              "message_ids" => message_ids})
  end  

  # Resends phone number confirmation code.
  #
  def resend_phone_number_confirmation_code # : Proton::Types::AuthenticationCodeInfo
    broadcast({"@type" => "resendPhoneNumberConfirmationCode"})
  end  

  # Re-sends the code to verify a phone number to be added to a user's Telegram Passport.
  #
  def resend_phone_number_verification_code # : Proton::Types::AuthenticationCodeInfo
    broadcast({"@type" => "resendPhoneNumberVerificationCode"})
  end  

  # Resends the 2-step verification recovery email address verification code.
  #
  def resend_recovery_email_address_code # : Proton::Types::PasswordState
    broadcast({"@type" => "resendRecoveryEmailAddressCode"})
  end  

  # Resets all notification settings to their default values.
  # By default, all chats are unmuted, the sound is set to "default" and message previews are shown.
  #
  def reset_all_notification_settings # : Proton::Types::Ok
    broadcast({"@type" => "resetAllNotificationSettings"})
  end  

  # Resets list of installed backgrounds to its default value.
  #
  def reset_backgrounds # : Proton::Types::Ok
    broadcast({"@type" => "resetBackgrounds"})
  end  

  # Resets all network data usage statistics to zero.
  # Can be called before authorization.
  #
  def reset_network_statistics # : Proton::Types::Ok
    broadcast({"@type" => "resetNetworkStatistics"})
  end  

  # Saves application log event on the server.
  # Can be called before authorization.
  #
  # type [::String] Event type.
  # chat_id [::Int32] Optional chat identifier, associated with the event.
  # data [Proton::Types::JsonValue] The log event data.
  def save_application_log_event(type : ::String, chat_id : ::Int32, data : Proton::Types::JsonValue) # : Proton::Types::Ok
    broadcast({"@type"   => "saveApplicationLogEvent",
              "type"    => type,
              "chat_id" => chat_id,
              "data"    => data})
  end  

  # Searches for a background by its name.
  #
  # name [::String] The name of the background.
  def search_background(name : ::String) # : Proton::Types::Background
    broadcast({"@type" => "searchBackground",
              "name"  => name})
  end  

  # Searches for call messages.
  # Returns the results in reverse chronological order (i.
  # e., in order of decreasing message_id).
  # For optimal performance the number of returned messages is chosen by the library.
  #
  # from_message_id [::Int32] Identifier of the message from which to search; use 0 to get results from the last
  #   message.
  # limit [::Int32] The maximum number of messages to be returned; up to 100.
  #   Fewer messages may be returned than specified by the limit, even if the end of the message history has not been
  #   reached.
  # only_missed [::Bool] If true, returns only messages with missed calls.
  def search_call_messages(from_message_id : ::Int32, limit : ::Int32, only_missed : ::Bool) # : Proton::Types::Messages
    broadcast({"@type"           => "searchCallMessages",
              "from_message_id" => from_message_id,
              "limit"           => limit,
              "only_missed"     => only_missed})
  end  

  # Searches for a specified query in the first name, last name and username of the members of a specified chat.
  # Requires administrator rights in channels.
  #
  # chat_id [::Int32] Chat identifier.
  # query [::String] Query to search for.
  # limit [::Int32] The maximum number of users to be returned.
  # filter [Proton::Types::ChatMembersFilter] The type of users to return.
  #   By default, chatMembersFilterMembers.
  def search_chat_members(chat_id : ::Int32, query : ::String, limit : ::Int32, filter : Proton::Types::ChatMembersFilter) # : Proton::Types::ChatMembers
    broadcast({"@type"   => "searchChatMembers",
              "chat_id" => chat_id,
              "query"   => query,
              "limit"   => limit,
              "filter"  => filter})
  end  

  # Searches for messages with given words in the chat.
  # Returns the results in reverse chronological order, i.e.
  # in order of decreasing message_id.
  # Cannot be used in secret chats with a non-empty query (searchSecretMessages should be used instead), or without an
  #   enabled message database.
  # For optimal performance the number of returned messages is chosen by the library.
  #
  # chat_id [::Int32] Identifier of the chat in which to search messages.
  # query [::String] Query to search for.
  # sender_user_id [::Int32] If not 0, only messages sent by the specified user will be returned.
  #   Not supported in secret chats.
  # from_message_id [::Int32] Identifier of the message starting from which history must be fetched; use 0 to get
  #   results from the last message.
  # offset [::Int32] Specify 0 to get results from exactly the from_message_id or a negative offset to get the
  #   specified message and some newer messages.
  # limit [::Int32] The maximum number of messages to be returned; must be positive and can't be greater than 100.
  #   If the offset is negative, the limit must be greater than -offset.
  #   Fewer messages may be returned than specified by the limit, even if the end of the message history has not been
  #   reached.
  # filter [Proton::Types::SearchMessagesFilter] Filter for message content in the search results.
  def search_chat_messages(chat_id : ::Int32, query : ::String, sender_user_id : ::Int32, from_message_id : ::Int32, offset : ::Int32, limit : ::Int32, filter : Proton::Types::SearchMessagesFilter) # : Proton::Types::Messages
    broadcast({"@type"           => "searchChatMessages",
              "chat_id"         => chat_id,
              "query"           => query,
              "sender_user_id"  => sender_user_id,
              "from_message_id" => from_message_id,
              "offset"          => offset,
              "limit"           => limit,
              "filter"          => filter})
  end  

  # Returns information about the recent locations of chat members that were sent to the chat.
  # Returns up to 1 location message per user.
  #
  # chat_id [::Int32] Chat identifier.
  # limit [::Int32] Maximum number of messages to be returned.
  def search_chat_recent_location_messages(chat_id : ::Int32, limit : ::Int32) # : Proton::Types::Messages
    broadcast({"@type"   => "searchChatRecentLocationMessages",
              "chat_id" => chat_id,
              "limit"   => limit})
  end  

  # Searches for the specified query in the title and username of already known chats, this is an offline request.
  # Returns chats in the order seen in the chat list.
  #
  # query [::String] Query to search for.
  #   If the query is empty, returns up to 20 recently found chats.
  # limit [::Int32] Maximum number of chats to be returned.
  def search_chats(query : ::String, limit : ::Int32) # : Proton::Types::Chats
    broadcast({"@type" => "searchChats",
              "query" => query,
              "limit" => limit})
  end  

  # Searches for the specified query in the title and username of already known chats via request to the server.
  # Returns chats in the order seen in the chat list.
  #
  # query [::String] Query to search for.
  # limit [::Int32] Maximum number of chats to be returned.
  def search_chats_on_server(query : ::String, limit : ::Int32) # : Proton::Types::Chats
    broadcast({"@type" => "searchChatsOnServer",
              "query" => query,
              "limit" => limit})
  end  

  # Searches for the specified query in the first names, last names and usernames of the known user contacts.
  #
  # query [::String, nil] Query to search for; may be empty to return all contacts.
  # limit [::Int32] Maximum number of users to be returned.
  def search_contacts(limit : ::Int32, query : ::String? = nil) # : Proton::Types::Users
    broadcast({"@type" => "searchContacts",
              "query" => query,
              "limit" => limit})
  end  

  # Searches for emojis by keywords.
  # Supported only if the file database is enabled.
  #
  # text [::String] Text to search for.
  # exact_match [::Bool] True, if only emojis, which exactly match text needs to be returned.
  def search_emojis(text : ::String, exact_match : ::Bool) # : Proton::Types::Emojis
    broadcast({"@type"       => "searchEmojis",
              "text"        => text,
              "exact_match" => exact_match})
  end  

  # Searches for recently used hashtags by their prefix.
  #
  # prefix [::String] Hashtag prefix to search for.
  # limit [::Int32] Maximum number of hashtags to be returned.
  def search_hashtags(prefix : ::String, limit : ::Int32) # : Proton::Types::Hashtags
    broadcast({"@type"  => "searchHashtags",
              "prefix" => prefix,
              "limit"  => limit})
  end  

  # Searches for installed sticker sets by looking for specified query in their title and name.
  #
  # is_masks [::Bool] Pass true to return mask sticker sets; pass false to return ordinary sticker sets.
  # query [::String] Query to search for.
  # limit [::Int32] Maximum number of sticker sets to return.
  def search_installed_sticker_sets(is_masks : ::Bool, query : ::String, limit : ::Int32) # : Proton::Types::StickerSets
    broadcast({"@type"    => "searchInstalledStickerSets",
              "is_masks" => is_masks,
              "query"    => query,
              "limit"    => limit})
  end  

  # Searches for messages in all chats except secret chats.
  # Returns the results in reverse chronological order (i.e., in order of decreasing (date, chat_id, message_id)).
  # For optimal performance the number of returned messages is chosen by the library.
  #
  # query [::String] Query to search for.
  # offset_date [::Int32] The date of the message starting from which the results should be fetched.
  #   Use 0 or any date in the future to get results from the last message.
  # offset_chat_id [::Int32] The chat identifier of the last found message, or 0 for the first request.
  # offset_message_id [::Int32] The message identifier of the last found message, or 0 for the first request.
  # limit [::Int32] The maximum number of messages to be returned, up to 100.
  #   Fewer messages may be returned than specified by the limit, even if the end of the message history has not been
  #   reached.
  def search_messages(query : ::String, offset_date : ::Int32, offset_chat_id : ::Int32, offset_message_id : ::Int32, limit : ::Int32) # : Proton::Types::Messages
    broadcast({"@type"             => "searchMessages",
              "query"             => query,
              "offset_date"       => offset_date,
              "offset_chat_id"    => offset_chat_id,
              "offset_message_id" => offset_message_id,
              "limit"             => limit})
  end  

  # Searches a public chat by its username.
  # Currently only private chats, supergroups and channels can be public.
  # Returns the chat if found; otherwise an error is returned.
  #
  # username [::String] Username to be resolved.
  def search_public_chat(username : ::String) # : Proton::Types::Chat
    broadcast({"@type"    => "searchPublicChat",
              "username" => username})
  end  

  # Searches public chats by looking for specified query in their username and title.
  # Currently only private chats, supergroups and channels can be public.
  # Returns a meaningful number of results.
  # Returns nothing if the length of the searched username prefix is less than 5.
  # Excludes private chats with contacts and chats from the chat list from the results.
  #
  # query [::String] Query to search for.
  def search_public_chats(query : ::String) # : Proton::Types::Chats
    broadcast({"@type" => "searchPublicChats",
              "query" => query})
  end  

  # Searches for messages in secret chats.
  # Returns the results in reverse chronological order.
  # For optimal performance the number of returned messages is chosen by the library.
  #
  # chat_id [::Int32] Identifier of the chat in which to search.
  #   Specify 0 to search in all secret chats.
  # query [::String] Query to search for.
  #   If empty, searchChatMessages should be used instead.
  # from_search_id [::String] The identifier from the result of a previous request, use 0 to get results from the last
  #   message.
  # limit [::Int32] Maximum number of messages to be returned; up to 100.
  #   Fewer messages may be returned than specified by the limit, even if the end of the message history has not been
  #   reached.
  # filter [Proton::Types::SearchMessagesFilter] A filter for the content of messages in the search results.
  def search_secret_messages(chat_id : ::Int32, query : ::String, from_search_id : ::String, limit : ::Int32, filter : Proton::Types::SearchMessagesFilter) # : Proton::Types::FoundMessages
    broadcast({"@type"          => "searchSecretMessages",
              "chat_id"        => chat_id,
              "query"          => query,
              "from_search_id" => from_search_id,
              "limit"          => limit,
              "filter"         => filter})
  end  

  # Searches for a sticker set by its name.
  #
  # name [::String] Name of the sticker set.
  def search_sticker_set(name : ::String) # : Proton::Types::StickerSet
    broadcast({"@type" => "searchStickerSet",
              "name"  => name})
  end  

  # Searches for ordinary sticker sets by looking for specified query in their title and name.
  # Excludes installed sticker sets from the results.
  #
  # query [::String] Query to search for.
  def search_sticker_sets(query : ::String) # : Proton::Types::StickerSets
    broadcast({"@type" => "searchStickerSets",
              "query" => query})
  end  

  # Searches for stickers from public sticker sets that correspond to a given emoji.
  #
  # emoji [::String] String representation of emoji; must be non-empty.
  # limit [::Int32] Maximum number of stickers to be returned.
  def search_stickers(emoji : ::String, limit : ::Int32) # : Proton::Types::Stickers
    broadcast({"@type" => "searchStickers",
              "emoji" => emoji,
              "limit" => limit})
  end  

  # Invites a bot to a chat (if it is not yet a member) and sends it the /start command.
  # Bots can't be invited to a private chat other than the chat with the bot.
  # Bots can't be invited to channels (although they can be added as admins) and secret chats.
  # Returns the sent message.
  #
  # bot_user_id [::Int32] Identifier of the bot.
  # chat_id [::Int32] Identifier of the target chat.
  # parameter [::String] A hidden parameter sent to the bot for deep linking purposes
  #   (https://core.telegram.org/bots#deep-linking).
  def send_bot_start_message(bot_user_id : ::Int32, chat_id : ::Int32, parameter : ::String) # : Proton::Types::Message
    broadcast({"@type"       => "sendBotStartMessage",
              "bot_user_id" => bot_user_id,
              "chat_id"     => chat_id,
              "parameter"   => parameter})
  end  

  # Sends debug information for a call.
  #
  # call_id [::Int32] Call identifier.
  # debug_information [::String] Debug information in application-specific format.
  def send_call_debug_information(call_id : ::Int32, debug_information : ::String) # : Proton::Types::Ok
    broadcast({"@type"             => "sendCallDebugInformation",
              "call_id"           => call_id,
              "debug_information" => debug_information})
  end  

  # Sends a call rating.
  #
  # call_id [::Int32] Call identifier.
  # rating [::Int32] Call rating; 1-5.
  # comment [::String] An optional user comment if the rating is less than 5.
  # problems [::Array(Proton::Types::CallProblem)] List of the exact types of problems with the call, specified by the
  #   user.
  def send_call_rating(call_id : ::Int32, rating : ::Int32, comment : ::String, problems : ::Array(Proton::Types::CallProblem)) # : Proton::Types::Ok
    broadcast({"@type"    => "sendCallRating",
              "call_id"  => call_id,
              "rating"   => rating,
              "comment"  => comment,
              "problems" => problems})
  end  

  # Sends a notification about user activity in a chat.
  #
  # chat_id [::Int32] Chat identifier.
  # action [Proton::Types::ChatAction] The action description.
  def send_chat_action(chat_id : ::Int32, action : Proton::Types::ChatAction) # : Proton::Types::Ok
    broadcast({"@type"   => "sendChatAction",
              "chat_id" => chat_id,
              "action"  => action})
  end  

  # Sends a notification about a screenshot taken in a chat.
  # Supported only in private and secret chats.
  #
  # chat_id [::Int32] Chat identifier.
  def send_chat_screenshot_taken_notification(chat_id : ::Int32) # : Proton::Types::Ok
    broadcast({"@type"   => "sendChatScreenshotTakenNotification",
              "chat_id" => chat_id})
  end  

  # Changes the current TTL setting (sets a new self-destruct timer) in a secret chat and sends the corresponding
  #   message.
  #
  # chat_id [::Int32] Chat identifier.
  # ttl [::Int32] New TTL value, in seconds.
  def send_chat_set_ttl_message(chat_id : ::Int32, ttl : ::Int32) # : Proton::Types::Message
    broadcast({"@type"   => "sendChatSetTtlMessage",
              "chat_id" => chat_id,
              "ttl"     => ttl})
  end  

  # Sends a custom request; for bots only.
  #
  # method [::String] The method name.
  # parameters [::String] JSON-serialized method parameters.
  def send_custom_request(method : ::String, parameters : ::String) # : Proton::Types::CustomRequestResult
    broadcast({"@type"      => "sendCustomRequest",
              "method"     => method,
              "parameters" => parameters})
  end  

  # Sends a code to verify an email address to be added to a user's Telegram Passport.
  #
  # email_address [::String] Email address.
  def send_email_address_verification_code(email_address : ::String) # : Proton::Types::EmailAddressAuthenticationCodeInfo
    broadcast({"@type"         => "sendEmailAddressVerificationCode",
              "email_address" => email_address})
  end  

  # Sends the result of an inline query as a message.
  # Returns the sent message.
  # Always clears a chat draft message.
  #
  # chat_id [::Int32] Target chat.
  # reply_to_message_id [::Int32] Identifier of a message to reply to or 0.
  # disable_notification [::Bool] Pass true to disable notification for the message.
  #   Not supported in secret chats.
  # from_background [::Bool] Pass true if the message is sent from background.
  # query_id [::String] Identifier of the inline query.
  # result_id [::String] Identifier of the inline result.
  # hide_via_bot [::Bool] If true, there will be no mention of a bot, via which the message is sent.
  #   Can be used only for bots GetOption("animation_search_bot_username"), GetOption("photo_search_bot_username") and
  #   GetOption("venue_search_bot_username").
  def send_inline_query_result_message(chat_id : ::Int32, reply_to_message_id : ::Int32, disable_notification : ::Bool, from_background : ::Bool, query_id : ::String, result_id : ::String, hide_via_bot : ::Bool) # : Proton::Types::Message
    broadcast({"@type"                => "sendInlineQueryResultMessage",
              "chat_id"              => chat_id,
              "reply_to_message_id"  => reply_to_message_id,
              "disable_notification" => disable_notification,
              "from_background"      => from_background,
              "query_id"             => query_id,
              "result_id"            => result_id,
              "hide_via_bot"         => hide_via_bot})
  end  

  # Sends a message.
  # Returns the sent message.
  #
  # chat_id [::Int32] Target chat.
  # reply_to_message_id [::Int32] Identifier of the message to reply to or 0.
  # disable_notification [::Bool] Pass true to disable notification for the message.
  #   Not supported in secret chats.
  # from_background [::Bool] Pass true if the message is sent from the background.
  # reply_markup [Proton::Types::ReplyMarkup] Markup for replying to the message; for bots only.
  # input_message_content [Proton::Types::InputMessageContent] The content of the message to be sent.
  def send_message(chat_id : ::Int32, reply_to_message_id : ::Int32, disable_notification : ::Bool, from_background : ::Bool, reply_markup : Proton::Types::ReplyMarkup, input_message_content : Proton::Types::InputMessageContent) # : Proton::Types::Message
    broadcast({"@type"                 => "sendMessage",
              "chat_id"               => chat_id,
              "reply_to_message_id"   => reply_to_message_id,
              "disable_notification"  => disable_notification,
              "from_background"       => from_background,
              "reply_markup"          => reply_markup,
              "input_message_content" => input_message_content})
  end  

  # Sends messages grouped together into an album.
  # Currently only photo and video messages can be grouped into an album.
  # Returns sent messages.
  #
  # chat_id [::Int32] Target chat.
  # reply_to_message_id [::Int32] Identifier of a message to reply to or 0.
  # disable_notification [::Bool] Pass true to disable notification for the messages.
  #   Not supported in secret chats.
  # from_background [::Bool] Pass true if the messages are sent from the background.
  # input_message_contents [::Array(Proton::Types::InputMessageContent)] Contents of messages to be sent.
  def send_message_album(chat_id : ::Int32, reply_to_message_id : ::Int32, disable_notification : ::Bool, from_background : ::Bool, input_message_contents : ::Array(Proton::Types::InputMessageContent)) # : Proton::Types::Messages
    broadcast({"@type"                  => "sendMessageAlbum",
              "chat_id"                => chat_id,
              "reply_to_message_id"    => reply_to_message_id,
              "disable_notification"   => disable_notification,
              "from_background"        => from_background,
              "input_message_contents" => input_message_contents})
  end  

  # Sends a Telegram Passport authorization form, effectively sharing data with the service.
  # This method must be called after getPassportAuthorizationFormAvailableElements if some previously available
  #   elements need to be used.
  #
  # autorization_form_id [::Int32] Authorization form identifier.
  # types [::Array(Proton::Types::PassportElementType)] Types of Telegram Passport elements chosen by user to complete
  #   the authorization form.
  def send_passport_authorization_form(autorization_form_id : ::Int32, types : ::Array(Proton::Types::PassportElementType)) # : Proton::Types::Ok
    broadcast({"@type"                => "sendPassportAuthorizationForm",
              "autorization_form_id" => autorization_form_id,
              "types"                => types})
  end  

  # Sends a filled-out payment form to the bot for final verification.
  #
  # chat_id [::Int32] Chat identifier of the Invoice message.
  # message_id [::Int32] Message identifier.
  # order_info_id [::String] Identifier returned by ValidateOrderInfo, or an empty string.
  # shipping_option_id [::String] Identifier of a chosen shipping option, if applicable.
  # credentials [Proton::Types::InputCredentials] The credentials chosen by user for payment.
  def send_payment_form(chat_id : ::Int32, message_id : ::Int32, order_info_id : ::String, shipping_option_id : ::String, credentials : Proton::Types::InputCredentials) # : Proton::Types::PaymentResult
    broadcast({"@type"              => "sendPaymentForm",
              "chat_id"            => chat_id,
              "message_id"         => message_id,
              "order_info_id"      => order_info_id,
              "shipping_option_id" => shipping_option_id,
              "credentials"        => credentials})
  end  

  # Sends phone number confirmation code.
  # Should be called when user presses "https://t.me/confirmphone?phone=*******&hash=**********" or
  #   "tg://confirmphone?phone=*******&hash=**********" link.
  #
  # hash [::String] Value of the "hash" parameter from the link.
  # phone_number [::String] Value of the "phone" parameter from the link.
  # settings [Proton::Types::PhoneNumberAuthenticationSettings] Settings for the authentication of the user's phone
  #   number.
  def send_phone_number_confirmation_code(hash : ::String, phone_number : ::String, settings : Proton::Types::PhoneNumberAuthenticationSettings) # : Proton::Types::AuthenticationCodeInfo
    broadcast({"@type"        => "sendPhoneNumberConfirmationCode",
              "hash"         => hash,
              "phone_number" => phone_number,
              "settings"     => settings})
  end  

  # Sends a code to verify a phone number to be added to a user's Telegram Passport.
  #
  # phone_number [::String] The phone number of the user, in international format.
  # settings [Proton::Types::PhoneNumberAuthenticationSettings] Settings for the authentication of the user's phone
  #   number.
  def send_phone_number_verification_code(phone_number : ::String, settings : Proton::Types::PhoneNumberAuthenticationSettings) # : Proton::Types::AuthenticationCodeInfo
    broadcast({"@type"        => "sendPhoneNumberVerificationCode",
              "phone_number" => phone_number,
              "settings"     => settings})
  end  

  # Changes the period of inactivity after which the account of the current user will automatically be deleted.
  #
  # ttl [Proton::Types::AccountTtl] New account TTL.
  def set_account_ttl(ttl : Proton::Types::AccountTtl) # : Proton::Types::Ok
    broadcast({"@type" => "setAccountTtl",
              "ttl"   => ttl})
  end  

  # Succeeds after a specified amount of time has passed.
  # Can be called before authorization.
  # Can be called before initialization.
  #
  # seconds [::Float64] Number of seconds before the function returns.
  def set_alarm(seconds : ::Float64) # : Proton::Types::Ok
    broadcast({"@type"   => "setAlarm",
              "seconds" => seconds})
  end  

  # Sets the phone number of the user and sends an authentication code to the user.
  # Works only when the current authorization state is authorizationStateWaitPhoneNumber, or if there is no pending
  #   authentication query and the current authorization state is authorizationStateWaitCode or
  #   authorizationStateWaitPassword.
  #
  # phone_number [::String] The phone number of the user, in international format.
  # settings [Proton::Types::PhoneNumberAuthenticationSettings, nil] Settings for the authentication of the user's
  #   phone number; may be null.
  def set_authentication_phone_number(phone_number : ::String, settings : Proton::Types::PhoneNumberAuthenticationSettings? = nil) # : Proton::Types::Ok
    broadcast({"@type"        => "setAuthenticationPhoneNumber",
              "phone_number" => phone_number,
              "settings"     => settings})
  end  

  # Sets auto-download settings.
  #
  # settings [Proton::Types::AutoDownloadSettings] New user auto-download settings.
  # type [Proton::Types::NetworkType] Type of the network for which the new settings are applied.
  def set_auto_download_settings(settings : Proton::Types::AutoDownloadSettings, type : Proton::Types::NetworkType) # : Proton::Types::Ok
    broadcast({"@type"    => "setAutoDownloadSettings",
              "settings" => settings,
              "type"     => type})
  end  

  # Changes the background selected by the user; adds background to the list of installed backgrounds.
  #
  # background [Proton::Types::InputBackground] The input background to use, null for solid backgrounds.
  # type [Proton::Types::BackgroundType] Background type; null for default background.
  #   The method will return error 404 if type is null.
  # for_dark_theme [::Bool] True, if the background is chosen for dark theme.
  def set_background(background : Proton::Types::InputBackground, type : Proton::Types::BackgroundType, for_dark_theme : ::Bool) # : Proton::Types::Background
    broadcast({"@type"          => "setBackground",
              "background"     => background,
              "type"           => type,
              "for_dark_theme" => for_dark_theme})
  end  

  # Changes the bio of the current user.
  #
  # bio [::String] The new value of the user bio; 0-70 characters without line feeds.
  def set_bio(bio : ::String) # : Proton::Types::Ok
    broadcast({"@type" => "setBio",
              "bio"   => bio})
  end  

  # Informs the server about the number of pending bot updates if they haven't been processed for a long time; for bots
  #   only.
  #
  # pending_update_count [::Int32] The number of pending updates.
  # error_message [::String] The last error message.
  def set_bot_updates_status(pending_update_count : ::Int32, error_message : ::String) # : Proton::Types::Ok
    broadcast({"@type"                => "setBotUpdatesStatus",
              "pending_update_count" => pending_update_count,
              "error_message"        => error_message})
  end  

  # Changes client data associated with a chat.
  #
  # chat_id [::Int32] Chat identifier.
  # client_data [::String] New value of client_data.
  def set_chat_client_data(chat_id : ::Int32, client_data : ::String) # : Proton::Types::Ok
    broadcast({"@type"       => "setChatClientData",
              "chat_id"     => chat_id,
              "client_data" => client_data})
  end  

  # Changes information about a chat.
  # Available for basic groups, supergroups, and channels.
  # Requires can_change_info rights.
  #
  # chat_id [::Int32] Identifier of the chat.
  # description [::String] New chat description; 0-255 characters.
  def set_chat_description(chat_id : ::Int32, description : ::String) # : Proton::Types::Ok
    broadcast({"@type"       => "setChatDescription",
              "chat_id"     => chat_id,
              "description" => description})
  end  

  # Changes the draft message in a chat.
  #
  # chat_id [::Int32] Chat identifier.
  # draft_message [Proton::Types::DraftMessage, nil] New draft message; may be null.
  def set_chat_draft_message(chat_id : ::Int32, draft_message : Proton::Types::DraftMessage? = nil) # : Proton::Types::Ok
    broadcast({"@type"         => "setChatDraftMessage",
              "chat_id"       => chat_id,
              "draft_message" => draft_message})
  end  

  # Changes the status of a chat member, needs appropriate privileges.
  # This function is currently not suitable for adding new members to the chat; instead, use addChatMember.
  # The chat member status will not be changed until it has been synchronized with the server.
  #
  # chat_id [::Int32] Chat identifier.
  # user_id [::Int32] User identifier.
  # status [Proton::Types::ChatMemberStatus] The new status of the member in the chat.
  def set_chat_member_status(chat_id : ::Int32, user_id : ::Int32, status : Proton::Types::ChatMemberStatus) # : Proton::Types::Ok
    broadcast({"@type"   => "setChatMemberStatus",
              "chat_id" => chat_id,
              "user_id" => user_id,
              "status"  => status})
  end  

  # Changes the notification settings of a chat.
  #
  # chat_id [::Int32] Chat identifier.
  # notification_settings [Proton::Types::ChatNotificationSettings] New notification settings for the chat.
  def set_chat_notification_settings(chat_id : ::Int32, notification_settings : Proton::Types::ChatNotificationSettings) # : Proton::Types::Ok
    broadcast({"@type"                 => "setChatNotificationSettings",
              "chat_id"               => chat_id,
              "notification_settings" => notification_settings})
  end  

  # Changes the chat members permissions.
  # Supported only for basic groups and supergroups.
  # Requires can_restrict_members administrator right.
  #
  # chat_id [::Int32] Chat identifier.
  # permissions [Proton::Types::ChatPermissions] New non-administrator members permissions in the chat.
  def set_chat_permissions(chat_id : ::Int32, permissions : Proton::Types::ChatPermissions) # : Proton::Types::Ok
    broadcast({"@type"       => "setChatPermissions",
              "chat_id"     => chat_id,
              "permissions" => permissions})
  end  

  # Changes the photo of a chat.
  # Supported only for basic groups, supergroups and channels.
  # Requires can_change_info rights.
  # The photo will not be changed before request to the server has been completed.
  #
  # chat_id [::Int32] Chat identifier.
  # photo [Proton::Types::InputFile] New chat photo.
  #   You can use a zero InputFileId to delete the chat photo.
  #   Files that are accessible only by HTTP URL are not acceptable.
  def set_chat_photo(chat_id : ::Int32, photo : Proton::Types::InputFile) # : Proton::Types::Ok
    broadcast({"@type"   => "setChatPhoto",
              "chat_id" => chat_id,
              "photo"   => photo})
  end  

  # Changes the chat title.
  # Supported only for basic groups, supergroups and channels.
  # Requires can_change_info rights.
  # The title will not be changed until the request to the server has been completed.
  #
  # chat_id [::Int32] Chat identifier.
  # title [::String] New title of the chat; 1-128 characters.
  def set_chat_title(chat_id : ::Int32, title : ::String) # : Proton::Types::Ok
    broadcast({"@type"   => "setChatTitle",
              "chat_id" => chat_id,
              "title"   => title})
  end  

  # Adds or changes a custom local language pack to the current localization target.
  #
  # info [Proton::Types::LanguagePackInfo] Information about the language pack.
  #   Language pack ID must start with 'X', consist only of English letters, digits and hyphens, and must not exceed 64
  #   characters.
  #   Can be called before authorization.
  # strings [::Array(::String)] Strings of the new language pack.
  def set_custom_language_pack(info : Proton::Types::LanguagePackInfo, strings : ::Array(::String)) # : Proton::Types::Ok
    broadcast({"@type"   => "setCustomLanguagePack",
              "info"    => info,
              "strings" => strings})
  end  

  # Adds, edits or deletes a string in a custom local language pack.
  # Can be called before authorization.
  #
  # language_pack_id [::String] Identifier of a previously added custom local language pack in the current localization
  #   target.
  # new_string [::String] New language pack string.
  def set_custom_language_pack_string(language_pack_id : ::String, new_string : ::String) # : Proton::Types::Ok
    broadcast({"@type"            => "setCustomLanguagePackString",
              "language_pack_id" => language_pack_id,
              "new_string"       => new_string})
  end  

  # Changes the database encryption key.
  # Usually the encryption key is never changed and is stored in some OS keychain.
  #
  # new_encryption_key [::String] New encryption key.
  def set_database_encryption_key(new_encryption_key : ::String) # : Proton::Types::Ok
    broadcast({"@type"              => "setDatabaseEncryptionKey",
              "new_encryption_key" => new_encryption_key})
  end  

  # Informs TDLib on a file generation prograss.
  #
  # generation_id [::String] The identifier of the generation process.
  # expected_size [::Int32] Expected size of the generated file, in bytes; 0 if unknown.
  # local_prefix_size [::Int32] The number of bytes already generated.
  def set_file_generation_progress(generation_id : ::String, expected_size : ::Int32, local_prefix_size : ::Int32) # : Proton::Types::Ok
    broadcast({"@type"             => "setFileGenerationProgress",
              "generation_id"     => generation_id,
              "expected_size"     => expected_size,
              "local_prefix_size" => local_prefix_size})
  end  

  # Updates the game score of the specified user in the game; for bots only.
  #
  # chat_id [::Int32] The chat to which the message with the game belongs.
  # message_id [::Int32] Identifier of the message.
  # edit_message [::Bool] True, if the message should be edited.
  # user_id [::Int32] User identifier.
  # score [::Int32] The new score.
  # force [::Bool] Pass true to update the score even if it decreases.
  #   If the score is 0, the user will be deleted from the high score table.
  def set_game_score(chat_id : ::Int32, message_id : ::Int32, edit_message : ::Bool, user_id : ::Int32, score : ::Int32, force : ::Bool) # : Proton::Types::Message
    broadcast({"@type"        => "setGameScore",
              "chat_id"      => chat_id,
              "message_id"   => message_id,
              "edit_message" => edit_message,
              "user_id"      => user_id,
              "score"        => score,
              "force"        => force})
  end  

  # Updates the game score of the specified user in a game; for bots only.
  #
  # inline_message_id [::String] Inline message identifier.
  # edit_message [::Bool] True, if the message should be edited.
  # user_id [::Int32] User identifier.
  # score [::Int32] The new score.
  # force [::Bool] Pass true to update the score even if it decreases.
  #   If the score is 0, the user will be deleted from the high score table.
  def set_inline_game_score(inline_message_id : ::String, edit_message : ::Bool, user_id : ::Int32, score : ::Int32, force : ::Bool) # : Proton::Types::Ok
    broadcast({"@type"             => "setInlineGameScore",
              "inline_message_id" => inline_message_id,
              "edit_message"      => edit_message,
              "user_id"           => user_id,
              "score"             => score,
              "force"             => force})
  end  

  # Sets new log stream for internal logging of TDLib.
  # This is an offline method.
  # Can be called before authorization.
  # Can be called synchronously.
  #
  # log_stream [Proton::Types::LogStream] New log stream.
  def set_log_stream(log_stream : Proton::Types::LogStream) # : Proton::Types::Ok
    broadcast({"@type"      => "setLogStream",
              "log_stream" => log_stream})
  end  

  # Sets the verbosity level for a specified TDLib internal log tag.
  # This is an offline method.
  # Can be called before authorization.
  # Can be called synchronously.
  #
  # tag [::String] Logging tag to change verbosity level.
  # new_verbosity_level [::Int32] New verbosity level; 1-1024.
  def set_log_tag_verbosity_level(tag : ::String, new_verbosity_level : ::Int32) # : Proton::Types::Ok
    broadcast({"@type"               => "setLogTagVerbosityLevel",
              "tag"                 => tag,
              "new_verbosity_level" => new_verbosity_level})
  end  

  # Sets the verbosity level of the internal logging of TDLib.
  # This is an offline method.
  # Can be called before authorization.
  # Can be called synchronously.
  #
  # new_verbosity_level [::Int32] New value of the verbosity level for logging.
  #   Value 0 corresponds to fatal errors, value 1 corresponds to errors, value 2 corresponds to warnings and debug
  #   warnings, value 3 corresponds to informational, value 4 corresponds to debug, value 5 corresponds to verbose debug,
  #   value greater than 5 and up to 1023 can be used to enable even more logging.
  def set_log_verbosity_level(new_verbosity_level : ::Int32) # : Proton::Types::Ok
    broadcast({"@type"               => "setLogVerbosityLevel",
              "new_verbosity_level" => new_verbosity_level})
  end  

  # Changes the first and last name of the current user.
  # If something changes, updateUser will be sent.
  #
  # first_name [::String] The new value of the first name for the user; 1-64 characters.
  # last_name [::String] The new value of the optional last name for the user; 0-64 characters.
  def set_name(first_name : ::String, last_name : ::String) # : Proton::Types::Ok
    broadcast({"@type"      => "setName",
              "first_name" => first_name,
              "last_name"  => last_name})
  end  

  # Sets the current network type.
  # Can be called before authorization.
  # Calling this method forces all network connections to reopen, mitigating the delay in switching between different
  #   networks, so it should be called whenever the network is changed, even if the network type remains the same.
  # Network type is used to check whether the library can use the network at all and also for collecting detailed
  #   network data usage statistics.
  #
  # type [Proton::Types::NetworkType] The new network type.
  #   By default, networkTypeOther.
  def set_network_type(type : Proton::Types::NetworkType) # : Proton::Types::Ok
    broadcast({"@type" => "setNetworkType",
              "type"  => type})
  end  

  # Sets the value of an option.
  # (Check the list of available options on https://core.telegram.org/tdlib/options.) Only writable options can be set.
  # Can be called before authorization.
  #
  # name [::String] The name of the option.
  # value [Proton::Types::OptionValue] The new value of the option.
  def set_option(name : ::String, value : Proton::Types::OptionValue) # : Proton::Types::Ok
    broadcast({"@type" => "setOption",
              "name"  => name,
              "value" => value})
  end  

  # Adds an element to the user's Telegram Passport.
  # May return an error with a message "PHONE_VERIFICATION_NEEDED" or "EMAIL_VERIFICATION_NEEDED" if the chosen phone
  #   number or the chosen email address must be verified first.
  #
  # element [Proton::Types::InputPassportElement] Input Telegram Passport element.
  # password [::String] Password of the current user.
  def set_passport_element(element : Proton::Types::InputPassportElement, password : ::String) # : Proton::Types::PassportElement
    broadcast({"@type"    => "setPassportElement",
              "element"  => element,
              "password" => password})
  end  

  # Informs the user that some of the elements in their Telegram Passport contain errors; for bots only.
  # The user will not be able to resend the elements, until the errors are fixed.
  #
  # user_id [::Int32] User identifier.
  # errors [::Array(Proton::Types::InputPassportElementError)] The errors.
  def set_passport_element_errors(user_id : ::Int32, errors : ::Array(Proton::Types::InputPassportElementError)) # : Proton::Types::Ok
    broadcast({"@type"   => "setPassportElementErrors",
              "user_id" => user_id,
              "errors"  => errors})
  end  

  # Changes the password for the user.
  # If a new recovery email address is specified, then the change will not be applied until the new recovery email
  #   address is confirmed.
  #
  # old_password [::String] Previous password of the user.
  # new_password [::String, nil] New password of the user; may be empty to remove the password.
  # new_hint [::String, nil] New password hint; may be empty.
  # set_recovery_email_address [::Bool] Pass true if the recovery email address should be changed.
  # new_recovery_email_address [::String, nil] New recovery email address; may be empty.
  def set_password(old_password : ::String, set_recovery_email_address : ::Bool, new_password : ::String? = nil, new_hint : ::String? = nil, new_recovery_email_address : ::String? = nil) # : Proton::Types::PasswordState
    broadcast({"@type"                      => "setPassword",
              "old_password"               => old_password,
              "new_password"               => new_password,
              "new_hint"                   => new_hint,
              "set_recovery_email_address" => set_recovery_email_address,
              "new_recovery_email_address" => new_recovery_email_address})
  end  

  # Changes the order of pinned chats.
  #
  # chat_ids [::Array(::Int32)] The new list of pinned chats.
  def set_pinned_chats(chat_ids : ::Array(::Int32)) # : Proton::Types::Ok
    broadcast({"@type"    => "setPinnedChats",
              "chat_ids" => chat_ids})
  end  

  # Changes user answer to a poll.
  #
  # chat_id [::Int32] Identifier of the chat to which the poll belongs.
  # message_id [::Int32] Identifier of the message containing the poll.
  # option_ids [::Array(::Int32)] 0-based identifiers of options, chosen by the user.
  #   Currently user can't choose more than 1 option.
  def set_poll_answer(chat_id : ::Int32, message_id : ::Int32, option_ids : ::Array(::Int32)) # : Proton::Types::Ok
    broadcast({"@type"      => "setPollAnswer",
              "chat_id"    => chat_id,
              "message_id" => message_id,
              "option_ids" => option_ids})
  end  

  # Uploads a new profile photo for the current user.
  # If something changes, updateUser will be sent.
  #
  # photo [Proton::Types::InputFile] Profile photo to set.
  #   inputFileId and inputFileRemote may still be unsupported.
  def set_profile_photo(photo : Proton::Types::InputFile) # : Proton::Types::Ok
    broadcast({"@type" => "setProfilePhoto",
              "photo" => photo})
  end  

  # Changes the 2-step verification recovery email address of the user.
  # If a new recovery email address is specified, then the change will not be applied until the new recovery email
  #   address is confirmed.
  # If new_recovery_email_address is the same as the email address that is currently set up, this call succeeds
  #   immediately and aborts all other requests waiting for an email confirmation.
  #
  # password [::String] Password of the current user.
  # new_recovery_email_address [::String] New recovery email address.
  def set_recovery_email_address(password : ::String, new_recovery_email_address : ::String) # : Proton::Types::PasswordState
    broadcast({"@type"                      => "setRecoveryEmailAddress",
              "password"                   => password,
              "new_recovery_email_address" => new_recovery_email_address})
  end  

  # Changes notification settings for chats of a given type.
  #
  # scope [Proton::Types::NotificationSettingsScope] Types of chats for which to change the notification settings.
  # notification_settings [Proton::Types::ScopeNotificationSettings] The new notification settings for the given scope.
  def set_scope_notification_settings(scope : Proton::Types::NotificationSettingsScope, notification_settings : Proton::Types::ScopeNotificationSettings) # : Proton::Types::Ok
    broadcast({"@type"                 => "setScopeNotificationSettings",
              "scope"                 => scope,
              "notification_settings" => notification_settings})
  end  

  # Changes the position of a sticker in the set to which it belongs; for bots only.
  # The sticker set must have been created by the bot.
  #
  # sticker [Proton::Types::InputFile] Sticker.
  # position [::Int32] New position of the sticker in the set, zero-based.
  def set_sticker_position_in_set(sticker : Proton::Types::InputFile, position : ::Int32) # : Proton::Types::Ok
    broadcast({"@type"    => "setStickerPositionInSet",
              "sticker"  => sticker,
              "position" => position})
  end  

  # Changes the sticker set of a supergroup; requires can_change_info rights.
  #
  # supergroup_id [::Int32] Identifier of the supergroup.
  # sticker_set_id [::String] New value of the supergroup sticker set identifier.
  #   Use 0 to remove the supergroup sticker set.
  def set_supergroup_sticker_set(supergroup_id : ::Int32, sticker_set_id : ::String) # : Proton::Types::Ok
    broadcast({"@type"          => "setSupergroupStickerSet",
              "supergroup_id"  => supergroup_id,
              "sticker_set_id" => sticker_set_id})
  end  

  # Changes the username of a supergroup or channel, requires creator privileges in the supergroup or channel.
  #
  # supergroup_id [::Int32] Identifier of the supergroup or channel.
  # username [::String] New value of the username.
  #   Use an empty string to remove the username.
  def set_supergroup_username(supergroup_id : ::Int32, username : ::String) # : Proton::Types::Ok
    broadcast({"@type"         => "setSupergroupUsername",
              "supergroup_id" => supergroup_id,
              "username"      => username})
  end  

  # Sets the parameters for TDLib initialization.
  # Works only when the current authorization state is authorizationStateWaitTdlibParameters.
  #
  # parameters [Proton::Types::TdlibParameters] Parameters.
  def set_tdlib_parameters(parameters : Proton::Types::TdlibParameters) # : Proton::Types::Ok
    broadcast({"@type"      => "setTdlibParameters",
              "parameters" => parameters})
  end  

  # Changes user privacy settings.
  #
  # setting [Proton::Types::UserPrivacySetting] The privacy setting.
  # rules [Proton::Types::UserPrivacySettingRules] The new privacy rules.
  def set_user_privacy_setting_rules(setting : Proton::Types::UserPrivacySetting, rules : Proton::Types::UserPrivacySettingRules) # : Proton::Types::Ok
    broadcast({"@type"   => "setUserPrivacySettingRules",
              "setting" => setting,
              "rules"   => rules})
  end  

  # Changes the username of the current user.
  # If something changes, updateUser will be sent.
  #
  # username [::String] The new value of the username.
  #   Use an empty string to remove the username.
  def set_username(username : ::String) # : Proton::Types::Ok
    broadcast({"@type"    => "setUsername",
              "username" => username})
  end  

  # Stops a poll.
  # A poll in a message can be stopped when the message has can_be_edited flag set.
  #
  # chat_id [::Int32] Identifier of the chat to which the poll belongs.
  # message_id [::Int32] Identifier of the message containing the poll.
  # reply_markup [Proton::Types::ReplyMarkup] The new message reply markup; for bots only.
  def stop_poll(chat_id : ::Int32, message_id : ::Int32, reply_markup : Proton::Types::ReplyMarkup) # : Proton::Types::Ok
    broadcast({"@type"        => "stopPoll",
              "chat_id"      => chat_id,
              "message_id"   => message_id,
              "reply_markup" => reply_markup})
  end  

  # Fetches the latest versions of all strings from a language pack in the current localization target from the server.
  # This method doesn't need to be called explicitly for the current used/base language packs.
  # Can be called before authorization.
  #
  # language_pack_id [::String] Language pack identifier.
  def synchronize_language_pack(language_pack_id : ::String) # : Proton::Types::Ok
    broadcast({"@type"            => "synchronizeLanguagePack",
              "language_pack_id" => language_pack_id})
  end  

  # Terminates all other sessions of the current user.
  #
  def terminate_all_other_sessions # : Proton::Types::Ok
    broadcast({"@type" => "terminateAllOtherSessions"})
  end  

  # Terminates a session of the current user.
  #
  # session_id [::String] Session identifier.
  def terminate_session(session_id : ::String) # : Proton::Types::Ok
    broadcast({"@type"      => "terminateSession",
              "session_id" => session_id})
  end  

  # Changes the value of the default disable_notification parameter, used when a message is sent to a chat.
  #
  # chat_id [::Int32] Chat identifier.
  # default_disable_notification [::Bool] New value of default_disable_notification.
  def toggle_chat_default_disable_notification(chat_id : ::Int32, default_disable_notification : ::Bool) # : Proton::Types::Ok
    broadcast({"@type"                        => "toggleChatDefaultDisableNotification",
              "chat_id"                      => chat_id,
              "default_disable_notification" => default_disable_notification})
  end  

  # Changes the marked as unread state of a chat.
  #
  # chat_id [::Int32] Chat identifier.
  # is_marked_as_unread [::Bool] New value of is_marked_as_unread.
  def toggle_chat_is_marked_as_unread(chat_id : ::Int32, is_marked_as_unread : ::Bool) # : Proton::Types::Ok
    broadcast({"@type"               => "toggleChatIsMarkedAsUnread",
              "chat_id"             => chat_id,
              "is_marked_as_unread" => is_marked_as_unread})
  end  

  # Changes the pinned state of a chat.
  # You can pin up to GetOption("pinned_chat_count_max") non-secret chats and the same number of secret chats.
  #
  # chat_id [::Int32] Chat identifier.
  # is_pinned [::Bool] New value of is_pinned.
  def toggle_chat_is_pinned(chat_id : ::Int32, is_pinned : ::Bool) # : Proton::Types::Ok
    broadcast({"@type"     => "toggleChatIsPinned",
              "chat_id"   => chat_id,
              "is_pinned" => is_pinned})
  end  

  # Toggles whether the message history of a supergroup is available to new members; requires can_change_info rights.
  #
  # supergroup_id [::Int32] The identifier of the supergroup.
  # is_all_history_available [::Bool] The new value of is_all_history_available.
  def toggle_supergroup_is_all_history_available(supergroup_id : ::Int32, is_all_history_available : ::Bool) # : Proton::Types::Ok
    broadcast({"@type"                    => "toggleSupergroupIsAllHistoryAvailable",
              "supergroup_id"            => supergroup_id,
              "is_all_history_available" => is_all_history_available})
  end  

  # Toggles sender signatures messages sent in a channel; requires can_change_info rights.
  #
  # supergroup_id [::Int32] Identifier of the channel.
  # sign_messages [::Bool] New value of sign_messages.
  def toggle_supergroup_sign_messages(supergroup_id : ::Int32, sign_messages : ::Bool) # : Proton::Types::Ok
    broadcast({"@type"         => "toggleSupergroupSignMessages",
              "supergroup_id" => supergroup_id,
              "sign_messages" => sign_messages})
  end  

  # Removes a user from the blacklist.
  #
  # user_id [::Int32] User identifier.
  def unblock_user(user_id : ::Int32) # : Proton::Types::Ok
    broadcast({"@type"   => "unblockUser",
              "user_id" => user_id})
  end  

  # Removes the pinned message from a chat; requires can_pin_messages rights in the group or channel.
  #
  # chat_id [::Int32] Identifier of the chat.
  def unpin_chat_message(chat_id : ::Int32) # : Proton::Types::Ok
    broadcast({"@type"   => "unpinChatMessage",
              "chat_id" => chat_id})
  end  

  # Creates a new supergroup from an existing basic group and sends a corresponding messageChatUpgradeTo and
  #   messageChatUpgradeFrom; requires creator privileges.
  # Deactivates the original basic group.
  #
  # chat_id [::Int32] Identifier of the chat to upgrade.
  def upgrade_basic_group_chat_to_supergroup_chat(chat_id : ::Int32) # : Proton::Types::Chat
    broadcast({"@type"   => "upgradeBasicGroupChatToSupergroupChat",
              "chat_id" => chat_id})
  end  

  # Asynchronously uploads a file to the cloud without sending it in a message.
  # updateFile will be used to notify about upload progress and successful completion of the upload.
  # The file will not have a persistent remote identifier until it will be sent in a message.
  #
  # file [Proton::Types::InputFile] File to upload.
  # file_type [Proton::Types::FileType] File type.
  # priority [::Int32] Priority of the upload (1-32).
  #   The higher the priority, the earlier the file will be uploaded.
  #   If the priorities of two files are equal, then the first one for which uploadFile was called will be uploaded
  #   first.
  def upload_file(file : Proton::Types::InputFile, file_type : Proton::Types::FileType, priority : ::Int32) # : Proton::Types::File
    broadcast({"@type"     => "uploadFile",
              "file"      => file,
              "file_type" => file_type,
              "priority"  => priority})
  end  

  # Uploads a PNG image with a sticker; for bots only; returns the uploaded file.
  #
  # user_id [::Int32] Sticker file owner.
  # png_sticker [Proton::Types::InputFile] PNG image with the sticker; must be up to 512 kB in size and fit in 512x512
  #   square.
  def upload_sticker_file(user_id : ::Int32, png_sticker : Proton::Types::InputFile) # : Proton::Types::File
    broadcast({"@type"       => "uploadStickerFile",
              "user_id"     => user_id,
              "png_sticker" => png_sticker})
  end  

  # Validates the order information provided by a user and returns the available shipping options for a flexible
  #   invoice.
  #
  # chat_id [::Int32] Chat identifier of the Invoice message.
  # message_id [::Int32] Message identifier.
  # order_info [Proton::Types::OrderInfo] The order information, provided by the user.
  # allow_save [::Bool] True, if the order information can be saved.
  def validate_order_info(chat_id : ::Int32, message_id : ::Int32, order_info : Proton::Types::OrderInfo, allow_save : ::Bool) # : Proton::Types::ValidatedOrderInfo
    broadcast({"@type"      => "validateOrderInfo",
              "chat_id"    => chat_id,
              "message_id" => message_id,
              "order_info" => order_info,
              "allow_save" => allow_save})
  end  

  # Informs TDLib that messages are being viewed by the user.
  # Many useful activities depend on whether the messages are currently being viewed or not (e.g., marking messages as
  #   read, incrementing a view counter, updating a view counter, removing deleted messages in supergroups and channels).
  #
  # chat_id [::Int32] Chat identifier.
  # message_ids [::Array(::Int32)] The identifiers of the messages being viewed.
  # force_read [::Bool] True, if messages in closed chats should be marked as read.
  def view_messages(chat_id : ::Int32, message_ids : ::Array(::Int32), force_read : ::Bool) # : Proton::Types::Ok
    broadcast({"@type"       => "viewMessages",
              "chat_id"     => chat_id,
              "message_ids" => message_ids,
              "force_read"  => force_read})
  end  

  # Informs the server that some trending sticker sets have been viewed by the user.
  #
  # sticker_set_ids [::Array(::String)] Identifiers of viewed trending sticker sets.
  def view_trending_sticker_sets(sticker_set_ids : ::Array(::String)) # : Proton::Types::Ok
    broadcast({"@type"           => "viewTrendingStickerSets",
              "sticker_set_ids" => sticker_set_ids})
  end  

  # Writes a part of a generated file.
  # This method is intended to be used only if the client has no direct access to TDLib's file system, because it is
  #   usually slower than a direct write to the destination file.
  #
  # generation_id [::String] The identifier of the generation process.
  # offset [::Int32] The offset from which to write the data to the file.
  # data [::String] The data to write.
  def write_generated_file_part(generation_id : ::String, offset : ::Int32, data : ::String) # : Proton::Types::Ok
    broadcast({"@type"         => "writeGeneratedFilePart",
              "generation_id" => generation_id,
              "offset"        => offset,
              "data"          => data})
  end
end