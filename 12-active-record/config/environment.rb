require 'bundler'
Bundler.require

require_all 'models'

# DB = SQLite3::Database.new('music.db')
# DB.results_as_hash = true

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: "new_music.db"
)


# module SQL 
#   class Database
  # def initialize(file_path)
  #   ...
  # end
#   end
# end