class CreatePools < ActiveRecord::Migration[6.0]
  def change
    create_table :pools do |t|
      t.text :description
      t.string :street
      t.string :city
      t.string :zip_code
      t.string :category
      t.integer :qm
      t.integer :price_per_day
      t.integer :max_capacity
      t.references :user, null: false, foreign_key: true
      t.integer :rating

      t.timestamps
    end
  end
end
