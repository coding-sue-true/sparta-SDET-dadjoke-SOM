require 'httparty'
require 'json'


class RandomJokeIdService
  include HTTParty

  def get_random_joke_id(joke_id)
    @random_joke_id_api = JSON.parse(self.class.get("https://icanhazdadjoke.com/j/#{joke_id}", :headers => { "Accept" => 'application/json'}).body)
  end

  def get_random_joke_id_id
    @random_joke_id_api['id']
  end

  def get_random_joke_id_joke
    @random_joke_id_api['joke']
  end

  def get_random_joke_id_status
    @random_joke_id_api['status']
  end

end
