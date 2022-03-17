class PetMeal < ApplicationRecord
  belongs_to :pet
  belongs_to :meal
end
