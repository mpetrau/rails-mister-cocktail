Cocktail.destroy_all
Dose.destroy_all
Ingredient.destroy_all

# lemon = Ingredient.create(name: "lemon")
# ice = Ingredient.create(name: "ice")
# mint = Ingredient.create(name: "mint leaves")

# johny = Cocktail.create(name: "Marry Johny")
# margo = Cocktail.create(name: "Delicious Margarittha")
# dupy = Cocktail.create(name: "Dupy Suppy Tequila")

# Dose.create(description: "10ml", cocktail: johny, ingredient: lemon)
# Dose.create(description: "10ml", cocktail: margo, ingredient: lemon)
# Dose.create(description: "20ml", cocktail: dupy, ingredient: lemon)
# Dose.create(description: "half glass", cocktail: johny, ingredient: ice)
# Dose.create(description: "half glass", cocktail: margo, ingredient: ice)
# Dose.create(description: "a few", cocktail: dupy, ingredient: mint)

require 'json'
require 'open-uri'

url = "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"

parsed = JSON.parse(open(url).read)["drinks"]

parsed.each do |pair|
  pair.each_value { |drink| Ingredient.create(name: drink) }
end




