class Instruction < ApplicationRecord
  belongs_to :recipe,  optional: true
  has_many :food_items
  has_many :kitchen_tools
end
