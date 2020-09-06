class KitchenTool < ApplicationRecord
  

    def full_description
        "Tool: #{name}   ||| Description: #{description}"
    end
 
end
