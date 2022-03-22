class Pet < ApplicationRecord
  has_many :meals
  accepts_nested_attributes_for :meals, reject_if: ->(attributes) { attributes['name'].blank? }
end
