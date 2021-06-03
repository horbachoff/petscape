class BookingUpdate < ApplicationRecord
  belongs_to :booking

  has_one_attached :media
end
