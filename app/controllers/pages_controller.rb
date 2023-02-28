class PagesController < ApplicationController
  def home; end

  def menu
    @photo_array = []
    Food.all.each do |food|
      food.photos.each do |photo|
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
