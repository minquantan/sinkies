class MenusController < ApplicationController
  def menu
    @main_courses = Food.where(menu_category: 'main course')
    @snacks = Food.where(menu_category: 'snack')
    @desserts = Food.where(menu_category: 'dessert')
    @set_meals = SetMeal.all
    @drinks = Drink.all
  end
end
