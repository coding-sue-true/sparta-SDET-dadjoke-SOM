require 'httparty'
require 'json'


class RandomJokeService
  include HTTParty
  # headers 'Accept' => 'application/json'

  base_uri 'https://icanhazdadjoke.com/'

  def get_random_joke
    @random_joke_api = JSON.parse(self.class.get("", :headers => { "Accept" => 'application/json'}).body)
  end

  def get_random_joke_all
    @random_joke_api
  end

  def get_random_joke_id
    get_random_joke_all['id']
  end

  def get_random_joke_text
    get_random_joke_all['joke']
  end

  def get_random_joke_status
    get_random_joke_all['status']
  end
end
