class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :short_description
      t.text :description

      t.timestamps
    end
  end
end
