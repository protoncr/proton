# Proton

[![Chat on Telegram](https://patrolavia.github.io/telegram-badge/chat.png)](https://t.me/protoncr)

Proton is pure Telegram/MTProto library for the Crystal programming language.

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     proton:
       github: proton/proton
   ```

2. Run `shards install`

3. Profit

## Usage

### Authenticating

```crystal
require "proton"

class MyClient < Proton::Client
  # Stuff
end

SESSION = Proton::Session::TextSession.new("myclient")

Proton::AuthFlow::Terminal.start(
  api_id: 12345,
  api_hash: "0123456789abcdef0123456789abcdef",
  session: SESSION
)

MyClient.start(SESSION)
```

`Session::TextSession` causes a plain text session to be generated with the given name. It will be saved as `{session_name}.session`.

`AuthFlow::Terminal` will ask for a phone number, auth code, and potential password via the terminal interface.

`MyClient.start` starts the client with the given session information.

### Replying to Messages

```crystal
require "proton"

class MyClient < Proton::Client
  include Proton

  @[On(:message, Filter::Private)]
  def on_private_message(ctx)
    ctx.message.reply("Hello, #{ctx.message.from_user.first_name}")
  end
end

SESSION = Proton::Session::TextSession.new("myclient")

MyClient.start(SESSION)
```

## Contributing

1. Fork it (<https://github.com/proton/proton/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Chris Watson](https://github.com/watzon) - creator and maintainer
