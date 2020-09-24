# 100.times do
#     Weed.create(
#       strain: Faker::Cannabis.strain,
#       type: Faker::Cannabis.type,
#       brand: Faker::Cannabis.brand
#     )
#   end

# puts "Seeded database"

Weed.create([{
  strain: 'bluedreams',
  brand: 'Northern Lights'
}])
