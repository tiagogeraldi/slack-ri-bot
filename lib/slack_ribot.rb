require 'slack-ruby-bot'

class SlackRibot < SlackRubyBot::Bot
  command 'please explain' do |client, data, match|
    answer = `ri #{match[:expression]}`

    if answer.present?
      client.say(text: answer, channel: data.channel)
    else
      client.say(text: 'Only Ruby code please ;)', channel: data.channel, gif: 'programming')
    end
  end
end