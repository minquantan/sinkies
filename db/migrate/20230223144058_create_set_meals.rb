class CreateSetMeals < ActiveRecord::Migration[6.1]
  def change
    create_table :set_meals do |t|
      t.string :menu_category
      t.string :name
      t.integer :price
      t.text :description
      t.references :food, foreign_key: true
      t.references :drink, foreign_key: true

      t.timestamps
    end
  end
end
