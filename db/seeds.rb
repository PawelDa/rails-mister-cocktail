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
created_ingredient = Ingredient.create(name: "Orange liqueur")
puts "Ingredient #{created_ingredient.id}: #{created_ingredient.name} created!"
created_ingredient = Ingredient.create(name: "Prosecco")
puts "Ingredient #{created_ingredient.id}: #{created_ingredient.name} created!"
created_ingredient = Ingredient.create(name: "Aperol")
puts "Ingredient #{created_ingredient.id}: #{created_ingredient.name} created!"
created_ingredient = Ingredient.create(name: "Olive brine")
puts "Ingredient #{created_ingredient.id}: #{created_ingredient.name} created!"
created_ingredient = Ingredient.create(name: "Olive")
puts "Ingredient #{created_ingredient.id}: #{created_ingredient.name} created!"
created_ingredient = Ingredient.create(name: "Campari")
puts "Ingredient #{created_ingredient.id}: #{created_ingredient.name} created!"
created_ingredient = Ingredient.create(name: "Cachaça")
puts "Ingredient #{created_ingredient.id}: #{created_ingredient.name} created!"
created_ingredient = Ingredient.create(name: "Coconut cream")
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
margarita.photo.attach(io: File.open('app/assets/images/margarita.jpg'), filename: "margarita.jpg", content_type: 'image/jpg')
Dose.create(description: "1 1/2 ounce", ingredient_id: 21, cocktail_id: margarita.id)
Dose.create(description: "1 ounce", ingredient_id: 105, cocktail_id: margarita.id)
Dose.create(description: "3/4 ounce", ingredient_id: 30, cocktail_id: margarita.id)
Dose.create(description: "optional", ingredient_id: 49, cocktail_id: margarita.id)
Dose.create(description: "cube", ingredient_id: 101, cocktail_id: margarita.id)
Dose.create(description: "wedge", ingredient_id: 54, cocktail_id: margarita.id)
puts "#{margarita.name} created!"

aperol_spritz = Cocktail.create(name: 'Aperol spritz')
aperol_spritz.photo.attach(io: File.open('app/assets/images/aperol_spritz.jpg'), filename: "aperol_spritz.jpg", content_type: 'image/jpg')
Dose.create(description: "3 ounces", ingredient_id: 106, cocktail_id: aperol_spritz.id)
Dose.create(description: "3 ounces", ingredient_id: 107, cocktail_id: aperol_spritz.id)
Dose.create(description: "1 ounce", ingredient_id: 104, cocktail_id: aperol_spritz.id)
Dose.create(description: "slice", ingredient_id: 73, cocktail_id: aperol_spritz.id)
Dose.create(description: "cube", ingredient_id: 101, cocktail_id: margarita.id)
puts "#{aperol_spritz.name} created!"

sex_on_the_beach = Cocktail.create(name: 'Sex on the beach')
sex_on_the_beach.photo.attach(io: File.open('app/assets/images/sex_on_the_beach.jpg'), filename: "sex_on_the_beach.jpg", content_type: 'image/jpg')
Dose.create(description: "2 ounces", ingredient_id: 22, cocktail_id: sex_on_the_beach.id)
Dose.create(description: "1 ounce", ingredient_id: 66, cocktail_id: sex_on_the_beach.id)
Dose.create(description: "2 ounces", ingredient_id: 41, cocktail_id: sex_on_the_beach.id)
Dose.create(description: "2 ounces", ingredient_id: 78, cocktail_id: sex_on_the_beach.id)
Dose.create(description: "tablespoon", ingredient_id: 48, cocktail_id: sex_on_the_beach.id)
puts "#{sex_on_the_beach.name} created!"

dirty_martini = Cocktail.create(name: 'Dirty martini')
dirty_martini.photo.attach(io: File.open('app/assets/images/dirty_martini.jpg'), filename: "dirty_martini.jpg", content_type: 'image/jpg')
Dose.create(description: "2 1/2 ounces", ingredient_id: 22, cocktail_id: dirty_martini.id)
Dose.create(description: "1/2 ounce", ingredient_id: 15, cocktail_id: dirty_martini.id)
Dose.create(description: "1/2 ounce", ingredient_id: 108, cocktail_id: dirty_martini.id)
Dose.create(description: "2 to 4", ingredient_id: 109, cocktail_id: dirty_martini.id)
puts "#{dirty_martini.name} created!"

negroni = Cocktail.create(name: 'Negroni')
negroni.photo.attach(io: File.open('app/assets/images/negroni.jpg'), filename: "negroni.jpg", content_type: 'image/jpg')
Dose.create(description: "1 ounce", ingredient_id: 3, cocktail_id: negroni.id)
Dose.create(description: "1 ounce", ingredient_id: 110, cocktail_id: negroni.id)
Dose.create(description: "1 ounce", ingredient_id: 5, cocktail_id: negroni.id)
Dose.create(description: "peel", ingredient_id: 73, cocktail_id: negroni.id)
puts "#{negroni.name} created!"

caipirinha = Cocktail.create(name: 'Caipirinha')
caipirinha.photo.attach(io: File.open('app/assets/images/caipirinha.jpg'), filename: "caipirinha.jpg", content_type: 'image/jpg')
Dose.create(description: "1 cut into wedges", ingredient_id: 56, cocktail_id: caipirinha.id)
Dose.create(description: "2 teaspoons", ingredient_id: 25, cocktail_id: caipirinha.id)
Dose.create(description: "1 cut into wedges", ingredient_id: 111, cocktail_id: caipirinha.id)
Dose.create(description: "wheel garnish", ingredient_id: 56, cocktail_id: caipirinha.id)
puts "#{caipirinha.name} created!"

pina_colada = Cocktail.create(name: 'Piña Colada')
pina_colada.photo.attach(io: File.open('app/assets/images/pina_colada.jpg'), filename: "pina_colada.jpg", content_type: 'image/jpg')
Dose.create(description: "2 ounces", ingredient_id: 40, cocktail_id: pina_colada.id)
Dose.create(description: "1 1/2 ounces", ingredient_id: 112, cocktail_id: pina_colada.id)
Dose.create(description: "1 1/2 ounces", ingredient_id: 47, cocktail_id: pina_colada.id)
Dose.create(description: "1/2 ounce", ingredient_id: 30, cocktail_id: pina_colada.id)
puts "#{pina_colada.name} created!"

puts 'Database seeded!'
