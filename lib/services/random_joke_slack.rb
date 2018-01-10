require 'httparty'
require 'json'


class RandomJokeSlackService
  include HTTParty

  base_uri 'https://icanhazdadjoke.com/slack'

  def get_random_joke_slack
    @random_joke_slack_api = JSON.parse(self.class.get("", :headers => { "Accept" => 'application/json'}).body)
  end

  def get_random_joke_slack_all
    get_random_joke_slack
  end

  def get_attachments
    get_random_joke_slack_all['attachments']
  end

  def get_fallback
    get_attachments[0]['fallback']
  end

  def get_footer
    get_attachments[0]['footer']
  end

  def get_text
    get_attachments[0]['text']
  end

  def get_response_type
    get_random_joke_slack_all['response_type']
  end

  def get_username
    get_random_joke_slack_all['username']
  end


end

# x = RandomJokeSlackService.new
# p x.get_fallback
