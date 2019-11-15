25.times do
  Ingredient.create(
    name: Faker::Food.ingredient
  )
end

25.times do
  Review.create(
    content: Faker::Restaurant.review
  )
end
