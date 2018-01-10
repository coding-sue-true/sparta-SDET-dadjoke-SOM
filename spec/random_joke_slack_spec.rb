require 'spec_helper'

describe DadJokes do

  context 'requesting joke works correctly' do

    before(:all) do
      @jokes = DadJokes.new.random_joke_slack
      @jokes.get_random_joke
    end

    it "should respond with an hash of results" do
      expect(@jokes.get_random_joke_all).to be_kind_of(Hash)
    end

    it "id should respond as a string" do
      expect(@jokes.get_random_joke_id).to be_kind_of(String)
    end

    it "joke should respond as a strin" do
      expect(@jokes.get_random_joke_text).to be_kind_of(String)
    end

    it "page should have a status of 200" do
      expect(@jokes.get_random_joke_status).to eql 200
    end

  end

end
