# Proton

[![Chat on Telegram](https://patrolavia.github.io/telegram-badge/chat.png)](https://t.me/protoncr)

Proton is a client library for Telegram. It uses [tdlib]() as a backbone, and builds on top of it by adding several convenience classes and methods. The overarching goal is to have something as friendly as Telethon, with the tdlib bindings eventually being replaced by a pure Crystal alternative.

## Installation

1. Clone tdlib from [here](https://github.com/tdlib/td), build it, and make sure it's installed and available in your library path. Typically this should be either `/usr/lib` or `/usr/local/lib`.

2. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     proton:
       github: protoncr/proton
       branch: master
   ```

3. Run `shards install`

4. Profit

## Usage

Check the [example](./example) directory for a simple userbot example. 

### Authenticating

```crystal
require "proton"

class Userbot < Proton::Client
  # Stuff
end

auth_flow = Proton::TerminalAuthFlow.new(encryption_key: "SOME_DB_ENCRYPTION_KEY")

userbot = Userbot.new(
  api_id: 12345,
  api_hash: "0123456789abcdef0123456789abcdef",
  auth_flow: auth_flow,
  verbosity_level: 0 # This is the tdlib verbosity
)

Userbot.start
```

## Contributing

1. Fork it (<https://github.com/protoncr/proton/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Chris Watson](https://github.com/watzon) - creator and maintainer
