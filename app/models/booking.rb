class Booking < ApplicationRecord
  has_one :pet_nanny_review, dependent: :destroy
  has_one :pet_review, dependent: :destroy

  has_many :booking_updates, dependent: :destroy

  belongs_to :pet_nanny
  belongs_to :pet
  belongs_to :user
end
