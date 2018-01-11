require 'spec_helper'

describe DadJokes do

  context 'requesting jokes for slack works correctly' do

    before(:all) do
      @jokes = DadJokes.new.random_joke_slack
      @jokes.get_random_joke_slack
    end

    it "should respond with an hash of results" do
      expect(@jokes.get_random_joke_slack_all).to be_kind_of(Hash)
    end

    it "attachments should respond with an array of results" do
      expect(@jokes.get_attachments).to be_kind_of(Array)
    end

    it "fallback should respond as a string" do
      expect(@jokes.get_fallback).to be_kind_of(String)
    end

    it "footer should respond as a string" do
      expect(@jokes.get_footer).to be_kind_of(String)
    end

    it "text should respond as a string" do
      expect(@jokes.get_text).to be_kind_of(String)
    end

    it "response_type should respond as a string" do
      expect(@jokes.get_response_type).to be_kind_of(String)
    end

    it "username should respond as a string" do
      expect(@jokes.get_username).to be_kind_of(String)
    end

  end

end
