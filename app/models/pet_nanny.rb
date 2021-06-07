class PetNanny < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :introduction, :start_date, :end_date, presence: true
  monetize :rate_cents

  def reviews
    booking_ids = bookings.pluck(:id)
    PetNannyReview.where(booking_id: booking_ids)
  end
end
