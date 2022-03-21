class AddCourseToMeals < ActiveRecord::Migration[7.0]
  def change
    add_column :meals, :course, :string
  end
end
