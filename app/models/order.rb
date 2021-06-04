class Order < ApplicationRecord
  belongs_to :user
  belongs_to :pet_nanny

  monetize :amount_cents
end
