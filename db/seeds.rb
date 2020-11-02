NUMBER_OF_BREEDS = 4
HORSES_PER_BREED = 4

NUMBER_OF_BREEDS.times do
  breed = Breed.create(name: Faker::Creature::Horse.unique.breed)

  HORSES_PER_BREED.times do
    horse = breed.horses.create(
      name:           Faker::Creature::Horse.unique.name,
      age:            rand(3..348),
      top_speed:      3.1415926 * rand(20..56),
      number_of_legs: rand(1..14)
    )
  end
end

puts "Created #{Breed.count} Breeds."
puts "Created #{Horse.count} Horses."
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?