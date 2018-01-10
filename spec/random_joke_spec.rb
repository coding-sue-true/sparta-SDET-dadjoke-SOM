require 'spec_helper'

describe DadJokes do

  context 'requesting joke works correctly' do

    before(:all) do
      @jokes = DadJokes.new.random_joke
      @jokes.get_random_joke
    end

    it "should respond with an hash of results" do
      expect(@jokes.get_random_joke_all).to be_kind_of(Hash)
    end

  end



end
