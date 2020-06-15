class CLI
  attr_accessor :username 

  @current_student = nil 

  def main_menu
    puts "Welcome to Hogwarts : Please enter your name below: "
    username = gets.strip
    student = Student.find_by(name: username)
    if student
      # binding.pry
      @current_student = student
      puts "Welcome back #{student.name}!! Let's get you sorted :D."
    else 
      @current_student = Student.create(name: username)
      puts "Welcome #{student.name} : time to sort you into a house."
    end
  end

  def house_info
    House.all.each do |house|
      puts <<-info
      Welcome to HOGWARTS, These are the houses we have for you...
      This is the house name #{house.name},
      with the ghost #{house.house_ghost},
      MOTTO: #{house.motto},
      POINTS: #{house.points}
      info
    end
  end

  def sort 
    puts <<-sorting_message
      HERE YE HERE Ye, Time to get you sorted. The sorted Has made an decision!!! 
      YOUR NEW HOUSE IS.....
      sorting_message
      binding.pry
    sorting = Sorting.create(house: House.all.sample, student: @current_student)
    print "#{@current_student.house.name}"
  end
end