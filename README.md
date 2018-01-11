# sparta-SDET-dadjoke-SOM

## Main

This repo was created in order to revise what is Service Object Model and how to perform Integration Tests using RSpec.
We tested an open API, that can be accessed [here](https://icanhazdadjoke.com/api#search-for-dad-jokes.

Once the data we get back from this API comes in html format, we had to add an header onto the Class of our service to get the data as Json format:

```
(lib/service/random_joke_slack.rb)

class RandomJokeSlackService
  include HTTParty

  base_uri 'https://icanhazdadjoke.com/slack'

  def get_random_joke_slack
    @random_joke_slack_api = JSON.parse(self.class.get("", :headers => { "Accept" => 'application/json'}).body)
  end

end
```

### What is Integration Testing?
After performing Unit Tests, where small pieces of code are written and tested against requirements, we move onto Integration Testing where, in this case, our code was tested against the data from the API.

According with ISTQB Glossary, Integration Testing is:

> Testing performed to expose defects in the interfaces and in the interactions between integrated components or systems.
>http://glossary.istqb.org/search/integration%20testing

_Please note that Component (and Module) is another term used for Unit Testing_

In order to get data from the API we had to use the HTTParty module that enables us to define the _base uri_ of the API (the url link), _GET_ that data, and _Parse_ that data into .JSON, .XML, .YML format.

To run the tests we used the RSpec gem.

### What is SOM, Service Object Model?
We've been using Ruby, which is an Object-Oriented language. The good thing of OOP languages (Object-Oriented Programming), is that is allow us to organise and structure our software more easily, and reuse it or inherit it in another file or even software.
This is achieved with the use of Classes.


## How To Test
- Git clone this repository
- On your console move into the folder where this repository is cloned.
- Run bundle to make sure you have all the required gems installed. You need to have the following gems:
  - HTTParty gem
  - json gem

```
bundle
```
If you don't have one or more, on your console, run the following, and **run bundle again**:
```
gem install httparty
gem install json
gem install rspec
bundle
```
- Run 'rspec' to run the code
```
  rspec
```

## Documentation
- http://istqbexamcertification.com/
- https://github.com/rspec/rspec
- https://rubygems.org
- https://www.ruby-lang.org/en/documentation/
- https://github.com/jnunemaker/httparty
- http://ruby-doc.org/stdlib-2.0.0/libdoc/json/rdoc/JSON.html
- https://developer.atlassian.com/server/crowd/json-requests-and-responses/
- http://blog.teamtreehouse.com/its-time-to-httparty
