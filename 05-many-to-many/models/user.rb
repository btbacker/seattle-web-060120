require 'pry'

class User
  attr_reader :username

  @@all = [ ]

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all
    @@all
  end

  def tweets
    Tweet.all.select { |tweet| tweet.user == self }
  end

  def post_tweet(message)
    tweet = Tweet.new(message, self)
  end

  def self.delete_tweet(tweet)
    # access to this tweet
    # Tweet class is our single SST for createdd tweets
    # talk to Tweet.all
    # delete the tweet object 
    # binding.pry
    Tweet.all.delete(tweet)
  end

  def delete_all_tweets
  end

  # - `#like_tweet` that accepts as a tweet instance as a parameter
  # - `#liked_tweets` that returns a collection of all the tweets this user has liked
  # - `#unlike_tweet`
end