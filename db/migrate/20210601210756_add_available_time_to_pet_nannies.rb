class AddAvailableTimeToPetNannies < ActiveRecord::Migration[6.0]
  def change
    add_column :pet_nannies, :start_date, :date
    add_column :pet_nannies, :end_date, :date
  end
end
