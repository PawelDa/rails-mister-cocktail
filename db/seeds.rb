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
puts "All ingredients were created!"
sleep(1)
puts "Let's create some cocktails ;)"
sleep(1)
old_fashioned = Cocktail.create(name: 'Old Fashioned')
puts "#{old_fashioned.name} created!"
esspressp_martini = Cocktail.create(name: 'Espresso martini')
puts "#{esspressp_martini.name} created!"
mojito = Cocktail.create(name: 'Mojito')
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
