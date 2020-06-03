require "json"

require "./proton/version"
require "./proton/tdlib"
require "./proton/logger"
require "./proton/errors"

require "./proton/tl/tlobject"
require "./proton/tl/types"
require "./proton/tl/functions"
require "./proton/tl/patched/*"

require "./proton/parse_mode"
require "./proton/client"
require "./proton/auth_flow"

# Proton is a client library for Telegram. It uses [tdlib]() as a backbone, and
# builds on top of it by adding several convenience classes and methods. The
# overarching goal is to have something as friendly as Telethon, with
# the tdlib bindings eventually being replaced by a pure Crystal
# alternative.
module Proton
end
