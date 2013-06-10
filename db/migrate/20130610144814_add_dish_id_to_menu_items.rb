class AddDishIdToMenuItems < ActiveRecord::Migration
  def change
    add_column :menu_items, :dish_id, :integer
  end
end
