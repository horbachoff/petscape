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
  profile_picture: "https://res.cloudinary.com/druc0epi3/image/upload/v1622062736/sample.jpg",
  phone_number: "123456789",
  email: "dogman92@cat.com"
)

user2 = User.create!(
  name: "Jack",
  address: "1572 Locust St, Pasadena, CA",
  password: "123456",
  profile_picture: "https://res.cloudinary.com/druc0epi3/image/upload/v1622228524/si5h7dv3362zhr3piuonv0ydl07u.jpg",
  phone_number: "47583923",
  email: "catman69@dog.com"
)

user3 = User.create!(
  name: "Ignacio",
  address: '16 Villa Gaudelet, Paris',
  password: "123456",
  profile_picture: "https://res.cloudinary.com/druc0epi3/image/upload/v1622233997/t1ye0ycuaipjh4g9qo1pitb1d5fl.jpg",
  phone_number: "123654789",
  email: "manman92@animales.com"
)

user4 = User.create!(
  name: "Charly",
  address: 'Av. Alvaro Obregon 213, CDMX',
  password: "123456",
  profile_picture: "https://res.cloudinary.com/druc0epi3/image/upload/v1622672567/56kztvv0o5yg8pijr5rp3dzbpof8.png",
  phone_number: "123654789",
  email: "manman93@animales.com"
)

user5 = User.create!(
  name: "Mariana",
  address: 'Av. Juárez 100, Centro Histórico, CDMX',
  password: "123456",
  profile_picture: "https://res.cloudinary.com/druc0epi3/image/upload/v1622736916/k9w1yukkhzy3m1ka437cuhxgk225.jpg",
  phone_number: "123654789",
  email: "manman94@animales.com"
)

user6 = User.create!(
  name: "Alex",
  address: 'Plaza de la República S/N, Tabacalera, Cuauhtémoc, 06030 Ciudad de México, CDMX',
  password: "123456",
  profile_picture: "https://res.cloudinary.com/druc0epi3/image/upload/v1622838693/dfz9msmr7mvjp3a2zesetb74i2sg.jpg",
  phone_number: "123654789",
  email: "manman95@animales.com"
)

user7 = User.create!(
  name: "Tania",
  address: 'Londres 247, Del Carmen, Coyoacán, 04100 Ciudad de México, CDMX',
  password: "123456",
  profile_picture: "https://res.cloudinary.com/druc0epi3/image/upload/v1623185210/2000ajihv6fqbwijutbbve5765dq.png",
  phone_number: "123654789",
  email: "manman96@animales.com"
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
  rate_cents: 2500,
  user: user1
)

nanny2 = PetNanny.create!(
  introduction: "Blah blah blah blah blah",
  start_date: '2021-06-01',
  end_date: '2021-07-30',
  rate_cents: 2800,
  user: user2
)

nanny3 = PetNanny.create!(
  introduction: "Blah blah blah blah blah",
  start_date: '2021-07-01',
  end_date: '2021-07-31',
  rate_cents: 3000,
  user: user3
)

nanny4 = PetNanny.create!(
  introduction: "Blah blah blah blah blah",
  start_date: '2021-06-01',
  end_date: '2021-07-31',
  rate_cents: 2900,
  user: user4
)

nanny5 = PetNanny.create!(
  introduction: "Blah blah blah blah blah",
  start_date: '2021-06-01',
  end_date: '2021-07-31',
  rate_cents: 2600,
  user: user5
)

nanny6 = PetNanny.create!(
  introduction: "Blah blah blah blah blah",
  start_date: '2021-06-01',
  end_date: '2021-07-31',
  rate_cents: 2900,
  user: user6
)

nanny7 = PetNanny.create!(
  introduction: "Blah blah blah blah blah",
  start_date: '2021-06-01',
  end_date: '2021-07-31',
  rate_cents: 2700,
  user: user7
)
