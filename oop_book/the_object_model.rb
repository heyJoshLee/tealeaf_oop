# Create an object and a module. 

# Modules must be defined before they can be included into a class
module Actions
  def dance
    puts "The animal dances"
  end
end

class Animal
  include Actions

  def initialize
    puts "A dog is born!"
  end

  def say(words)
    puts words
  end
end

class Robot

  attr_accessor :model, :number, :ram

  def initialize(model, number, ram)
    @number = number
    @model = model
    puts "A #{model} robot has been created. Model number #{number}"
  end

  def talk(words)
    puts "The #{model} says: #{words}"
  end

  def upgrade(m, n, r)
    self.model = m
    self.number = n
    self.ram = r
  end

end

williams = Robot.new("Codsworth", 3245, 8)
williams.talk("Beep, boop")

puts "The model is #{williams.model}"
williams.model = "T100"
puts "Just changed the model: "
puts "The model is #{williams.model}"
puts williams.number
puts "New model: #{williams.number = 9001}"

williams.upgrade("Deathclaw", 700, 12)
puts "UPGRADE!"

puts "Williams is now a #{williams.model} is number #{williams.number} and has #{williams.ram} gigs of ram"

