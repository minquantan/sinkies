class PagesController < ApplicationController
  def home; end

  def space
    @images = GalleryImage.all
  end

  def promotion; end

  def about; end

  def contact; end

  def reservations; end
end
