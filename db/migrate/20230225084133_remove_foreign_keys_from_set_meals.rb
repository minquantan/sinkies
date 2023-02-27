class RemoveForeignKeysFromSetMeals < ActiveRecord::Migration[6.1]
  def change
    remove_reference :set_meals, :drink, index: true
    remove_reference :set_meals, :food, index: true
  end
end
