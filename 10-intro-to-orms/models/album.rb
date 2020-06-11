class album
  attr_accessor :title, :id, :artist_id

  def initialize(album)
    @name = album["title"]
    @id = album["id"]
    @artist_id = album["artist_id"]
  end

  def self.all
    # Returns [#<album>, #<A>, #<A>]
    albums = DB.execute("SELECT * FROM albums")
    albums.map { |album| Album.new(album) }  
    # binding.pry
  end

  ####################################
  #### Association Methods
  ####################################
  def artist 
    # returns the artist for this album
  end

  ####################################
  #### Methods that change the schema
  ####################################


  ####################################
  #### Methods that alter 
  #### the data inside the tables
  ####################################

  #methods ( also talk about if this should be 
  # an instance method or class method)

  def create_table
    #Create the artist table and saves it to the DB
  end

  def find_by_id
    #given an id find the instance from the table
  end

  def find_by_title
    #given a string title, find the instance or 
    # row that represents it
  end

  def add_column
    #adds a new column to the artist table
  end

  def drop
    #drops the artists table
  end

  def insert_data
    #inserts data to the DB
  end

  def change_value
    #updates a values of a column to a new value
  end

  def delete_data
    #deletes a value based on a condition
  end


end