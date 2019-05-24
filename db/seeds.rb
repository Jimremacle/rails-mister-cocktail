require 'open-uri'
require 'json'
# Ingredient.create(name: 'lemon')
# Ingredient.create(name: 'ice')
# Ingredient.create(name: 'mint leaves')

Ingredient.destroy_all
puts 'ingredients destroyed'
puts 'creating ingredients'
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

results = JSON.parse(open(url).read)
ingredients = results['drinks']
ingredients.each do |ingredient|
  Ingredient.create(name: ingredient['strIngredient1'])
end
puts 'done'
