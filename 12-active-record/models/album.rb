class Album < ActiveRecord::Base
  # attr_accessor :title, :id, :artist_id

  # def initialize(album)
  #   @title = album["title"]
  #   @id = album["id"]
  #   @artist_id = album["artist_id"]
  # end

  # def self.all
  #   # Returns [#<album>, #<A>, #<A>]
  #   albums = DB.execute("SELECT * FROM albums")
  #   albums.map { |album| Album.new(album) }  
  #   # binding.pry
  # end

  # ####################################
  # #### Association Methods
  # ####################################
  # def self.artist(album_id)
  #   #returns the artist for this album
  #   # Arist.all.select -> matched up the object_id then returned the artist instance
  #   # artist_id in this instance -> #<Artist>
  #   Artist.find_by_id(@artist_id)
  # end

  # ####################################
  # #### Methods that change the schema
  # ####################################


  # ####################################
  # #### Methods that alter 
  # #### the data inside the tables
  # ####################################
  # # Read
  # # Making changes to the data in our table
  # def self.find_by_id(id)
  #   #given an id find the instance from the table
  #   sql = "SELECT * 
  #          FROM albums 
  #          WHERE id = ?"
  #   albums = DB.execute(sql, id)
  #   albums.map { |album| Album.new(album)}
  # end

  # #methods ( also talk about if this should be 
  # # an instance method or class method)

  # # CREATE
  # def self.create_table
  #   #Create the artist table and saves it to the DB
  #   sql = "CREATE TABLE albums(
  #     id INTEGER PRIMARY KEY,
  #     title TEXT,
  #     artist_id INTEGER)"
  #   DB.execute(sql)
  # end



  # def find_by_title
  #   #given a string title, find the instance or 
  #   # row that represents it
  # end

  # def add_column
  #   #adds a new column to the artist table
  # end

  # def drop
  #   #drops the artists table
  # end

  # def insert_data
  #   #inserts data to the DB
  # end

  # def change_value
  #   #updates a values of a column to a new value
  # end

  # def delete_data
  #   #deletes a value based on a condition
  # end


end