class KitchenTool < ApplicationRecord
    belongs_to :instruction,  optional: true
  
    #validations
    validates :name, presence: {message: "Please Pick A Kitchen Tool!"}


    # #method that displays both name and description in dropdown
    # def full_description
    #     "Tool: #{self.name}   ||| Description: #{self.description}"
    # end
 
end
