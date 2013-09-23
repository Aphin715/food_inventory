class FoodInventoriesController < ApplicationController
  def new
    @food_inventory = FoodInventory.new
  end

  def index
    @food_inventory = FoodInventory.all
  end
end
