require 'spec_helper'

 feature "User enters food into an inventory", %Q{
    As a food service employee
    I want to receive inventory
    So that it can be recorded that we have food items
    } do

    #  Acceptance Criteria:

    # I must specify a title, description, and quantity of the food item
    # If I do not specify the required information, I am prompted to fix errors and to resubmit
    # If I specify the required information, my inventory entry is recorded.





  it "enters valid information and is able to see how much is in the inventory" do
    visit '/'
    fill_in "Food", with: "Steak"
    fill_in "Description", with: "Rib Eye Steaks from Delmonicos"
    fill_in "Quantity", with: 40
    click_button "Enter"

    expect(page).to have_content("You have entered that food into the inventory")
    end


    before

    it "enters invalid information for food" do
        visit '/food_inventories/new'
        fill_in "Food", with: ""
        click_button "Enter"
        expect(page).to have_content("You must specify Food, Description and Quantity")
    end
     it "enters invalid information for description" do
        visit '/food_inventories/new'
        fill_in "Description", with: ""
        click_button "Enter"
        expect(page).to have_content("You must specify Food, Description and Quantity")
    end
    it "enters invalid information for quantity" do
        visit '/food_inventories/new'
        fill_in "Description", with: 0
        click_button "Enter"
        expect(page).to have_content("You must specify Food, Description and Quantity")
    end
end