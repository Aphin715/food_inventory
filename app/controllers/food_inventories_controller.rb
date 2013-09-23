class FoodInventoriesController < ApplicationController
  def new
    @food_inventory = FoodIventory.new
  end

  def index
    @food_inventory = FoodInventory.all
  end
end
