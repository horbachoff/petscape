class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.text :vet_record
      t.text :medication
      t.text :dietary
      t.string :profile_picture

      t.timestamps
    end
  end
end
