require 'pry'

characters = [ 
  {name: "Aang", home: "Norther Air Temple", element: "air"},
  {name: "Katara", home: "Souther Water Tribe", element: "Water"}, 
  {name: "Sokka", home: "Souther Water Tribe", element: "None"},
  {name: "Toph", home: "Ba Sing Se", element: "earth"},
  {name: "Zuko", home: "Fire Nation", element: "Fire"},
  {name: "Azula", home: "Fire Nation", element: "Fire"},
  {name: "Soundarya", home: "Fire Nation", element: "None"}
]

# home

# element
  # - figure out as a group what properties this should have
  # - if you want you can add behavior
  # - practice getters/setters/class variable

class Element
  attr_reader :name
  attr_accessor :power

  @@all = [ ]
  def initialize(name, power)
    @name = name
    @power = power
    #relationship between char and element
    # @characters = [ ]
    @@all << self
  end

  def self.all
    @@all
  end
end

fire = Element.new("Fire", 100)
water = Element.new("Water", 2000)
air = Element.new("Air", 1000)
earth = Element.new("Earth", 90001)
none = Element.new("None", 50)

  
class Character
  attr_reader :element
  attr_accessor :name, :home

  @@all = [ ]

  def initialize(name, home, element)
    @name = name
    @home = home
    @element = element
    @@all << self
  end

  def self.all
    @@all
  end
end

characters.each do |char|
  Character.new(char[:name], char[:home], char[:element])
end


# aang = Character.new("Aang", "Air Temple", "air")
# katara = Character.new("Katara", "Souther Water Tribe", "water")
binding.pry
