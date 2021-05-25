class CreatePetNannyReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :pet_nanny_reviews do |t|
      t.text :content
      t.integer :rating

      t.timestamps
    end
  end
end
