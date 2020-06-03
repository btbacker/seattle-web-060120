require 'pry'

class User
  attr_reader :username
  # attr_accessor :tweets

  @@all = [ ]

  def initialize(username)
    @username = username
    # @tweets = [ ]
    @@all << self
  end

  def self.all
    @@all
  end

  def post_tweet(message)
    # binding.pry
    tweet = Tweet.new(message, self)
    # @tweets << tweet
  end
end

class Tweet
  attr_reader :message, :user

  @@all = [ ]

  def initialize(message, user)
    @message, = message
    @user = user
    @@all << self
  end

  def self.all
    @@all
  end
end

soundarya = User.new("Soundarya")
emily = User.new("Emily")

binding.pry