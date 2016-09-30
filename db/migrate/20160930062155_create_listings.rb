class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :image
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
