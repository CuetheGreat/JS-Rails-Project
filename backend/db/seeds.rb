# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

dog_meals = %w[ Alpo
                AvoDerm
                Beggin_Strips
                Beneful
                Bonio
                Dog_Chow
                Eukanuba
                Freshpet
                Friskies
                Frosty_Paws ]

dog_meals.each_with_index do |meal, index|
  Meal.create(name: meal, kind: (index.even? ? 'Dry' : 'Wet'), quantity: rand(0.5...3.0),
              measure: (index.even? ? 'Cups' : 'lbs'))
end

pet_names = %w[Bella Luna Lucy Daizy Zoe Lily Lola Bailey Stella Molly]

pet_names.each_with_index do |name, index|
  Pet.create(name: name, age: rand(1...9), kind: 'Dog',
             breed: (if index.even?
                       'Pitbull'
                     else
                       ((index % 3).zero? ? 'Rottwilder' : 'Golden Retriever')
                     end))
end

Meal.all.each_with_index do |meal, index|
  PetMeal.create(meal: meal, pet: Pet.find(index + 1))
end
