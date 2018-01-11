require_relative 'services/random_joke'
require_relative 'services/random_joke_slack'
require_relative 'services/random_joke_id'

class DadJokes

  def random_joke
    RandomJokeService.new
  end

  def random_joke_slack
    RandomJokeSlackService.new
  end

  def random_joke_id
    RandomJokeIdService.new
  end

end
