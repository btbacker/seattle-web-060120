require 'bundler'
Bundler.require

require_all 'models'

DB = SQLite3::Database.new('db/music.db')
DB.results_as_hash = true

# module SQL 
#   class Database
  # def initialize(file_path)
  #   ...
  # end
#   end
# end