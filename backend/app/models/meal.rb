class Meal < ApplicationRecord
  has_many :pet_meals
  has_many :pets, through: :pet_meals

  before_create :round_up

  private

  def round_up
    self.quantity = quantity.ceil(2)
  end
end
