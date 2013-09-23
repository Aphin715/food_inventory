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
    fill_in "Title", with: "Steak"
    fill_in "Description", with: "Rib Eye Steaks from Delmonicos"
    fill_in "Quantity", with: 40
    click_button "Enter"

    expect(page).to have_content("You have entered that food into the inventory")
    end

end