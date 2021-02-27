# Proton

A work-in-progress set of libraries to interact with Telegram's MTProto protocol.

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     proton:
       github: protoncr/proton
   ```

2. Run `shards install`

## Usage

This library is a work in progress and not currently usable. Please check back soon for usage instructions.

## Libraries

Since `shards` doesn't _currently_ support multi-repos, all of the libraries contained within are technically one library. That being said, here are the pieces of the puzzle that make up Proton:

- Proton::Client - High level MTProto wrapper
- Proton::Crypto - Cryptographic functions specific to MTProto
- Proton::MTProto - Low level implementation of the [Mobile Transport Protocol](https://core.telegram.org/mtproto)
- Proton::MTSender - RPC layer for connecting to Telegram
- Proton::Session - Session storage for the client
- [Proton::Generator](./src/proton/generator.cr) - Crystal code generator for TL definitions
- [Proton::Parser](./src/proton/parser.cr) - [Type Language](https://core.telegram.org/mtproto/TL) parser implementation
- [Proton::TL](./src/proton/tl.cr) - (De)serializers and generated Crystal type definitions

## Binaries

Proton also comes with some binaries which can be built using `shards build`:

- [tl-to-json](./src/bin/tl-to-json.cr) - Give `.tl` get `.json`. Output should be eqivilent to [Telegram's JSON Schema](https://core.telegram.org/schema/json).

## Contributing

1. Fork it (<https://github.com/protoncr/proton/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Chris Watson](https://github.com/watzon) - creator and maintainer
