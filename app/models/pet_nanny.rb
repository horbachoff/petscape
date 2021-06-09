class PetNanny < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :introduction, :start_date, :end_date, presence: true
  monetize :rate_cents
  has_many :orders, dependent: :destroy
  def reviews
    booking_ids = bookings.pluck(:id)
    PetNannyReview.where(booking_id: booking_ids)
  end
end
