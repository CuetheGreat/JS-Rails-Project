# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

dog_names = %w[
  Abigail
  Ace
  Adam
  Addie
  Admiral
  Aggie
  Aires
  Aj
  Ajax
  Aldo
  Alex
  Alexus
  Alf
  Alfie
  Allie
  Ally
  Amber
  Amie
  Amigo
  Amos
  Amy
  Andy
  Angel
  Angus
  Annie
  Apollo
  April
  Archie
  Argus
  Aries
  Armanti
  Arnie
  Arrow
  Ashes
  Ashley
  Astro
  Athena
  Atlas
  Audi
  Augie
  Aussie
  Austin
  Autumn
  Axel
  Axle
  Babbles
  Babe
  Baby
  Baby-doll
  Babykins
  Bacchus
  Bailey
  Bam-bam
  Bambi
  Bandit
  Banjo
  Barbie
  Barclay
  Barker
  Barkley
  Barley
  Barnaby
  Barney
  Baron
  Bart
  Basil
  Baxter
  Bb
  Beamer
  Beanie
  Beans
  Bear
  Beau
  Beauty
  Beaux
  Bebe
  Beetle
  Bella
  Belle
  Ben
  Benji
  Benny
  Benson
  Bentley
  Bernie
  Bessie
  Biablo
  Bibbles
  Big Boy
  Big Foot
  Biggie
  Billie
  Billy
  Bingo
  Binky
  Birdie
  Birdy
  Biscuit
  Bishop
  Gus
  Guy
  Gypsy
  Hailey
  Haley
  Hallie
  Hamlet
  Hammer
  Hank
  Hanna
  Hannah
  Hans
  Happy
  Hardy
  Harley
  Harpo
  Harrison
  Harry
  Harvey
  Heather
  Heidi
  Henry
  Hercules
  Hershey
  Higgins
  Hobbes
  Holly
  Homer
  Honey
  Honey-Bear
  Hooch
  Hoover
  Hope
  Houdini
  Howie
  Hudson
  Huey
  Hugh
  Hugo
  Humphrey
  Hunter
  India
  Indy
  Iris
  Isabella
  Isabelle
  Itsy
  Itsy-bitsy
  Ivory
  Ivy
  Izzy
  Jack
  Jackie
  Jackpot
  Jackson
  Jade
  Jagger
  Jags
  Jaguar
  Jake
  Jamie
  Jasmine
  Jasper
  Jaxson
  Jazmie
  Jazz
  Jelly
  Jelly-bean
  Jenna
  Jenny
  Jerry
  Jersey
  Jess
  Jesse
  Jesse James
  Jessie
  Jester
  Jet
  Jethro
  Jett
  Jetta
  Jewel
  Jewels
  Jimmy
  Jingles
  JJ
  Joe
  Joey
  Johnny
  Jojo
  Joker
  Jolie
  Jolly
  Jordan
  Josie
  Joy
  JR
  Judy
  Julius
  June
  Misty
  Mitch
  Mittens
  Mitzi
  Mitzy
  Mo
  Mocha
  Mollie
  Molly
  Mona
  Muffy
  Nakita
  Nala
  Nana
  Natasha
  Nellie
  Nemo
  Nena
  Peanut
  Peanuts
  Pearl
  Pebbles
  Penny
  Phoebe
  Phoenix
  Sara
  Sarah
  Sasha
  Sassie
  Sassy
  Savannah
  Scarlett
  Shasta
  Sheba
  Sheena
  Shelby
  Shelly
  Sienna
  Sierra
  Silky
  Silver
  Simone
  Sissy
  Skeeter
  Sky
  Skye
  Skyler
  Waldo
  Wallace
  Wally
  Walter
  Wayne
  Weaver
  Webster
  Wesley
  Westie
]

food_brands = [
  'Acana Grain-Free',
  'Annamaet Grain-Free ',
  'Artemis Fresh Mix  (1)',
  'Before Grain',
  'Blue Buffalo Wilderness',
  'By Nature Organics',
  'California Natural Grain-Free',
  'Canidae Grain-Free  (1)',
  'Canine Caviar Grain-Free',
  'Castor and Pollux Organix',
  'Dogswell Nutrisca',
  'Earthborn Holistic Grain-Free',
  'EVO',
  'Fromm Four Star Nutritionals Grain-Free (4)',
  'Go Natural Grain-Free',
  'Holistic Blend Grain Free (5)',
  'Horizon Legacy',
  'Natures Variety Instinct',
  'Orijen',
  'Pinnacle Grain-Free',
  'Premium Edge',
  'Solid Gold',
  'Taste of the Wild',
  'TimberWolf Organics',
  'Wellness Core',
  'Wysong'
]

pet_image = [
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
  'https://images.dog.ceo/breeds/terrier-silky/n02097658_8053.jpg',
  'https://images.dog.ceo/breeds/bulldog-english/bunz.jpg',
  'https://images.dog.ceo/breeds/elkhound-norwegian/n02091467_1760.jpg',
  'https://images.dog.ceo/breeds/hound-ibizan/n02091244_3552.jpg',
  'https://images.dog.ceo/breeds/finnish-lapphund/mochilamvan.jpg',
  'https://images.dog.ceo/breeds/cotondetulear/100_2397.jpg',
  'https://images.dog.ceo/breeds/pug/n02110958_7698.jpg',
  'https://images.dog.ceo/breeds/briard/n02105251_1676.jpg',
  'https://images.dog.ceo/breeds/retriever-chesapeake/n02099849_727.jpg',
  'https://images.dog.ceo/breeds/spaniel-japanese/n02085782_2939.jpg',
  'https://images.dog.ceo/breeds/eskimo/n02109961_1076.jpg',
  'https://images.dog.ceo/breeds/basenji/n02110806_1841.jpg',
  'https://images.dog.ceo/breeds/terrier-cairn/n02096177_11415.jpg',
  'https://images.dog.ceo/breeds/terrier-scottish/n02097298_10965.jpg',
  'https://images.dog.ceo/breeds/terrier-american/n02093428_11926.jpg',
  'https://images.dog.ceo/breeds/hound-blood/n02088466_2030.jpg',
  'https://images.dog.ceo/breeds/saluki/n02091831_1512.jpg',
  'https://images.dog.ceo/breeds/cattledog-australian/IMG_4379.jpg',
  'https://images.dog.ceo/breeds/terrier-dandie/n02096437_335.jpg',
  'https://images.dog.ceo/breeds/bulldog-boston/n02096585_3697.jpg',
  'https://images.dog.ceo/breeds/brabancon/n02112706_1306.jpg',
  'https://images.dog.ceo/breeds/papillon/n02086910_5017.jpg',
  'https://images.dog.ceo/breeds/hound-walker/n02089867_1352.jpg',
  'https://images.dog.ceo/breeds/briard/n02105251_8643.jpg',
  'https://images.dog.ceo/breeds/labrador/n02099712_3185.jpg',
  'https://images.dog.ceo/breeds/leonberg/n02111129_4477.jpg',
  'https://images.dog.ceo/breeds/pitbull/20190710_143021.jpg',
  'https://images.dog.ceo/breeds/clumber/n02101556_2715.jpg',
  'https://images.dog.ceo/breeds/appenzeller/n02107908_4704.jpg',
  'https://images.dog.ceo/breeds/pembroke/n02113023_187.jpg',
  'https://images.dog.ceo/breeds/ovcharka-caucasian/IMG_20191130_160405.jpg',
  'https://images.dog.ceo/breeds/mastiff-english/1.jpg',
  'https://images.dog.ceo/breeds/mastiff-tibetan/n02108551_8943.jpg',
  'https://images.dog.ceo/breeds/wolfhound-irish/n02090721_272.jpg',
  'https://images.dog.ceo/breeds/terrier-westhighland/n02098286_5814.jpg',
  'https://images.dog.ceo/breeds/husky/n02110185_353.jpg',
  'https://images.dog.ceo/breeds/spaniel-cocker/IMG_20181221_161745_654.jpg',
  'https://images.dog.ceo/breeds/cattledog-australian/IMG_1211.jpg',
  'https://images.dog.ceo/breeds/bullterrier-staffordshire/n02093256_225.jpg',
  'https://images.dog.ceo/breeds/ovcharka-caucasian/IMG_20190601_200814.jpg',
  'https://images.dog.ceo/breeds/dingo/n02115641_10261.jpg',
  'https://images.dog.ceo/breeds/poodle-toy/n02113624_3344.jpg',
  'https://images.dog.ceo/breeds/vizsla/n02100583_11473.jpg',
  'https://images.dog.ceo/breeds/terrier-russell/iguet1.jpeg',
  'https://images.dog.ceo/breeds/terrier-scottish/n02097298_6276.jpg',
  'https://images.dog.ceo/breeds/brabancon/n02112706_977.jpg',
  'https://images.dog.ceo/breeds/frise-bichon/jh-ezio-1.jpg',
  'https://images.dog.ceo/breeds/retriever-curly/n02099429_2186.jpg',
  'https://images.dog.ceo/breeds/terrier-cairn/n02096177_5255.jpg',
  'https://images.dog.ceo/breeds/terrier-australian/n02096294_261.jpg',
  'https://images.dog.ceo/breeds/malinois/n02105162_175.jpg'
]
dog_breeds = [
  'Airedale Terrier',
  'Akita',
  'Alaskan Malamute',
  'American Bulldog ',
  'American Bully (Standard)',
  'American Eskimo Dog (Miniature)',
  'American Eskimo Dog (Standard)',
  'Am. Staffordshire Terrier',
  'American Pit Bull Terrier',
  'Australian Cattle Dog (Heeler)',
  'Australian Kelpie',
  'Australian Shepherd',
  'Austrialian Terrier',
  'Barbet',
  'Basenji',
  'Basset Hound',
  'Beagle',
  'Beauceron',
  'Bedlington Terrier',
  'Belgian Malinois',
  'Belgian Tervuren',
  'Bernese Mountain Dog',
  'Bichon Frise',
  'Black and Tan Coonhound',
  'Bloodhound',
  'Bluetick Coonhound',
  'Boerboel',
  'Border Collie',
  'Border Terrier',
  'Boston Terrier',
  'Bouvier des Flandres',
  'Boxer',
  'Boykin Spaniel',
  'Bracco Italiano ',
  'Briard',
  'Brittany',
  'Bull Terrier (Standard)',
  'Bull Terrier (Miniature)',
  'Bulldog',
  'Bullmastiff',
  'Cairn Terrier',
  'Cane Corso',
  'Cardigan Welsh Corgi',
  'Catahoula Leopard Dog',
  'Caucasian Shepherd (Ovcharka)',
  'Cavalier King Charles Spaniel',
  'Chesapeake Bay Retriever',
  'Chihuahua (Long hair)',
  'Chihuahua (Smooth)',
  'Chinese Crested',
  'Chinese Shar-Pei',
  'Chinook',
  'Chow Chow',
  'Clumber Spaniel',
  'Cocker Spaniel (American)',
  'Cocker Spaniel (English)',
  'Collie (Smooth)',
  'Collie (Rough)',
  'Coton De Tulear',
  'Dachshund (smooth)',
  'Dachshund (wire/long haired)',
  'Dalmatian',
  'Doberman Pinscher',
  'Dogo Argentino',
  'Dutch Shepherd',
  'English Setter',
  'English Shepherd',
  'English Springer Spaniel',
  'English Toy Spaniel',
  'English Toy Terrier',
  'Eurasier',
  'Field Spaniel',
  'Finnish Lapphund',
  'Finnish Spitz',
  'Flat Coat Retriever',
  'French Bulldog',
  'German Pinscher',
  'German Shepherd Dog',
  'German Shorthaired Pointer',
  'Giant Schnauzer',
  'Glen of Imaal Terrier',
  'Golden Retriever',
  'Gordon Setter',
  'Great Dane',
  'Great Pyrenees',
  'Greyhound',
  'Harrier',
  'Havanese',
  'Irish Setter',
  'Irish Terrier',
  'Irish Wolfhound',
  'Italian Greyhound',
  'Japanese Chin',
  'Japanese Spitz',
  'Keeshond',
  'Komondor',
  'Kooikerhondje',
  'Kuvasz',
  'Labrador Retriever',
  'Lagotto Romagnolo',
  'Lancashire Heeler',
  'Leonberger',
  'Lhasa Apso',
  'Maltese',
  'Miniature American Shepherd',
  'Miniature Pinscher',
  'Miniature Schnauzer',
  'Newfoundland',
  'Norfolk Terrier',
  'Norwich Terrier',
  'Nova Scotia Duck Tolling Retriever',
  'Olde English Bulldogge',
  'Old English Sheepdog',
  'Papillon',
  'Parson Russell Terrier',
  'Patterdale Terrier (Smooth or Broken)',
  'Patterdale Terrier (Rough)',
  'Pekingese',
  'Pembroke Welsh Corgi',
  'Pharaoh Hound',
  'Plott',
  'Pointer (English)',
  'Pomeranian',
  'Poodle (Miniature)',
  'Poodle (Standard)',
  'Poodle (Toy)',
  'Portugese Water Dog',
  'Presa Canario',
  'Pug',
  'Puli',
  'Pumi',
  'Rat Terrier',
  'Redbone Coonhound',
  'Rhodesian Ridgeback',
  'Rottweiler',
  'Russian Toy',
  'Saluki',
  'Samoyed',
  'Schipperke',
  'Scottish Deerhound',
  'Scottish Terrier',
  'Shetland Sheepdog (Sheltie)',
  'Shiba Inu',
  'Shih Tzu',
  'Shiloh Shepherd',
  'Siberian Husky',
  'Silky Terrier',
  'Smooth Fox Terrier',
  'Soft Coated Wheaten Terrier',
  'Spanish Water Dog',
  'Spinone Italiano',
  'St. Bernard',
  'Staffordshire Bull Terrier',
  'Standard Schnauzer',
  'Swedish Vallhund ',
  'Thai Ridgeback',
  'Tibetan Mastiff',
  'Tibetan Spaniel',
  'Tibetan Terrier',
  'Toy Fox Terrier',
  'Treeing Walker Coonhound',
  'Vizsla',
  'Weimaraner',
  'Welsh Springer Spaniel',
  'West Highland White Terrier',
  'Whippet',
  'White Shepherd ',
  'Wire Fox Terrier',
  'Wirehaired Pointing Griffon',
  'Xoloitzcuintli',
  'Yorkshire Terrier'
]

2.times do
  meal = Meal.create(name: food_brands.sample, kind: %w[wet dry].sample, quantity: rand(0.5...3.0),
                     measure: %w[cups lb].sample, course: 'Breakfast')
  meal2 = Meal.create(name: food_brands.sample, kind: %w[wet dry].sample, quantity: rand(0.5...3.0),
                      measure: %w[cups lb].sample, course: 'Lunch')
  meal3 = Meal.create(name: food_brands.sample, kind: %w[wet dry].sample, quantity: rand(0.5...3.0),
                      measure: %w[cups lb].sample, course: 'Dinner')
  pet = Pet.create(name: dog_names.sample, age: rand(1...9), kind: 'Dog', breed: dog_breeds.sample,
                   image: pet_image.sample)

  PetMeal.create(meal: meal, pet: pet)
  PetMeal.create(meal: meal2, pet: pet)
  PetMeal.create(meal: meal3, pet: pet)
end
