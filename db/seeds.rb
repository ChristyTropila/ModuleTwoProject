# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Child.destroy_all
Recipe.destroy_all
FoodItem.destroy_all
KitchenTool.destroy_all
Instruction.destroy_all



food1=FoodItem.create(name: "Milk")
food2=FoodItem.create(name: "Cheese")
food3=FoodItem.create(name: "Dog Hair")
food4=FoodItem.create(name: "Ear Wax")

kitch=KitchenTool.create(name: "Hammer", description: "Smashes most food")
kitch1=KitchenTool.create(name: "Grandmas Favorite Spoon", description: "Shhhh don't tell Grandma")
kitch3=KitchenTool.create(name: "ChopSticks", description: "These could be used to to build a really cool cake")

instruction1=Instruction.create(content: "Throw everything into a bowl. Stir. Give your dog a taste to see if they like it.")
instruction2=Instruction.create(content: "Give up and go outside and play. Leave mess for your parents")
instruction3=Instruction.create(content: "Ask an adult to put your awesome recipe in the oven")