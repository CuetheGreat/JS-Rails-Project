class CreateMeals < ActiveRecord::Migration[7.0]
  def change
    create_table :meals do |t|
      t.string :name
      t.string :kind
      t.float :quantity
      t.string :measure
      t.integer :pet_id

      t.timestamps
    end
  end
end
