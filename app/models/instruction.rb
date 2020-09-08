class Instruction < ApplicationRecord
  belongs_to :recipe,  optional: true
  belongs_to :food_items, optional: true
  belongs_to :kitchen_tools, optional: true

  #validations
  validates :content, presence: {message: "Please Pick Your Instructions!"}


  
  # def self.food_items(list)
  #   FoodItem.find(list.to_s).map{|item| [item.name].join(" ")}.join(', ')
   
  # end


  
end
