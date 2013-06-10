class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.string :name
      t.string :description
      t.string :note
      t.integer :menu_id
      t.float :vn_price
      t.float :us_price
      t.string :other_price

      t.timestamps
    end
  end
end
