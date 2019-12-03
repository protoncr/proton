# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a text object inside an instant-view web page.
  abstract class RichText < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "richTextPlain" => Types::RichText::Plain,
      "richTextBold" => Types::RichText::Bold,
      "richTextItalic" => Types::RichText::Italic,
      "richTextUnderline" => Types::RichText::Underline,
      "richTextStrikethrough" => Types::RichText::Strikethrough,
      "richTextFixed" => Types::RichText::Fixed,
      "richTextUrl" => Types::RichText::Url,
      "richTextEmailAddress" => Types::RichText::EmailAddress,
      "richTextSubscript" => Types::RichText::Subscript,
      "richTextSuperscript" => Types::RichText::Superscript,
      "richTextMarked" => Types::RichText::Marked,
      "richTextPhoneNumber" => Types::RichText::PhoneNumber,
      "richTextIcon" => Types::RichText::Icon,
      "richTextAnchor" => Types::RichText::Anchor,
      "richTexts" => Types::RichText::S
    })
  end
end

require "./rich_text/plain"
require "./rich_text/bold"
require "./rich_text/italic"
require "./rich_text/underline"
require "./rich_text/strikethrough"
require "./rich_text/fixed"
require "./rich_text/url"
require "./rich_text/email_address"
require "./rich_text/subscript"
require "./rich_text/superscript"
require "./rich_text/marked"
require "./rich_text/phone_number"
require "./rich_text/icon"
require "./rich_text/anchor"
require "./rich_text/s"
