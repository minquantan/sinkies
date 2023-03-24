class PagesController < ApplicationController
  def home; end

  def space
    @images = GalleryImage.all
  end

  def promotion
    @dry_laksa = Food.find(2)
    @laksa = Food.find(1)
  end

  def about; end

  def contact
    @main_courses = Food.where(menu_category: 'main course')
    @snacks = Food.where(menu_category: 'snack')
    @desserts = Food.where(menu_category: 'dessert')
    @set_meals = SetMeal.all
    @drinks = Drink.all
  end

  def reservations; end
end
