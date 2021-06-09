class AddColumnsToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :amount_cents, :integer
    add_column :bookings, :checkout_session_id, :string
  end
end
