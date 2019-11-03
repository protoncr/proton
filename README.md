# Proton

[![Chat on Telegram](https://patrolavia.github.io/telegram-badge/chat.png)](https://t.me/protoncr)

Proton is a Telegram Client API adapter for Crystal. Currently it uses [TDLib](https://github.com/tdlib/td) to send and receive information from Telegram, but eventually it will include a pure Crystal MTProto implementation.

## Installation

1. Install tdlib (and more specifically `libtdjson`) from https://github.com/tdlib/td

2. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     proton:
       github: watzon/proton
   ```

3. Run `shards install`

## Usage

```crystal
require "proton"
```

TODO: Write usage instructions here

## Development

TODO: Write development instructions here

## Contributing

1. Fork it (<https://github.com/watzon/proton/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Chris Watson](https://github.com/watzon) - creator and maintainer
