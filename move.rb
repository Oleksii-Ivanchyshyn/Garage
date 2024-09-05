module Mooove
  def  Move
    puts "#{self.class} is moving"
  end

  def Turn_left
    puts "#{self.class} turn left"
  end

  def Mooove_out_all
    puts "move all cars to service"
    vehicles.each  { |vehicle| puts " - #{vehicle.details}" }
  end
end


