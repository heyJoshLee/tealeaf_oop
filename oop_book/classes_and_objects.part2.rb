class Vechicle
  @@vechicles = 0

  def self.num_vechicles 
    puts @@vechicles
  end

  def speed_up
    self.speed +=1
    puts "The car is speeding up!"
    puts "Current speed: #{self.speed}"
  end

  def break
    self.speed -=1
    puts "The car is breaking."
    puts "Current speed: #{self.speed}"
  end

  def shut_off
    self.speed = 0
    puts "The car is now shut off."
    puts "Current speed: #{self.speed}"
  end

  def spray_paint(paint_color)
    self.color = paint_color
    puts "Your car is now #{self.color}"
  end

  def self.calc_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas."
  end

  def initialize(year, color, model)
    @year = year
    self.color = color
    self.model = model
    self.speed = 0
    @@vechicles += 1
  end

  private

  def years_old
    Time.now.year - self.year
  end
end

module Haulable
  def pick_up
    puts "This truck can carry a lot of things"
  end
end

class MyCar < Vechicle
  attr_accessor :color, :model, :speed, :WHEELS
  attr_reader :year
  WHEELS = 4
  def to_s
    puts "This is car is a #{self.year} #{self.color} #{self.model} "
  end

end

class MyTruck < Vechicle
  include Haulable
  attr_accessor :color, :model, :speed, :WHEELS
  attr_reader :year
  WHEELS = 6
  def to_s
    puts "This is car is a #{self.year} #{self.color} #{self.model} "
  end
end

class Student

  attr_reader :name

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(student)
      grade > student.grade
  end

  protected

  def grade 
    @grade
  end

end


car1 = MyCar.new(2008, "Yellow", "Honda")
car2 = MyTruck.new(2002, "Red", "Ford")

puts Vechicle.num_vechicles

car2.pick_up

john = Student.new("John", 90)
jake = Student.new("Jake", 43)

p john.name
p jake.name

puts "Well done!" if john.better_grade_than?(jake)

