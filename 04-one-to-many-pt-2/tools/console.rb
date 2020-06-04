require 'pry'
require 'faker'
require 'require_all'
# require_all  '../models'
require_relative '../models/tweet'
require_relative '../models/user'

2.times do 
  User.new(Faker::FunnyName.name_with_initial)
end

10.times do 
  User.all.sample.post_tweet(Faker::Quote.famous_last_words)
end

binding.pry