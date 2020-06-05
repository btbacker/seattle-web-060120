require 'pry'
require 'faker'
require 'require_all'
require_relative '../models/tweet'
require_relative '../models/user'
require_relative '../models/like'

2.times do 
  User.new(Faker::FunnyName.name_with_initial)
end

5.times do 
  User.all.sample.post_tweet(Faker::Quote.famous_last_words)
end

first_user = User.all.first
last_tweet = Tweet.all.last

Like.new(first_user, last_tweet)

binding.pry