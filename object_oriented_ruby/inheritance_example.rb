class Vehicul
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end 

class Car < Vehicul
  attr_accessor :fuel, :make, :model
  def initialize(attributes)
    super()
    @fuel = attributes[:fuel]
    @make = attributes[:make]
    @model = attributes[:model]
  end 
  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicul
  attr_accessor :speed, :type, :weight
  def initialize(attributes)
    super()
    @speed = attributes[:speed]
    @type = attributes[:type]
    @weight = attributes[:weight]
  end 
  def ring_bell
    puts "Ring ring!"
  end
end



p car = Car.new(fuel:15,make:'Toyota',model:'toyota',weight:1000)
p bike = Bike.new(speed:1,type:'for two',weight:1)

car.honk_horn
bike.ring_bell

