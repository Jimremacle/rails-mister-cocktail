# require 'open-uri'
# require 'json'
Ingredient.create(name: 'lemon')
Ingredient.create(name: 'ice')
Ingredient.create(name: 'mint leaves')

# url = "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
# url_serialized = open(url).read
# ingredients = JSON.parse(url_serialized)

# for num in [10, 11, 12]
#   p "--" + name = ingredients["drinks"][num]["strIngredient1"]
#   Ingredient.create(name: name)
# end
