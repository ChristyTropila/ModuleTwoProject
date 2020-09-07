class Recipe < ApplicationRecord
  belongs_to :child
  has_many :instructions, dependent: :destroy
  has_many :food_items, through: :instructions
  has_many :kitchen_tools, through: :instructions

 
  
   def update_points(recipe)
    recipe.rewarded_points += 50
    byebug
   end

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

   def find_name_of_tool(tool_id)
    tool=self.instructions.find do |f|
      f.kitchen_tool_id == tool_id
    end
   
    get_name=KitchenTool.all.find(tool.kitchen_tool_id)
    # byebug
    return get_name.name
    #  byebug
  end

  def find_descrip_of_tool(tool_id)
    tool=self.instructions.find do |f|
      f.kitchen_tool_id == tool_id
    end
   
    get_descrip=KitchenTool.all.find(tool.kitchen_tool_id)
    # byebug
    return get_descrip.description
    #  byebug
  end


     
end
