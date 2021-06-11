class CreateBookingUpdates < ActiveRecord::Migration[6.0]
  def change
    create_table :booking_updates do |t|
      t.text :content
      t.references :booking, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
