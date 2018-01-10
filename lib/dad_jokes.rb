require_relative 'services/random_joke'
require_relative 'services/random_joke_slack'

class DadJokes

  def random_joke
    RandomJokeService.new
  end

  def random_joke_slack
    RandomJokeSlackService.new
  end

end
