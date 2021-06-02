class PetNanny < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :introduction, :start_date, :end_date, :city, presence: true
end
