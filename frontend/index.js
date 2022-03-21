document.addEventListener('DOMContentLoaded', () => {
  formButton = document.querySelector('#show-form-btn')
  formButton.addEventListener('click', e => {
    formField = document.querySelector('#form-area')

    formField.hidden = !formField.hidden
    formButton.innerHTML = formField.hidden
      ? 'Add New Puppy'
      : 'Cancel Adding New Puppy'
  })

  petForm = document.querySelector('form')
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

    options = {
      method: 'POST',
      headers: {
        Accept: 'application/json',
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(pet_object)
    }

    fetch('http://127.0.0.1:3000/pets', options).then(res => {
      return res.json()
    })
  })

  let pets = Pet.fetchAllPets()
  pets.then(objs => {
    for (const obj of objs) {
      let pet = new Pet(obj)

      petContainter = document.querySelector('.pets-container')
      petContainter.appendChild(pet.createContainer())

      let meals = Meal.fetchMealsFor(pet)
      meals.then(meal_objs => {
      for(const meal_obj of meal_objs){
        let meal = new Meal(meal_objs)

        let container = document.querySelector(`.pet_id_${pet.id}`)
            container.append(meal.createCard())
        }
      })


      // Create Container for pet divs

    }
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

  static find_by_id = async id => {
    return await fetch(`http://127.0.0.1:3000/pets/${id}`)
      .then(res => res.json())
      .then(obj => {
        return new Pet(obj)
      })
  }

  static fetchAllPets = async () => {
    return fetch(`http://127.0.0.1:3000/pets/`)
      .then(res => res.json())
      .catch(error => console.log(error.message))
  }



  createContainer () {
    let container = document.createElement('div')
    container.className = 'container'
    container.id = `pet_id_${this.id}`
    // append pet card to container
    container.appendChild(this.createCard())
    return container
  }

  createCard () {
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
  constructor (meal) {
    this.id = meal.id
  }

  static fetchMealsFor = async (pet) => {
  return fetch(`http://127.0.0.1:3000/pets/${pet.id}/meals`)
    .then(res => res.json())
    .catch(error => console.log(error.message))
}

}

class PetMeal {
  constructor (pet, meal) {
    this.pet = new Pet(pet)
    this.meal = new Meal(meal)
  }
}
