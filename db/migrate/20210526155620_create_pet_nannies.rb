class CreatePetNannies < ActiveRecord::Migration[6.0]
  def change
    create_table :pet_nannies do |t|
      t.text :introduction
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
