class Meal < ApplicationRecord
  has_many :pet_meals
  has_many :pets, through: :pet_meals
end
