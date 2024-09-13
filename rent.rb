require_relative "vehicle"

class   Garage
  #include Mooove

  attr_accessor :vehicles

  def initialize(vehicles)
    @vehicles = []
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

end

class Service
  include Mooove

  attr_accessor :service
  
  def initialize(service)
   @service = []
  end

  def list_service
   puts "Vehicles in the service:"
   service.each  { |vehicle| puts " - #{vehicle.details}" }
  end

end
