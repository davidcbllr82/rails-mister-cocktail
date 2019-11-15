25.times do
  Cocktail.create(
    name: Faker::Dessert.variety,
    photo: "https://res.cloudinary.com/hard-to-debug-issues/image/upload/v1573827827/200485_3000x2000_mkbr3o.jpg"
  )
end

25.times do
  Ingredient.create(
    name: Faker::Dessert.topping
  )
end

25.times do
  Dose.create(
    description: Faker::Food.measurement
  )
end

25.times do
  Review.create(
    content: Faker::TvShows::StrangerThings.quote
  )
end
