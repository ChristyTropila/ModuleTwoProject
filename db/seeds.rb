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



food1=FoodItem.find_or_create_by(name: "Milk")
food2=FoodItem.find_or_create_by(name: "Cheese")
food3=FoodItem.find_or_create_by(name: "Dog Hair")
food4=FoodItem.find_or_create_by(name: "Ear Wax")

kitch=KitchenTool.find_or_create_by(name: "Hammer", description: "Smashes most food")
kitch1=KitchenTool.find_or_create_by(name: "Grandmas Favorite Spoon", description: "Shhhh don't tell Grandma")
kitch3=KitchenTool.find_or_create_by(name: "ChopSticks", description: "These could be used to to build a really cool cake")

instruction1=Instruction.find_or_create_by(content: "Throw everything into a bowl. Stir. Give your dog a taste to see if they like it.")
instruction2=Instruction.find_or_create_by(content: "Give up and go outside and play. Leave mess for your parents")

child1=Child.find_or_create_by(name: "Bobby", user_name: "testing")
recipe=Recipe.find_or_create_by(title: "Testing", rewarded_points: 5, child_id: child1.id)
instruction3=Instruction.find_or_create_by(content: "Ask an adult to put your awesome recipe in the oven")
