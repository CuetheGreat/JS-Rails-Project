class MealsController < ApplicationController
  def index
    if params[:pet_id]
      pet = Pet.find_by(id: params[:pet_id])
      render json: pet.meals
    else
      render json: Meal.all
    end
  end
end
