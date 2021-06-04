class User < ApplicationRecord
  has_many :pet_nannies, dependent: :destroy
  has_many :pets, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :orders
  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def pet_nanny?
    pet_nannies.any?
  end

  def self.pet_nannies
    user_ids = PetNanny.pluck(:user_id)
    User.where(id: user_ids)
  end
end
