class MealsController < ApplicationController
  def index
    pet = Pet.find_by(id: params[:pet_id])
    render json: pet.meals
  end
end
