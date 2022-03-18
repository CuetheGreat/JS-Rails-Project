document.addEventListener('DOMContentLoaded', () => {
  body = document.querySelector('body')

  fetch('http://127.0.0.1:3000/pets')
    .then(res => res.json())
    .then(pets => {
      for (const pet of pets) {
        petContainer = document.getElementById('pets-container')
        let pet_obj = new Pet(pet)
        petContainer.appendChild(pet_obj.createCard(document))
      }
    })

  formButton = document.querySelector('#show-form-btn')
  formButton.addEventListener('click', e => {
    formField = document.querySelector('#form-area')

    formField.hidden = !formField.hidden
    formButton.innerHTML = formField.hidden
      ? 'Add New Puppy'
      : 'Cancel Adding New Puppy'
  })

  petForm = document.querySelector('form')
  let formData = new FormData(petForm)

  petForm.addEventListener('submit', e => {
    e.preventDefault()
    pet_object = {
      name: e.target.elements[0].value,
      age: e.target.elements[1].value,
      kind: e.target.elements[2].value,
      breed: e.target.elements[3].value,
      image: e.target.elements[4].value
    }

    console.log(pet_object)

    options ={
      method: 'POST',
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(pet_object)
    }

    fetch( 'http://127.0.0.1:3000/pets' , options)
      .then(res => console.log(res.json()))

  })
})

class Pet {
  constructor (pet) {
    this.id = pet.id
    this.name = pet.name
    this.age = pet.age
    this.kind = pet.kind
    this.breed = pet.breed
    this.img = pet.image
  }

  createCard (document) {
    let petCard = document.createElement('div')
    petCard.id = 'pet-card'
    petCard.className = this.id

    let items = []

    let img = document.createElement('img')
    img.src = this.img
    items.push(img)

    let name = document.createElement('h3')
    name.innerHTML = `Name: ${this.name}`
    items.push(name)

    let breed = document.createElement('strong')
    breed.innerHTML = `Breed: ${this.breed}`
    items.push(breed)

    let age = document.createElement('p')
    age.innerHTML = `Age: ${this.age}`
    items.push(age)

    for (const item of items) {
      petCard.appendChild(item)
    }

    return petCard
  }
}

class Meal {
  constructor (meal) {}
}

class PetMeal {
  constructor (pet, meal) {
    this.pet = new Pet(pet)
    this.meal = new Meal(meal)
  }
}
