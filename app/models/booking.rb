class Booking < ApplicationRecord
  has_one :pet_nanny_review
  has_one :pet_review
  belongs_to :pet_nanny
  belongs_to :pet
  belongs_to :user
end
