class Pet < ApplicationRecord
  belongs_to :user

  has_many :bookings

  has_one_attached :photo

  validates_presence_of :name, :vet_record, :medications, :dietary
end
