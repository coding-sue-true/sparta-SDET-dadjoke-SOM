require 'spec_helper'

describe DadJokes do

  context 'requesting jokes by id works correctly' do

    before(:all) do
      @jokes = DadJokes.new.random_joke_id
      @jokes.get_random_joke_id('R7UfaahVfFd')
    end

    it "should respond with an hash of results" do
      expect(@jokes.get_random_joke_id('R7UfaahVfFd')).to be_kind_of(Hash)
    end

    it "id should respond as a String" do
      expect(@jokes.get_random_joke_id_id).to be_kind_of(String)
    end

    it "joke should respond as a String" do
      expect(@jokes.get_random_joke_id_joke).to be_kind_of(String)
    end

    it "status should respond as a String" do
      expect(@jokes.get_random_joke_id_status).to eql 200
    end
  end
end
