class MakeChangeSquareFeetToProperties < ActiveRecord::Migration[5.1]
  def change

    change_column :properties, :square_feet, "numeric USING CAST(price AS numeric)"

    change_column :properties, :square_feet, :decimal, precision: 10, scale: 2

    change_column :properties, :description, :text

    change_column :properties, :price, "numeric USING CAST(price AS numeric)"

    change_column :properties, :price, :decimal, precision: 10, scale: 2

    remove_column :properties, :floors

  end
end
