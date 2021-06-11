class AddUserReferenceToBookingUpdates < ActiveRecord::Migration[6.0]
  def change
    add_reference :booking_updates, :user, null: false, foreign_key: true
  end
end
