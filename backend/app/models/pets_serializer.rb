class PetsSerializer
  def initialize(pet_object)
    @pet = pet_object
  end

  def to_serialized_json
    options = {
      include: {
        meals: {
          only: %i[name kind]
        }
      },
      except: %i[updated_at created_at]
    }
    @pet.to_json(options)
  end

  def serialize_array
    options = {
      include: {
        meals: {
          only: %i[name kind count]
        }
      },
      except: %i[updated_at created_at]
    }

    @pet.map do |pet|
      pet.to_json(options)
    end
  end
end
