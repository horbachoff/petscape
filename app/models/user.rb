class User < ApplicationRecord
  has_many :pet_nannies, dependent: :destroy
  has_many :pets, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def pet_nanny?
    pet_nannies.any?
  end
end
