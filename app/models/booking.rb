class Booking < ApplicationRecord
  has_many :pet_nanny_reviews
  has_many :pet_reviews
  belongs_to :pet_nanny
  belongs_to :pet
  belongs_to :user
end
