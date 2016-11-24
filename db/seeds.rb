Ingredient.destroy_all
Cocktail.destroy_all
Dose.destroy_all

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

Cocktail.create(name: "Marry Johny")
Cocktail.create(name: "Delicious Margarittha")
Cocktail.create(name: "Dupy Suppy Tequila")

Dose.create(description: "6CL", cocktail_id: 1, ingredient_id: 1)
Dose.create(description: "6CL", cocktail_id: 2, ingredient_id: 1)
Dose.create(description: "6CL", cocktail_id: 3, ingredient_id: 1)
Dose.create(description: "6CL", cocktail_id: 1, ingredient_id: 2)
Dose.create(description: "6CL", cocktail_id: 2, ingredient_id: 3)
