# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Pet.destroy_all
User.destroy_all

user1 = User.create!(
  name: "Bob",
  address: "123 Dog st",
  phone_number: "123456789",
  email: "dogman92@cat.com"
)

user2 = User.create!(
  name: "Jack",
  address: "123 Armadillo st",
  phone_number: "47583923",
  email: "catman69@dog.com"
)

user3 = User.create!(
  name: "Ignacio",
  address: "123 Kangaroo st",
  phone_number: "123654789",
  email: "manman92@animales.com"
)


pet1 = Pet.create!(
  name: "Spike",
  vet_record: "Recovered from parvovirus",
  medications: "none",
  dietary: "poultry",
  profile_picture: “https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfMrZwXNHTlMVE-SymlzpcIL7mEBNV0ML9lw&usqp=CAU”,
  user: user1
)

pet2 = Pet.create!(
  name: "Carlota",
  vet_record: "No allergies",
  medications: "none",
  dietary: "poultry",
  profile_picture: “https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSukCzd_pp94Sydp7k83i6iQzAuUI9Kuvvr0A&usqp=CAU”,
  user: user2
)

pet3 = Pet.create!(
  name: "Whiskey",
  vet_record: "none",
  medications: "none",
  dietary: "poultry",
  profile_picture: “https://upload.wikimedia.org/wikipedia/commons/4/4d/Cat_November_2010-1a.jpg”,
  user: user3
)

