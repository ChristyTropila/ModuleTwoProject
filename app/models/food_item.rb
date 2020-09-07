class FoodItem < ApplicationRecord
    belongs_to :instruction,  optional: true
    
    #validations
    validates :name, presence: {message: "Please Pick A Food Item!"}
  
    validates :quantity, numericality: { only_integer: true }, :inclusion => 1..10000000
    {  message: "Choose A Number Between 1 and 1 Million!"}
  

  
end
