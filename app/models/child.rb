class Child < ApplicationRecord
    has_many :recipes, dependent: :destroy

    #validations
    validates :name, presence: {message: "Please Provide Your Name!"}
  #   validates :user_name, uniqueness: {
  #     message: ->(object, data)do
  #     "Hey #{object.name}!, #{data[:value]} is taken already! Try Again!"
  # end
  #   }
  
    validates :age, numericality: { only_integer: true }, :inclusion => 10..100
  {  message: "Minimum age to play is 10!"}




end
