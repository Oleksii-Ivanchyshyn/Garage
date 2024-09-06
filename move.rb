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
end


