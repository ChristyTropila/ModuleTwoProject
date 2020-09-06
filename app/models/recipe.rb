class Recipe < ApplicationRecord
  belongs_to :child
  has_many :instructions
  has_many :food_items, through: :instructions
  has_many :kitchen_tools, through: :instructions

  # rewarded_points=0
  
  # def add_points
  #   self.rewarded_points=5
  # end

   def find_name_of_food(food_id)
    food=self.instructions.find do |f|
      f.food_item_id == food_id
      # byebug
      end
    # byebug
   get_name=FoodItem.all.find(food.food_item_id)
     return get_name.name
    # byebug
   end


     
end
