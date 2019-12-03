# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a part of the text which must be formatted differently.
  abstract class TextEntityType < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "textEntityTypeMention" => Types::TextEntityType::Mention,
      "textEntityTypeHashtag" => Types::TextEntityType::Hashtag,
      "textEntityTypeCashtag" => Types::TextEntityType::Cashtag,
      "textEntityTypeBotCommand" => Types::TextEntityType::BotCommand,
      "textEntityTypeUrl" => Types::TextEntityType::Url,
      "textEntityTypeEmailAddress" => Types::TextEntityType::EmailAddress,
      "textEntityTypeBold" => Types::TextEntityType::Bold,
      "textEntityTypeItalic" => Types::TextEntityType::Italic,
      "textEntityTypeCode" => Types::TextEntityType::Code,
      "textEntityTypePre" => Types::TextEntityType::Pre,
      "textEntityTypePreCode" => Types::TextEntityType::PreCode,
      "textEntityTypeTextUrl" => Types::TextEntityType::TextUrl,
      "textEntityTypeMentionName" => Types::TextEntityType::MentionName,
      "textEntityTypePhoneNumber" => Types::TextEntityType::PhoneNumber
    })
  end
end

require "./text_entity_type/mention"
require "./text_entity_type/hashtag"
require "./text_entity_type/cashtag"
require "./text_entity_type/bot_command"
require "./text_entity_type/url"
require "./text_entity_type/email_address"
require "./text_entity_type/bold"
require "./text_entity_type/italic"
require "./text_entity_type/code"
require "./text_entity_type/pre"
require "./text_entity_type/pre_code"
require "./text_entity_type/text_url"
require "./text_entity_type/mention_name"
require "./text_entity_type/phone_number"
