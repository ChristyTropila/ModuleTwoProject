class Recipe < ApplicationRecord
  belongs_to :child
  has_many :instructions, dependent: :destroy
  has_many :food_items, through: :instructions
  has_many :kitchen_tools, through: :instructions

  #validations
  validates :title, presence: {message: "Please Name Your Recipe!"}

 
  #method to keep track of points earned by each player
   def update_points(recipe)
    recipe.rewarded_points += 50
   end

   #method takes in a food_item id and gives the name of that item
   def find_name_of_food(food_id)
    # byebug
   get_name=FoodItem.all.find(food_id)
   return "#{get_name.name} || Quantity:  #{get_name.quantity}" 
    # byebug
   end

 
   
   #method takes in a kitchen_tool_id and gives the name of that tool
   def find_name_of_tool(tool_id)
    get_name=KitchenTool.all.find(tool_id)
    return get_name.name
  #  byebug
  end



  #method takes in a kitchen_tool_id and gives the description of that tool
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
