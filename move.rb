module Mooove

  def  moving
    puts "#{details} is moving"

  end

  def turn_left
    puts "#{details} turn left"
    
  end

  def mooove_out_all
    puts "move all cars to service"
    vehicles.each  { |vehicle| puts " - #{vehicle.details}" }

  end

  def move_to_service(vehicles, service)
    vehicles.delete(self)
    service.push(self)
    
  end

  def move_to_garage(garage, service)
    service.delete(self)
    garage.push(self)
    puts " #{details} heading to service"
    
  end

  def back_to_garage
    puts "cars back to garage"
    service +=service
    service.clear

  end

  def mooove_all_to_service
    puts " #{details} heading to service"
    vehicles += service
    vehicles.clear
    puts "garage is empty: #{garage.list_vehicles}"

  end

end


