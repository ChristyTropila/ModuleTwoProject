# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

KitchenTool.destroy_all
FoodItem.destroy_all
Instruction.destroy_all
Recipe.destroy_all
Child.destroy_all



kitch=KitchenTool.create!(name: "Hammer ")
kitch1=KitchenTool.create!(name: "Grandmas Favorite Spoon")
kitch3=KitchenTool.create!(name: "Chopsticks ")
kitch5=KitchenTool.create!(name: "Tree Branch")
kitch6=KitchenTool.create!(name: "Your Parents Shiny New Toothbrush")

instruction1=Instruction.create!(content: "Throw everything into a bowl. Stir. Give your pet a taste to see if they like it")
instruction2=Instruction.create!(content: "Give up and go outside and play. Leave mess for your parents")
instruction3=Instruction.create!(content: "Ask an adult to put your awesome recipe in the oven")
instruction4=Instruction.create!(content: "Dump everything in the toilet and watch it swirl")
instruction5=Instruction.create!(content: "Use your hands to mix everything together. Don't forget to wash your hands after!")


child1=Child.create!(name: "Bobby", user_name: "testing", age: 43)
recipe=Recipe.create!(title: "Testing", rewarded_points: 5, child_id: child1.id)


food1=FoodItem.create!(name: "Ketchup,")
food2=FoodItem.create!(name: "Mustard,")
food3=FoodItem.create!(name: "Pet Hair,")
food4=FoodItem.create!(name: "Ear Wax,")
food5=FoodItem.create!(name: "Dirt,")
food6=FoodItem.create!(name: "Cheese Sauce,")
