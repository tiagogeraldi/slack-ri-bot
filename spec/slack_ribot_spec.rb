require 'spec_helper'

describe SlackRubyBot::Commands do
  let! :command do
    SlackRibot.new
  end

  def app
    SlackRubyBot::App.new
  end

  it 'responds with a not found ruby code message' do
    expect(message: "#{SlackRubyBot.config.user} please explain non-ruby-string").to(
      respond_with_slack_message('Only Ruby code please ;)'))
  end

  it 'responds with a valid ruby doc message' do
    expect(message: "#{SlackRubyBot.config.user} please explain Hash#with_indifferent_access").to(
      respond_with_slack_message(/with_indifferent_access/))
  end
end