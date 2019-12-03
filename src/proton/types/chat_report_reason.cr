# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes the reason why a chat is reported.
  abstract class ChatReportReason < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "chatReportReasonSpam" => Types::ChatReportReason::Spam,
      "chatReportReasonViolence" => Types::ChatReportReason::Violence,
      "chatReportReasonPornography" => Types::ChatReportReason::Pornography,
      "chatReportReasonChildAbuse" => Types::ChatReportReason::ChildAbuse,
      "chatReportReasonCopyright" => Types::ChatReportReason::Copyright,
      "chatReportReasonCustom" => Types::ChatReportReason::Custom
    })
  end
end

require "./chat_report_reason/spam"
require "./chat_report_reason/violence"
require "./chat_report_reason/pornography"
require "./chat_report_reason/child_abuse"
require "./chat_report_reason/copyright"
require "./chat_report_reason/custom"
