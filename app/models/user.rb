class User < ApplicationRecord
  has_many :pet_nannies, dependent: :destroy
  has_many :pets, dependent: :destroy
  has_many :bookings, dependent: :destroy
end
