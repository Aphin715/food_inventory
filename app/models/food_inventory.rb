class FoodInventory < ActiveRecord::Base
  validates_presence_of :food
  validates_presence_of :description
  validates_numericality_of :quantity, greater_than: 0
end
