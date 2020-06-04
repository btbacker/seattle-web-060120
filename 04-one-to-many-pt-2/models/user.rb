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
    # binding.pry
    tweet = Tweet.new(message, self)
    # @tweets << tweet
  end

  def delete_tweet(tweet)
    #when we had a @tweets array
      # self.all (tweets)
      # user.tweets = tweet
      # delete user : don't want to delete user.
      # end
      # delete @tweet if tweet == tweet

      ## With single source of truth this is all you need to do.
      # still one other location where this data is stores
      # Also have to remove tweet from Tweet.all
      # Tweet.all.delete ( user == tweet.user)
  end
end

# s = User.new("Soun")
# binding.pry