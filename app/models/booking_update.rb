class BookingUpdate < ApplicationRecord
  belongs_to :booking
  belongs_to :user

  has_one_attached :media
end
