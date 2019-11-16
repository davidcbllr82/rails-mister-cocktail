25.times do
  Cocktail.create(
    name: Faker::Dessert.variety,
    image_data: Unsplash::Photo.search('dessert', 1, 1)
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

# module Seeds
#   module Images
#     def self.seed(property:)
#       p 'Seeding property images...'
#       # Add more than 20 items to test pagination.
#       unsplash_images = Unsplash::Photo.search('dessert', 1, 25)

#       unsplash_images.each do |unsplash_image|
#         image = Properties::Image.create!(
#           property: property,
#           category: Properties::Image.categories.keys.sample,
#           taken_on: rand(5..200).days.ago,
#           title: unsplash_image.description,
#           file_remote_url: unsplash_image.urls.regular
#         )
#         Properties::Images::Publisher.(image)
#       end

#       p 'Done seeding images! 🎉'
#     rescue Unsplash::UnauthorizedError
#       p 'Unsplash API keys not found, no images will be seeded.'
#     end
#   end
# end
