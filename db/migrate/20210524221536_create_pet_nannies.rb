class CreatePetNannies < ActiveRecord::Migration[6.0]
  def change
    create_table :pet_nannies do |t|
      t.text :introduction
      t.string :profile_picture

      t.timestamps
    end
  end
end
