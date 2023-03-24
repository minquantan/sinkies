class AddAdviceToSetMeals < ActiveRecord::Migration[6.1]
  def change
    add_column :set_meals, :advice, :text
  end
end
