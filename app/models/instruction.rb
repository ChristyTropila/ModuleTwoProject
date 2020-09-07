class Instruction < ApplicationRecord
  belongs_to :recipe,  optional: true
  belongs_to :food_items, optional: true
  belongs_to :kitchen_tools, optional: true

  #validations
  validates :content, presence: {message: "Please Pick Your Instructions!"}
end
