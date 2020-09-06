class Instruction < ApplicationRecord
  belongs_to :recipe,  optional: true
  belongs_to :food_items, optional: true
  belongs_to :kitchen_tools, optional: true
end
