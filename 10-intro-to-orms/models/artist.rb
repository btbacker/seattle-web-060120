class Artist
  attr_accessor :name, :id

  def initialize(artist)
    @name = artist["name"]
    @id = artist["id"]
  end

  def self.all
    # Returns [#<Artist>, #<A>, #<A>]
    artists = DB.execute("SELECT * FROM artists")
    artists.map { |artist| Artist.new(artist) }  
  end

  ####################################
  #### Association Methods
  ####################################
  def albums
    # return all the albums from this artist has made
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

  def find_by_name
    #given a string name, find the instance or 
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