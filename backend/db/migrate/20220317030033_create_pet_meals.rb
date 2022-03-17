class CreatePetMeals < ActiveRecord::Migration[7.0]
  def change
    create_table :pet_meals do |t|
      t.references :pet, null: false, foreign_key: true
      t.references :meal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
