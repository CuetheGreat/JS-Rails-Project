document.addEventListener('DOMContentLoaded', () => {
  body = document.querySelector('body')

  fetch('http://127.0.0.1:3000/pets')
    .then(res => res.json())
    .then(pets => {
      console.log(pets)
      for (const pet of pets) {
        petCard = document.getElementById('pets')
        petCard.appendChild(createPets(pet))
      }
    })

  formButton = document.querySelector('#show-form-button')
  formButton.addEventListener('click', e => {
    formField = document.querySelector('#form-area')

    formField.hidden = !formField.hidden
    formButton.innerHTML = formField.hidden
      ? 'Add New Puppy'
      : 'Cancel Adding New Puppy'
  })
})

function createPets (pet) {
  let petCard = document.createElement('div')
  petCard.id = 'pet-card'

  let items = []
let img = document.createElement('img')
img.src =  'https://images.dog.ceo/breeds/labrador/yellowlab-grace.png'
items.push(img)

  let name = document.createElement('h3')
  name.innerHTML = `Name: ${pet.name}`
  items.push(name)

  let breed = document.createElement('strong')
  breed.innerHTML = `Breed: ${pet.breed}`
  items.push(breed)

  let age = document.createElement('p')
  age.innerHTML = `Age: ${pet.age}`
  items.push(age)


  for (const item of items) {
    console.log(item)
    petCard.appendChild(item)
  }

  return petCard
}
