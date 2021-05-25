# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



pet1 = Pet.create!( 
  name: "Spike",
  vet_record: "Recovered from parvovirus",
  medication: "none",
  dietary: "poultry",
  profile_picture: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfMrZwXNHTlMVE-SymlzpcIL7mEBNV0ML9lw&usqp=CAU"
)

pet2 = Pet.create!( 
  name: "Carlota",
  vet_record: "No allergies",
  medication: "none",
  dietary: "poultry",
  profile_picture: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSukCzd_pp94Sydp7k83i6iQzAuUI9Kuvvr0A&usqp=CAU"
)

pet3 = Pet.create!( 
  name: "Whiskey",
  vet_record: "none",
  medication: "none",
  dietary: "poultry",
  profile_picture: "https://upload.wikimedia.org/wikipedia/commons/4/4d/Cat_November_2010-1a.jpg"
)