class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.integer :user_id
      t.string :name
      t.text :description
      t.string :address
      t.string :city
      t.string :notes

      t.timestamps
    end
  end
end
