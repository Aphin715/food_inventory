# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :food_inventory do
    food "MyString"
    description "MyString"
    quantity 1
  end
end
