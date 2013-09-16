
FactoryGirl.define do

  factory :recipe_category do

    name  "category1"

  end

 factory :user do
   email                  "user@example.com"
   password               "password"
   password_confirmation  "password"
 end

factory :recipe do

  name  "DishNew"
  description "Dish1 description"
  quantity 4
  recipe_category
  user_id 1

end

factory :ingredient_category    do
  name "Poultry"
end


factory :ingredient do
   name "chicken"
   unit "lbs"
   ingredient_category
end

factory :recipe_ingredient do
  quantity 4
  ingredient
  recipe
end

factory :prestep do
  add_attribute :sequence, 2
    activity "task1"
    time 5
    recipe

end

factory :step do
  add_attribute :sequence, 2
  time 5
  activity "task1"
  recipe
end


end