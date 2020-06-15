class Artist < ActiveRecord::Base
  # attr_accessor :name, :id

  # def initialize(artist)
  #   @name = artist["name"]
  #   @id = artist["id"]
  # end

  # def self.all
  #   # Returns [#<Artist>, #<A>, #<A>]
  #   artists = DB.execute("SELECT * FROM artists")
  #   artists.map { |artist| Artist.new(artist) }
  # end

  # ####################################
  # #### Association Methods
  # ####################################
  # def albums
  #   # return all the artists from this artist has made
  #   sql = "SELECT * FROM albums
  #          WHERE albums.artist_id == ?"
  #   albums = DB.execute(sql, id)
  #   albums.map { |album| Album.new(album) }
  # end 

  # ####################################
  # #### Methods that change the schema
  # ####################################
  
  
  # ####################################
  # #### Methods that alter 
  # #### the data inside the tables
  # ####################################
  # #CREATE 
  # def self.insert_data(name)
  #   #inserts data to the DB
  #   sql = "INSERT INTO artists(name) VALUES(?)"
  #   DB.execute(sql,name)
  #   artist = DB.execute("SELECT * FROM artists ORDER BY id DESC LIMIT 1;")
  #   artist.map { |artist| Artist.new(artist) }.first
  # end


  
  # #methods ( also talk about if this should be 
  # # an instance method or class method)
  # def create_table
  #   #Create the artist table and saves it to the DB
  # end


  # def self.find_by_id(id)
  #   #given an id find the instance from the table
  #   sql = "SELECT * 
  #          FROM artists 
  #          WHERE id = ?"
  #   artists = DB.execute(sql, id)
  #   artists.map { |artist| Artist.new(artist)}.first
  # end

  # def find_by_name
  #   #given a string name, find the instance or 
  #   # row that represents it
  # end

  # def add_column
  #   #adds a new column to the artist table
  # end

  # def drop
  #   #drops the artists table
  # end


  # def change_value
  #   #updates a values of a column to a new value
  # end

  # def delete_data
  #   #deletes a value based on a condition
  # end
end