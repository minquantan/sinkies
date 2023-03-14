class PagesController < ApplicationController
  def home; end



  def space; end

  def promotion
    @dry_laksa = Food.find(2)
    @laksa = Food.find(1)
  end

  def about; end
  def contact; end
  def reservations; end
end
