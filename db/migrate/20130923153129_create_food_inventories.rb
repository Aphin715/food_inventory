class CreateFoodInventories < ActiveRecord::Migration
  def change
    create_table :food_inventories do |t|
      t.string :food
      t.string :description
      t.integer :quantity

      t.timestamps
    end
  end
end
