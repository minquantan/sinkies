class AddAdviceToFoods < ActiveRecord::Migration[6.1]
  def change
    add_column :foods, :advice, :text
  end
end
