# item_1 = {color: "#FFF", price: 25.5, etc: true}
# item_2 = {color: "#FCF", price: 25, etc: false}
# item_3 = {:color => "#FFO", :price => 2, :etc => true}

# puts "#{item_3[:color]}"

class Item
  attr_reader :color, :price, :etc
  attr_writer :etc
  def initialize(item)
    @color = item[:color]
    @price = item[:price]
    @etc = item[:etc]
  end
  # def color
  #   @color
  # end 
  # def price
  #   @price
  # end 
  # def color=(color)
  #   @color = color
  # end
  # def etc
  #   @etc
  # end
  # def price=(price)
  #   @price
  # end
  # def etc=(etc)
  #   @etc = etc
  # end
  def print_item
    puts "#{color} #{price}"
  end
end 

class Food < Item
  attr_accessor :shelf_life
  def initialize(attributes)
    super
    @shelf_life = attributes[:shelf_life]
  end
end 


# item_1 = Item.new("AAA",34.3,false)
item_1 = Item.new(
  color:"AAA",
  price:34.3,
  etc:false
  )
item_1.print_item
p item_1.etc
item_1.etc = true
p item_1.etc

food = Food.new(color:"AAA",price:34.3,etc:false,shelf_life:'today')