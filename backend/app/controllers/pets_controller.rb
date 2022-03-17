class PetsController < ApplicationController
  def index
    pets = Pet.all
    render json: pets.to_json({ except: %i[created_at updated_at] })
  end

  def show
    pet = Pet.find_by_id(params[:id])
    render json: PetsSerializer.new(pet).to_serialized_json
  end

  def create
    puts params
  end

  def update; end

  def destroy; end

  private

  def pets_params; end
end
