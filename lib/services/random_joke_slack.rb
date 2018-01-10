require 'httparty'
require 'json'

class RandomJokeService
  include HTTParty

  base_uri 'https://icanhazdadjoke.com'

  def method_name

  end
end
