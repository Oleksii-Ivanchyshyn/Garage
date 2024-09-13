require_relative "rent"

garage = Garage.new []
service = Service.new []

# 2.times do

car1 = Garage.create_vehicle(:car, 'Toyota', 'Camry', 2020)
car2 = Garage.create_vehicle(:car, 'Mazda', 'MX-5', 2019)
truck1 = Garage.create_vehicle(:truck, 'Iveco', 'Cargo', 2008)
truck2 = Garage.create_vehicle(:truck, 'Man', '420', 2016)
motorcycle1 = Garage.create_vehicle(:motorcycle, 'Suzuki', 'Hayabuza', 2018)
motorcycle2 = Garage.create_vehicle(:motorcycle, 'Kavasaki', 'Ninja', 2022)

[car1, car2, truck1, truck2, motorcycle1, motorcycle2].each { |obj| garage.add_vehicle(obj) }

#car1.move
#truck1.move
#motorcycle1.move

#garage.list_vehicles
#truck1.turn_left
#truck2.moving
#garage.mooove_out_all
#car1.move_to_service ------------
car1.move_to_service