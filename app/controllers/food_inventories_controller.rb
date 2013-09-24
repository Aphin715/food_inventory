class FoodInventoriesController < ApplicationController
  def new
    @food_inventory = FoodInventory.new
  end

  def index
    @food_inventory = FoodInventory.all
  end

  def show
    @food_inventory = FoodInventory.find(params[:id])
  end

  def create
    @food_inventory = FoodInventory.new(reg_params)
    respond_to do |format|
      if @food_inventory.save
        format.html { redirect_to @food_inventory, notice: "You have entered that food into the inventory" }
        format.json { render action: 'show', status: :created, location: @food_inventory }
      else
        format.html { render action: 'new' }
        format.json { render json: @food_inventory.errors, status: :unprocessable_entity }
      end
    end
  end
def destroy
    @food_inventory.destroy
    respond_to do |format|
      format.html { redirect_to food_inventories_url }
      format.json { head :no_content }
    end
end




protected

def set_food_inventory
   @food_inventory = FoodInventory.find(params[:id])
end

def reg_params
  params.require(:food_inventory).permit(:food, :description, :quantity)
end
end
