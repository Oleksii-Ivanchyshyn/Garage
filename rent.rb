require_relative "vehicle"

class   Garage
  #attr_reader :vehicles

  def initialize
    @vehicles = []
    @service = []
  end

  def self.create_vehicle(type, make, model, year)
    case type
    when :car
      Car.new(make, model, year)
    when :truck
      Truck.new(make, model, year)
    when :motorcycle
      Motorcycle.new(make, model, year)
    else
      raise "WTF is vehicle type: #{type}"
    end
  end

  def add_vehicle(vehicle)
   vehicles << vehicle
   puts "#{vehicle.details} added to the garage"
  end

  def list_vehicles
   puts "Vehicles in the garage:"
   vehicles.each  { |vehicle| puts " - #{vehicle.details}" }
  end

  def driving_to_service
    vehicles += service
    vehicles.clear
     puts "garage is empty: #{garage.list_vehicles}"
  end

  def back_to_garage
    puts "cars back to garage"
    service +=service
    service.clear
  end

end
