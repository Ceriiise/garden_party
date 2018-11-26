class CreateGardens < ActiveRecord::Migration[5.2]
  def change
    create_table :gardens do |t|
      t.string :address
      t.string :name
      t.text :description
      t.integer :price
      t.boolean :barbecue
      t.boolean :swimming_pool
      t.integer :max_guests
      t.references :user, foreign_key: true
      t.boolean :booked

      t.timestamps
    end
  end
end
