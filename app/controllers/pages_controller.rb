class PagesController < ApplicationController
  def home; end

  def menu
    @photo_array = []
    Drink.all.each do |drink|
      drink.photos.each do |photo|
        @photo_array << photo
      end
    end
  end

  def space; end
  def promotion; end
  def about; end
  def contact; end
  def reservations; end
end
