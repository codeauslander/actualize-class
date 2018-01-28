require './item.rb'
module StoreFront
  class Food < Item
    attr_accessor :shelf_life
    def initialize(attributes)
      super
      @shelf_life = attributes[:shelf_life]
    end
  end 
end