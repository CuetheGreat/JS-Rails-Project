class AddImageColumnToPets < ActiveRecord::Migration[7.0]
  def change
    add_column :pets, :image, :string
  end
end
