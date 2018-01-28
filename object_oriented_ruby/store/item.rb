
module StoreFront
  class Item
    attr_reader :color, :price, :etc
    attr_writer :etc
    def initialize(item)
      @color = item[:color]
      @price = item[:price]
      @etc = item[:etc]
    end
    def print_item
      puts "#{color} #{price}"
    end
  end 
end