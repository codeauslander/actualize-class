require './item.rb'
require './food.rb'

item_1 = StoreFront::Item.new(
  color:"AAA",
  price:34.3,
  etc:false
  )
item_1.print_item
p item_1.etc
item_1.etc = true
p item_1.etc

food = StoreFront::Food.new(color:"AAA",price:34.3,etc:false,shelf_life:'today')