class Meal < ApplicationRecord
  belongs_to :pet
  before_create :round_up

  private

  def round_up
    self.quantity = quantity.ceil(2)
  end
end
