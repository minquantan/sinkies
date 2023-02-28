class SetMeal < ApplicationRecord
  has_many :foods
  has_many :drinks
  has_many_attached :photos
end
