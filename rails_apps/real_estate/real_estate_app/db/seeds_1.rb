create_table :properties do |t|
      t.string :description
      t.string :year_built
      t.integer :square_feet
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :floors
      t.boolean :availability
      t.integer :price
      t.timestamps
    end

puts "seeds_1 properties"

100.times do |index|

  # product = Product.new(
  #     name:"Name",
  #     price:0,
  #     image_url:"https/for now boring",
  #     description: "Descriiption"
  #   )
  # product.save

  Property.create({
    description:"d"+index,
    year_built:index+"/"+index+"/"+index,
    
    })

end