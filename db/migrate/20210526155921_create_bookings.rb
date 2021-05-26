class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :star_time
      t.date :end_time
      t.references :pet_nanny, null: false, foreign_key: true
      t.references :pet, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :status, default: "pending"

      t.timestamps
    end
  end
end
