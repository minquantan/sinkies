class AddAdviceToDrinks < ActiveRecord::Migration[6.1]
  def change
    add_column :drinks, :advice, :text
  end
end
