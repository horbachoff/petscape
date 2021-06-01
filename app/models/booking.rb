class Booking < ApplicationRecord
  has_one :pet_nanny_review
  has_many :pet_reviews
  belongs_to :pet_nanny
  belongs_to :pet
  belongs_to :user
end
