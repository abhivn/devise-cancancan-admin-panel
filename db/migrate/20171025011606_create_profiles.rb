class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.text :address
      t.string :phone
      t.string :image
      t.integer :user_id

      t.timestamps
    end
  end
end
