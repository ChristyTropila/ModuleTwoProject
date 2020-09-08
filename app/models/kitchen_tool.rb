class KitchenTool < ApplicationRecord
    belongs_to :instruction,  optional: true
  
    #validations
    validates :name, presence: {message: "Please Pick A Kitchen Tool!"}


 
end
