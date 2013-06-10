class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.integer :restaurant_id
      t.string :name
      t.string :description
      t.string :notes

      t.timestamps
    end
  end
end
