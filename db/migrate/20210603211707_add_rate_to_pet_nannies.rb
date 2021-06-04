class AddRateToPetNannies < ActiveRecord::Migration[6.0]
  def change
    add_monetize :pet_nannies, :rate, currency: { present: false }
  end
end
