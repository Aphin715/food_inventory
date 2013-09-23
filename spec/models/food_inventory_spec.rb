require 'spec_helper'

describe FoodInventory do
  it { should have_valid(:food).when("carrots","steaks","pizza")}
  it {should_not have_valid(:food).when(nil," ")}

  it {should have_valid(:description).when("carrots from idaho","juicy rib eye steaks")}
  it {should_not have_valid(:description).when(nil," ")}

  it {should have_valid(:quantity).when(30,10,500)}
  it{ should_not have_valid(:quantity).when(nil, 0, -30)}

end
