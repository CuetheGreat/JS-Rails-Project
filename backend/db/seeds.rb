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
pet_imge = [
  'https://images.dog.ceo/breeds/bulldog-english/jager-2.jpg',
  'https://images.dog.ceo/breeds/finnish-lapphund/mochilamvan.jpg',
  'https://images.dog.ceo/breeds/australian-shepherd/pepper.jpg',
  'https://images.dog.ceo/breeds/brabancon/n02112706_107.jpg',
  'https://images.dog.ceo/breeds/havanese/00100trPORTRAIT_00100_BURST20191103202017556_COVER.jpg',
  'https://images.dog.ceo/breeds/spaniel-irish/n02102973_2209.jpg',
  'https://images.dog.ceo/breeds/frise-bichon/stevebaxter_bichon_frise.jpg',
  'https://images.dog.ceo/breeds/hound-blood/n02088466_7004.jpg',
  'https://images.dog.ceo/breeds/terrier-norwich/n02094258_73.jpg',
  'https://images.dog.ceo/breeds/retriever-flatcoated/n02099267_2121.jpg',
  'https://images.dog.ceo/breeds/affenpinscher/n02110627_3144.jpg',
  'https://images.dog.ceo/breeds/bulldog-english/murphy.jpg',
  'https://images.dog.ceo/breeds/poodle-standard/n02113799_2466.jpg',
  'https://images.dog.ceo/breeds/havanese/00100trPORTRAIT_00100_BURST20191112123933390_COVER.jpg',
  'https://images.dog.ceo/breeds/terrier-silky/n02097658_8053.jpg'
]

pet_names.each_with_index do |name, index|
  Pet.create(name: name, age: rand(1...9), kind: 'Dog',
             breed: (if index.even?
                       'Pitbull'
                     else
                       ((index % 3).zero? ? 'Rottwilder' : 'Golden Retriever')
                     end),
             image: pet_imge[index])
end

Meal.all.each_with_index do |meal, index|
  PetMeal.create(meal: meal, pet: Pet.find_by(id: (10 - index)))
end
