class User < ApplicationRecord
  has_many :pet_nannies
  has_many :pets
  has_many :bookings
end
