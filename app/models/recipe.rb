class Recipe < ApplicationRecord
  belongs_to :child
  has_many :instructions
  has_many :food_items, through: :instructions
  has_many :kitchen_tools, through: :instructions

end
