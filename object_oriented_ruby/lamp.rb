GRASS ='green'
$jump = 'amazing'
class Sheep
  @@count = 0
  def initialize
    p $jump
    @@count += 1
    @count = 1
    fed = true
  end
  def self.how_many
    puts $jump
    return @@count
    @count
  end

  def bleet
    
    puts has_money
  end
private 
def has_money
    puts "BLEET"
  end 
end 

p Sheep.new
p Sheep.new
p Sheep.new
p Sheep.new

sheep = Sheep.new 
p Sheep.how_many
sheep.bleet


sheep.bleet