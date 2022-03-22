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
    pet = Pet.create(pets_params)
    render json: PetsSerializer.new(pet).to_serialized_json
  end

  def update
    pet = Pet.find_by(id: params[:id])
    pet.update(pets_params)
    render json: PetsSerializer.new(pet).to_serialized_json
  end

  def destroy
    pet = Pet.find_by(id: params[:id])
    pet.destroy
  end

  private

  def pets_params
    params.require(:pet).permit(:name, :age, :breed, :kind, :image,
                                meals_attributes: %i[course name kind quantity measure])
  end
end
