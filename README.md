## Slack RI Bot

This is a UserBot for Slack chat written in Ruby. It provides RDoc documentation in your slack channel by the "ri" command line

### Setting up the project
**Dependencies**
* Ruby 2.2.3
* RSpec
* slack-ruby-bot [GEM](https://github.com/dblock/slack-ruby-bot)

**Required ENV var**
* SLACK_API_TOKEN

```shell
sh script/setup
```
or
```shell
bundle install
export SLACK_API_TOKEN=your-slack-token
```

### Running
```shell
bundle exec ruby ribot.rb
```
or just
```shell
sh script/run
```

### Testing
```shell
bundle exec rspec
```

### Usage
#### In your slack channel
```
  <BOT-NAME> please explain <RUBY-METHOD>
```
#### Examples
```
  ribot please explain Hash#with_indifferent_access
```

```
  ribot please explain to_s
```