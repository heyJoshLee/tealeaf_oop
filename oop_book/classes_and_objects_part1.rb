class MyCar
  attr_accessor :color, :model, :speed
  attr_reader :year
  def initialize(year, color, model)
    @year = year
    self.color = color
    self.model = model
    self.speed = 0
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

end

my_car = MyCar.new(2008, "Yellow", "Honda")

puts "#{my_car.year}"
puts "#{my_car.color}"
puts "#{my_car.model}"

my_car.speed_up
my_car.speed_up
my_car.speed_up
my_car.break
my_car.break
my_car.shut_off
my_car.color = "blue"
puts my_car.color
puts my_car.year

my_car.spray_paint("Red")
