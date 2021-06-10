# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Pet.destroy_all
PetNanny.destroy_all
User.destroy_all

user1 = User.create!(
  name: "Lisa",
  address: "723 E Kensington Rd, Los Angeles, CA, 90026",
  password: "123456",
  profile_picture: "https://res.cloudinary.com/druc0epi3/image/upload/v1623267233/tamara-bellis-n00UuCMzVgM-unsplash_p8y4iw.jpg",
  phone_number: "123456789",
  email: "dogman92@cat.com"
)

user2 = User.create!(
  name: "Jack",
  address: "1572 Locust St, Pasadena, CA",
  password: "123456",
  profile_picture: "https://res.cloudinary.com/druc0epi3/image/upload/v1623267231/anton-darius-3x9GG5YPo8k-unsplash_nz8hwm.jpg",
  phone_number: "47583923",
  email: "catman69@dog.com"
)

user3 = User.create!(
  name: "Ignacio",
  address: '16 Villa Gaudelet, Paris',
  password: "123456",
  profile_picture: "https://res.cloudinary.com/druc0epi3/image/upload/v1623267233/zach-lucero-WjzZOaYvo_s-unsplash_tcw007.jpg",
  phone_number: "123654789",
  email: "manman92@animales.com"
)

user4 = User.create!(
  name: "Charly",
  address: 'Av. Alvaro Obregon 213, CDMX',
  password: "123456",
  profile_picture: "https://res.cloudinary.com/druc0epi3/image/upload/v1623267235/freddy-anca-chuquihumani-MjXND8EDCMo-unsplash_xlcjra.jpg",
  phone_number: "123654789",
  email: "manman93@animales.com"
)

user5 = User.create!(
  name: "Mariana",
  address: 'Av. Juárez 100, Centro Histórico, CDMX',
  password: "123456",
  profile_picture: "https://res.cloudinary.com/druc0epi3/image/upload/v1623267231/omid-armin-bQwVYKuvxbU-unsplash_s5xpnj.jpg",
  phone_number: "123654789",
  email: "manman94@animales.com"
)

user6 = User.create!(
  name: "Alex",
  address: 'Plaza de la República S/N, Tabacalera, Cuauhtémoc, 06030 Ciudad de México, CDMX',
  password: "123456",
  profile_picture: "https://res.cloudinary.com/druc0epi3/image/upload/v1623267236/jb-photography-_YSVcE9n1fs-unsplash_ajdgjz.jpg",
  phone_number: "123654789",
  email: "manman95@animales.com"
)

user7 = User.create!(
  name: "Tania",
  address: 'Londres 247, Del Carmen, Coyoacán, 04100 Ciudad de México, CDMX',
  password: "123456",
  profile_picture: "https://res.cloudinary.com/druc0epi3/image/upload/v1623267232/michael-tomaszewski-e1zCiCr6SHQ-unsplash_gg0vyl.jpg",
  phone_number: "123654789",
  email: "manman96@animales.com"
)

user8 = User.create!(
  name: "Katya",
  address: "723 E Kensington Rd, Los Angeles, CA, 90026",
  password: "123456",
  profile_picture: "https://res.cloudinary.com/druc0epi3/image/upload/v1623267239/jon-grogan-yfTFo4iaADI-unsplash_axgfu5.jpg",
  phone_number: "123456789",
  email: "dogman93@cat.com"
)

user9 = User.create!(
  name: "Antonella",
  address: "723 E Kensington Rd, Los Angeles, CA, 90026",
  password: "123456",
  profile_picture: "https://res.cloudinary.com/druc0epi3/image/upload/v1623267235/mel-elias-2_KjpNXFl5M-unsplash_wbankq.jpg",
  phone_number: "123456789",
  email: "dogman94@cat.com"
)

user10 = User.create!(
  name: "Vivian",
  address: "723 E Kensington Rd, Los Angeles, CA, 90026",
  password: "123456",
  profile_picture: "https://res.cloudinary.com/druc0epi3/image/upload/v1623267235/evgeniya-litovchenko-KV_7Q5UNcCQ-unsplash_cuhifs.jpg",
  phone_number: "123456789",
  email: "dogman95@cat.com"
)

user11 = User.create!(
  name: "Bob",
  address: "723 E Kensington Rd, Los Angeles, CA, 90026",
  password: "123456",
  profile_picture: "https://res.cloudinary.com/druc0epi3/image/upload/v1623267234/alevision-co-c3MJ3-PrUuo-unsplash_yulvix.jpg",
  phone_number: "123456789",
  email: "dogman96@cat.com"
)

user12 = User.create!(
  name: "Jessica",
  address: "20 W 34th St, New York, New York 10001",
  password: "123456",
  profile_picture: "https://res.cloudinary.com/druc0epi3/image/upload/v1623341903/yerlin-matu-EZ8aoSlsoj8-unsplash_r80plr.jpg",
  phone_number: "123456789",
  email: "dogman97@cat.com"
)

user13 = User.create!(
  name: "Cloe",
  address: "723 E Kensington Rd, Los Angeles, CA, 90026",
  password: "123456",
  profile_picture: "https://res.cloudinary.com/druc0epi3/image/upload/v1623267234/brad-lloyd-xy1Yo_MHDvQ-unsplash_q4j0qk.jpg",
  phone_number: "123456789",
  email: "dogman98@cat.com"
)

user14 = User.create!(
  name: "Diane",
  address: "723 E Kensington Rd, Los Angeles, CA, 90026",
  password: "123456",
  profile_picture: "https://res.cloudinary.com/druc0epi3/image/upload/v1623267234/roberto-nickson-_JGVVEfbTVQ-unsplash_yrafkk.jpg",
  phone_number: "123456789",
  email: "dogman99@cat.com"
)

user15 = User.create!(
  name: "Paulette",
  address: "602 Surf Ave, Brooklyn, New York 11224",
  password: "123456",
  profile_picture: "https://res.cloudinary.com/druc0epi3/image/upload/v1623267232/ali-karimi-fdf9VTnGk2w-unsplash_kdh1lb.jpg",
  phone_number: "123456789",
  email: "dogman01@cat.com"
)

user16 = User.create!(
  name: "Dafne",
  address: "723 E Kensington Rd, Los Angeles, CA, 90026",
  password: "123456",
  profile_picture: "https://res.cloudinary.com/druc0epi3/image/upload/v1623267230/shwa-hall-JX66YVQl6II-unsplash_fcdh1n.jpg",
  phone_number: "123456789",
  email: "dogman02@cat.com"
)

user17 = User.create!(
  name: "Rachel",
  address: "137-57 Farmers Blvd, Queens, New York 11413",
  password: "123456",
  profile_picture: "https://res.cloudinary.com/druc0epi3/image/upload/v1623341908/nicholas-ng-Efcg4FrVYHo-unsplash_jzn9p3.jpg",
  phone_number: "123456789",
  email: "dogman03@cat.com"
)

user18 = User.create!(
  name: "Chuck",
  address: "2300 Southern Blvd, Bronx, New York 10460",
  password: "123456",
  profile_picture: "https://res.cloudinary.com/druc0epi3/image/upload/v1623341900/caro-costa-E9OP3pkFCe0-unsplash_aqyfrz.jpg",
  phone_number: "123456789",
  email: "dogman04@cat.com"
)

user19 = User.create!(
  name: "Cassidy",
  address: "723 E Kensington Rd, Los Angeles, CA, 90026",
  password: "123456",
  profile_picture: "https://res.cloudinary.com/druc0epi3/image/upload/v1623341908/cassiano-psomas-EVjghVvLJTc-unsplash_ze5uv8.jpg",
  phone_number: "123456789",
  email: "dogman05@cat.com"
)

user20 = User.create!(
  name: "Tamara",
  address: "109 E 167th St, Bronx, New York 10452",
  password: "123456",
  profile_picture: "https://res.cloudinary.com/druc0epi3/image/upload/v1623341907/tamara-bellis-8FYvkl0zHQE-unsplash_u30mqi.jpg",
  phone_number: "123456789",
  email: "dogman06@cat.com"
)

user21 = User.create!(
  name: "Jennifer",
  address: "723 E Kensington Rd, Los Angeles, CA, 90026",
  password: "123456",
  profile_picture: "https://res.cloudinary.com/druc0epi3/image/upload/v1623341905/jonathan-cooper-eqcjVloi7fI-unsplash_r1h8bx.jpg",
  phone_number: "123456789",
  email: "dogman07@cat.com"
)

user22 = User.create!(
  name: "Melissa",
  address: "723 E Kensington Rd, Los Angeles, CA, 90026",
  password: "123456",
  profile_picture: "https://res.cloudinary.com/druc0epi3/image/upload/v1623341905/melissa-keizer-9YHNCiblBI4-unsplash_f2anw5.jpg",
  phone_number: "123456789",
  email: "dogman08@cat.com"
)

user23 = User.create!(
  name: "Elizabeth",
  address: "723 E Kensington Rd, Los Angeles, CA, 90026",
  password: "123456",
  profile_picture: "https://res.cloudinary.com/druc0epi3/image/upload/v1623341905/tamara-bellis-WrUGxeL-Hgs-unsplash_tqc4hu.jpg",
  phone_number: "123456789",
  email: "dogman09@cat.com"
)

user24 = User.create!(
  name: "Laura",
  address: "723 E Kensington Rd, Los Angeles, CA, 90026",
  password: "123456",
  profile_picture: "https://res.cloudinary.com/druc0epi3/image/upload/v1623341905/laurentiu-cotet-06Smd3x8ORc-unsplash_padb0v.jpg",
  phone_number: "123456789",
  email: "dogman10@cat.com"
)

user25 = User.create!(
  name: "Stephanie",
  address: "723 E Kensington Rd, Los Angeles, CA, 90026",
  password: "123456",
  profile_picture: "https://res.cloudinary.com/druc0epi3/image/upload/v1623341904/spencer-gu-5t5q8LfOtbg-unsplash_zjxk4c.jpg",
  phone_number: "123456789",
  email: "dogman11@cat.com"
)

user26 = User.create!(
  name: "Elvis",
  address: "614 Broadway, Staten Island, New York 10310",
  password: "123456",
  profile_picture: "https://res.cloudinary.com/druc0epi3/image/upload/v1623341903/elvis-ray-BkGnjF-VhVU-unsplash_vzjhuc.jpg",
  phone_number: "123456789",
  email: "dogman12@cat.com"
)

user27 = User.create!(
  name: "Geraldine",
  address: "723 E Kensington Rd, Los Angeles, CA, 90026",
  password: "123456",
  profile_picture: "https://res.cloudinary.com/druc0epi3/image/upload/v1623341903/japheth-mast-Ga6z9QD8yvw-unsplash_vw5kif.jpg",
  phone_number: "123456789",
  email: "dogman13@cat.com"
)

user28 = User.create!(
  name: "Anthony",
  address: "36-01 35th Ave, Queens, New York 11106",
  password: "123456",
  profile_picture: "https://res.cloudinary.com/druc0epi3/image/upload/v1623341902/anton-darius-dpOcAyL6MVs-unsplash_asgzyh.jpg",
  phone_number: "123456789",
  email: "dogman14@cat.com"
)

user29 = User.create!(
  name: "Stacey",
  address: "723 E Kensington Rd, Los Angeles, CA, 90026",
  password: "123456",
  profile_picture: "https://res.cloudinary.com/druc0epi3/image/upload/v1623341902/misael-silvera-IEJbfuqlIP8-unsplash_yckrce.jpg",
  phone_number: "123456789",
  email: "dogman15@cat.com"
)

user30 = User.create!(
  name: "Marian",
  address: "723 E Kensington Rd, Los Angeles, CA, 90026",
  password: "123456",
  profile_picture: "https://res.cloudinary.com/druc0epi3/image/upload/v1623341901/marian-oleksyn-6t8fq3OBeBI-unsplash_iaugeu.jpg",
  phone_number: "123456789",
  email: "dogman16@cat.com"
)

nanny1 = PetNanny.create!(
  introduction: "I have always love any kind of pets. Animal are the best companions that we could ever have and I am happy to spend time with an animal anytime.",
  start_date: '2021-06-01',
  end_date: '2021-06-30',
  rate_cents: 2500,
  user: user1
)

nanny2 = PetNanny.create!(
  introduction: "I'd describe myself as a cat person. I consider cats the most evolved animals and for my meeting a cat is really enjoyable experience.",
  start_date: '2021-06-01',
  end_date: '2021-07-30',
  rate_cents: 2800,
  user: user2
)

nanny3 = PetNanny.create!(
  introduction: "Animals must not be considered pets. They are living beings and they are our equals. Each interaction with any animal is a beautiful and unique experience.",
  start_date: '2021-07-01',
  end_date: '2021-07-31',
  rate_cents: 3000,
  user: user3
)

nanny4 = PetNanny.create!(
  introduction: "Dogs are not only our best friends, they are also family!",
  start_date: '2021-06-01',
  end_date: '2021-07-31',
  rate_cents: 2900,
  user: user4
)

nanny5 = PetNanny.create!(
  introduction: "I love animals, they are sincere. We should learn from animals.",
  start_date: '2021-06-01',
  end_date: '2021-07-31',
  rate_cents: 2600,
  user: user5
)

nanny6 = PetNanny.create!(
  introduction: "Interacting with animals keeps you young!",
  start_date: '2021-06-01',
  end_date: '2021-07-31',
  rate_cents: 2900,
  user: user6
)

nanny7 = PetNanny.create!(
  introduction: "Do you want to learn about love? Animals are the best teachers.",
  start_date: '2021-06-01',
  end_date: '2021-07-31',
  rate_cents: 2700,
  user: user7
)

nanny8 = PetNanny.create!(
  introduction: "Animals must not be considered pets. They are living beings and they are our equals. Each interaction with any animal is a beautiful and unique experience.",
  start_date: '2021-06-01',
  end_date: '2021-07-31',
  rate_cents: 3000,
  user: user8
)

nanny9 = PetNanny.create!(
  introduction: "Animals must not be considered pets. They are living beings and they are our equals. Each interaction with any animal is a beautiful and unique experience.",
  start_date: '2021-06-01',
  end_date: '2021-07-31',
  rate_cents: 3000,
  user: user9
)

nanny10 = PetNanny.create!(
  introduction: "Animals must not be considered pets. They are living beings and they are our equals. Each interaction with any animal is a beautiful and unique experience.",
  start_date: '2021-06-01',
  end_date: '2021-07-31',
  rate_cents: 3000,
  user: user10
)

nanny11 = PetNanny.create!(
  introduction: "Animals must not be considered pets. They are living beings and they are our equals. Each interaction with any animal is a beautiful and unique experience.",
  start_date: '2021-06-01',
  end_date: '2021-07-31',
  rate_cents: 3000,
  user: user11
)

nanny12 = PetNanny.create!(
  introduction: "Animals must not be considered pets. They are living beings and they are our equals. Each interaction with any animal is a beautiful and unique experience.",
  start_date: '2021-06-01',
  end_date: '2021-07-31',
  rate_cents: 3000,
  user: user12
)

nanny13 = PetNanny.create!(
  introduction: "Animals must not be considered pets. They are living beings and they are our equals. Each interaction with any animal is a beautiful and unique experience.",
  start_date: '2021-06-01',
  end_date: '2021-07-31',
  rate_cents: 3000,
  user: user13
)

nanny14 = PetNanny.create!(
  introduction: "Animals must not be considered pets. They are living beings and they are our equals. Each interaction with any animal is a beautiful and unique experience.",
  start_date: '2021-06-01',
  end_date: '2021-07-31',
  rate_cents: 3000,
  user: user14
)

nanny15 = PetNanny.create!(
  introduction: "Animals must not be considered pets. They are living beings and they are our equals. Each interaction with any animal is a beautiful and unique experience.",
  start_date: '2021-06-01',
  end_date: '2021-07-31',
  rate_cents: 3000,
  user: user15
)

nanny16 = PetNanny.create!(
  introduction: "Animals must not be considered pets. They are living beings and they are our equals. Each interaction with any animal is a beautiful and unique experience.",
  start_date: '2021-06-01',
  end_date: '2021-07-31',
  rate_cents: 3000,
  user: user16
)

nanny17 = PetNanny.create!(
  introduction: "Animals must not be considered pets. They are living beings and they are our equals. Each interaction with any animal is a beautiful and unique experience.",
  start_date: '2021-06-01',
  end_date: '2021-07-31',
  rate_cents: 3000,
  user: user17
)

nanny18 = PetNanny.create!(
  introduction: "Animals must not be considered pets. They are living beings and they are our equals. Each interaction with any animal is a beautiful and unique experience.",
  start_date: '2021-06-01',
  end_date: '2021-07-31',
  rate_cents: 3000,
  user: user18
)

nanny19 = PetNanny.create!(
  introduction: "Animals must not be considered pets. They are living beings and they are our equals. Each interaction with any animal is a beautiful and unique experience.",
  start_date: '2021-06-01',
  end_date: '2021-07-31',
  rate_cents: 3000,
  user: user19
)

nanny20 = PetNanny.create!(
  introduction: "Animals must not be considered pets. They are living beings and they are our equals. Each interaction with any animal is a beautiful and unique experience.",
  start_date: '2021-06-01',
  end_date: '2021-07-31',
  rate_cents: 3000,
  user: user20
)

nanny21 = PetNanny.create!(
  introduction: "Animals must not be considered pets. They are living beings and they are our equals. Each interaction with any animal is a beautiful and unique experience.",
  start_date: '2021-06-01',
  end_date: '2021-07-31',
  rate_cents: 3000,
  user: user21
)

nanny22 = PetNanny.create!(
  introduction: "Animals must not be considered pets. They are living beings and they are our equals. Each interaction with any animal is a beautiful and unique experience.",
  start_date: '2021-06-01',
  end_date: '2021-07-31',
  rate_cents: 3000,
  user: user22
)

nanny23 = PetNanny.create!(
  introduction: "Animals must not be considered pets. They are living beings and they are our equals. Each interaction with any animal is a beautiful and unique experience.",
  start_date: '2021-06-01',
  end_date: '2021-07-31',
  rate_cents: 3000,
  user: user23
)

nanny24 = PetNanny.create!(
  introduction: "Animals must not be considered pets. They are living beings and they are our equals. Each interaction with any animal is a beautiful and unique experience.",
  start_date: '2021-06-01',
  end_date: '2021-07-31',
  rate_cents: 3000,
  user: user24
)

nanny25 = PetNanny.create!(
  introduction: "Animals must not be considered pets. They are living beings and they are our equals. Each interaction with any animal is a beautiful and unique experience.",
  start_date: '2021-06-01',
  end_date: '2021-07-31',
  rate_cents: 3000,
  user: user25
)

nanny26 = PetNanny.create!(
  introduction: "Animals must not be considered pets. They are living beings and they are our equals. Each interaction with any animal is a beautiful and unique experience.",
  start_date: '2021-06-01',
  end_date: '2021-07-31',
  rate_cents: 3000,
  user: user26
)

nanny27 = PetNanny.create!(
  introduction: "Animals must not be considered pets. They are living beings and they are our equals. Each interaction with any animal is a beautiful and unique experience.",
  start_date: '2021-06-01',
  end_date: '2021-07-31',
  rate_cents: 3000,
  user: user27
)

nanny28 = PetNanny.create!(
  introduction: "Animals must not be considered pets. They are living beings and they are our equals. Each interaction with any animal is a beautiful and unique experience.",
  start_date: '2021-06-01',
  end_date: '2021-07-31',
  rate_cents: 3000,
  user: user28
)

nanny29 = PetNanny.create!(
  introduction: "Animals must not be considered pets. They are living beings and they are our equals. Each interaction with any animal is a beautiful and unique experience.",
  start_date: '2021-06-01',
  end_date: '2021-07-31',
  rate_cents: 3000,
  user: user29
)

nanny30 = PetNanny.create!(
  introduction: "Animals must not be considered pets. They are living beings and they are our equals. Each interaction with any animal is a beautiful and unique experience.",
  start_date: '2021-06-01',
  end_date: '2021-07-31',
  rate_cents: 3000,
  user: user30
)

# User.all.each do |user|
# file = File.open("app/assets/images/catman.jpg")
# user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
# end
# pet1 = Pet.create!(
#   name: "Spike",
#   vet_record: "Recovered from parvovirus",
#   medications: "none",
#   dietary: "poultry",
#   user: user1
# )

# pet2 = Pet.create!(
#   name: "Carlota",
#   vet_record: "No allergies",
#   medications: "none",
#   dietary: "poultry",
#   user: user2
# )

# pet3 = Pet.create!(
#   name: "Whiskey",
#   vet_record: "none",
#   medications: "none",
#   dietary: "poultry",
#   user: user3
# )