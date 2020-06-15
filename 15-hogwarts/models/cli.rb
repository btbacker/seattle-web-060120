class CLI
  attr_accessor :student

  # @student = ""
  def main_menu
    puts "Welcome to Hogwarts. Please give us your name: "
    username = gets.chomp
    @student = Student.find_by(name: username)
    if @student
      puts "Thank you #{student.name}!! Let's get you sorted. "
    else 
      @student = Student.create(name: username)
      puts "Thank you #{student.name}!! Let's get you sorted" 
    end
  end

  def display_houses
    binding.pry
  end

  def sort
    @student
  end
end