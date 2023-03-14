class MenusController < ApplicationController

  def menu
    @main_courses = Food.where(menu_category: 'main course')
    @snacks = Food.where(menu_category: 'snack')
    @desserts = Food.where(menu_category: 'dessert')
    @set_meals = SetMeal.all
    @drinks = Drink.all
  end

  def getdish
    @dish = Food.find(params[:name]) || Drink.find(params[:name]) || SetMeal.find(params[:name])
    raise
    respond_to do |format|
      format.js # {render :action => "base_64_response" }
    end
  end
end
