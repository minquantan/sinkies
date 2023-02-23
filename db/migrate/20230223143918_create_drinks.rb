class CreateDrinks < ActiveRecord::Migration[6.1]
  def change
    create_table :drinks do |t|
      t.string :menu_category
      t.string :name
      t.integer :price
      t.text :description

      t.timestamps
    end
  end
end
