class MealsController < ApplicationController
  def index
    if params[:pet_id]
      pet = Pet.find_by(params[:pet_id])
      meals = pet.meals
      render json: meals
    else
      render json: Meal.all
    end
  end
end