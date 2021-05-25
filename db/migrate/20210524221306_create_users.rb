class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.string :email
      t.string :profile_picture

      t.timestamps
    end
  end
end
