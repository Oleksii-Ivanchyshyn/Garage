require_relative "move"

class Vehicle
  include Mooove

  #attr_accessor :make, :model, :year

  def initialize(make, model, year)
    @make = make
    @model = model
    @year = year
  end

  def details
    puts "#{make} #{model} #{year}"
  end
end 

class Car < Vehicle
  def move
    puts "#{details} is driving on the road."
  end
end

class Truck < Vehicle
  def move
    puts "#{details} is hauling cargo."
  end
end

class Motorcycle < Vehicle
  def move
    puts "#{details} is flying:) on road."
  end
end