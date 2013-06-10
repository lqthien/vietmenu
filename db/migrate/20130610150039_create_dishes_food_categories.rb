class CreateDishesFoodCategories < ActiveRecord::Migration
  def change
    create_table :dishes_food_categories do |t|
      t.integer :dish_id
      t.integer :food_category_id

      t.timestamps
    end
  end
end
