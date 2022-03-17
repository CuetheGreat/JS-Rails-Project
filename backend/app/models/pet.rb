class Pet < ApplicationRecord
  has_many :pet_meals
  has_many :meals, through: :pet_meals
end
