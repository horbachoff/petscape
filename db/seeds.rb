# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pet.destroy_all
PetNanny.destroy_all
User.destroy_all

user1 = User.create!(
  name: "Lisa",
  address: "723 E Kensington Rd, Los Angeles, CA, 90026",
  password: "123456",
  phone_number: "123456789",
  email: "dogman92@cat.com"
)

user2 = User.create!(
  name: "Jack",
  address: "1572 Locust St, Pasadena, CA",
  password: "123456",
  phone_number: "47583923",
  email: "catman69@dog.com"
)

user3 = User.create!(
  name: "Ignacio",
  address: '16 Villa Gaudelet, Paris',
  password: "123456",
  phone_number: "123654789",
  email: "manman92@animales.com"
)

pet1 = Pet.create!(
  name: "Spike",
  vet_record: "Recovered from parvovirus",
  medications: "none",
  dietary: "poultry",
  user: user1
)

pet2 = Pet.create!(
  name: "Carlota",
  vet_record: "No allergies",
  medications: "none",
  dietary: "poultry",
  user: user2
)

pet3 = Pet.create!(
  name: "Whiskey",
  vet_record: "none",
  medications: "none",
  dietary: "poultry",
  user: user3
)

nanny1 = PetNanny.create!(
  introduction: "Blah blah blah blah blah",
  start_date: '2021-06-01',
  end_date: '2021-06-30',
  user: user1
)

nanny2 = PetNanny.create!(
  introduction: "Blah blah blah blah blah",
  start_date: '2021-06-01',
  end_date: '2021-07-30',
  user: user2
)

nanny3 = PetNanny.create!(
  introduction: "Blah blah blah blah blah",
  start_date: '2021-07-01',
  end_date: '2021-07-31',
  user: user3
)
