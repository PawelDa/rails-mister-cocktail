# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
json = JSON.parse(open(url).read)
json["drinks"].each do |ingredient|
  created_ingredient = Ingredient.create(name: ingredient["strIngredient1"])
  puts "Ingredient #{created_ingredient.id}: #{created_ingredient.name} created!"
end
created_ingredient = Ingredient.create(name: "Ice")
puts "Ingredient #{created_ingredient.id}: #{created_ingredient.name} created!"
created_ingredient = Ingredient.create(name: "Mint")
puts "Ingredient #{created_ingredient.id}: #{created_ingredient.name} created!"
created_ingredient = Ingredient.create(name: "White rum")
puts "Ingredient #{created_ingredient.id}: #{created_ingredient.name} created!"
created_ingredient = Ingredient.create(name: "Sparkling water")
puts "Ingredient #{created_ingredient.id}: #{created_ingredient.name} created!"

puts "All ingredients were created!"
sleep(1)

puts "Let's create some cocktails ;)"
sleep(1)

old_fashioned = Cocktail.create(name: 'Old Fashioned')
old_fashioned.photo.attach(io: File.open('app/assets/images/old_fashioned.jpg'), filename: "old_fashioned.jpg", content_type: 'image/jpg')
Dose.create(description: "2 ounces", ingredient_id: 20, cocktail_id: old_fashioned.id)
Dose.create(description: "2 ounces", ingredient_id: 49, cocktail_id: old_fashioned.id)
Dose.create(description: "3 dashes", ingredient_id: 11, cocktail_id: old_fashioned.id)
Dose.create(description: "cube", ingredient_id: 101, cocktail_id: old_fashioned.id)
Dose.create(description: "pell", ingredient_id: 73, cocktail_id: old_fashioned.id)
puts "#{old_fashioned.name} created!"

espresso_martini = Cocktail.create(name: 'Espresso martini')
espresso_martini.photo.attach(io: File.open('app/assets/images/espresso_martini.jpg'), filename: "espresso_martini.jpg", content_type: 'image/jpg')
Dose.create(description: "2 ounces", ingredient_id: 22, cocktail_id: espresso_martini.id)
Dose.create(description: "1/2 ounce", ingredient_id: 19, cocktail_id: espresso_martini.id)
Dose.create(description: "1 ounce", ingredient_id: 71, cocktail_id: espresso_martini.id)
Dose.create(description: "1/2 ounce", ingredient_id: 49, cocktail_id: espresso_martini.id)
Dose.create(description: "cube", ingredient_id: 101, cocktail_id: espresso_martini.id)
puts "#{espresso_martini.name} created!"

mojito = Cocktail.create(name: 'Mojito')
mojito.photo.attach(io: File.open('app/assets/images/mojito.jpg'), filename: "mojito.jpg", content_type: 'image/jpg')
Dose.create(description: "3 leaves", ingredient_id: 102, cocktail_id: mojito.id)
Dose.create(description: "1/2 ounce", ingredient_id: 49, cocktail_id: mojito.id)
Dose.create(description: "2 ounces", ingredient_id: 103, cocktail_id: mojito.id)
Dose.create(description: "3/4 ounces", ingredient_id: 30, cocktail_id: mojito.id)
Dose.create(description: "to top", ingredient_id: 104, cocktail_id: mojito.id)
Dose.create(description: "garnish", ingredient_id: 102, cocktail_id: mojito.id)
puts "#{mojito.name} created!"

margarita = Cocktail.create(name: 'Margarita')
puts "#{margarita.name} created!"

aperol_spritz = Cocktail.create(name: 'Aperol spritz')
puts "#{aperol_spritz.name} created!"

sex_on_the_beach = Cocktail.create(name: 'Sex on the beach')
puts "#{sex_on_the_beach.name} created!"

vodka_martini = Cocktail.create(name: 'Vodka martini')
puts "#{vodka_martini.name} created!"

puts 'Database seeded!'
