class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :vet_record
      t.string :medications
      t.string :dietary
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
