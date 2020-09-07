class KitchenTool < ApplicationRecord
    belongs_to :instruction,  optional: true
  
    #validations
    validates :full_description, presence: {message: "Please Pick A Kitchen Tool!"}


    #method that displays both name and description in dropdown
    def full_description
        "Tool: #{name}   ||| Description: #{description}"
    end
 
end
