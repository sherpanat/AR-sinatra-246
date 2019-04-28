require 'faker'

10.times do
  Restaurant.new(
    name: Faker::Name.name,
    city: Faker::Address.city
  ).save!
end