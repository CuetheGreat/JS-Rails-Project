document.addEventListener('DOMContentLoaded', () => {
// Toggle Visibiity of the add pet form
  petFormButton = document.querySelector('#toggle-pet-form-btn')
  petFormButton.addEventListener('click', e => {
    formField = document.querySelector('#pet-form-area')
    formField.hidden = !formField.hidden
    petFormButton.innerHTML = formField.hidden
      ? 'Add New Puppy'
      : 'Cancel Adding New Puppy'
  })
  // Handle the result of pet creation
  petForm = document.querySelector('form')
  petForm.addEventListener('submit', e => {
    e.preventDefault()
    console.log(e.target.elements)
    // create pet object from form
    pet_object = {
      name: e.target.elements[0].value,
      age: e.target.elements[1].value,
      kind: e.target.elements[2].value,
      breed: e.target.elements[3].value,
      image: e.target.elements[4].value,
      meals_attributes: [
        {
          course: e.target.elements[5].value,
          name: e.target.elements[6].value,
          kind: e.target.elements[7].value,
          quantity: e.target.elements[8].value,
          measure: e.target.elements[9].value
        },
        {
          course: e.target.elements[10].value,
          name: e.target.elements[11].value,
          kind: e.target.elements[12].value,
          quantity: e.target.elements[13].value,
          measure: e.target.elements[14].value
        },
        {
          course: e.target.elements[15].value,
          name: e.target.elements[16].value,
          kind: e.target.elements[17].value,
          quantity: e.target.elements[18].value,
          measure: e.target.elements[19].value
        }
      ]
    }

    options = {
      method: 'POST',
      headers: {
        Accept: 'application/json',
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(pet_object)
    }
    // post request to pets api
    Pet.createPet(options)
      .then(obj => {
        let pet = new Pet(obj)
        petContainter = document.querySelector('.pets-container')
        petContainter.appendChild(pet.createContainer())
        let meals = Meal.fetchMealsFor(pet)
        meals.then(meal_objs => {
          for (const meal_obj of meal_objs) {
            let meal = new Meal(meal_obj)
            let container = document.querySelector(`#pet_id_${pet.id}`)
            container.appendChild(meal.createCard())
          }
        })
      })
      .then(() => {
      // ads delete function to newley created elements
        Pet.addDeleteFunction()
      })
  })

  Pet.fetchAllPets()
    .then(objs => {
      for (const obj of objs) {
        let pet = new Pet(obj)

        petContainter = document.querySelector('.pets-container')
        petContainter.appendChild(pet.createContainer())

        let meals = Meal.fetchMealsFor(pet)
        meals.then(meal_objs => {
          for (const meal_obj of meal_objs) {
            let meal = new Meal(meal_obj)

            let container = document.querySelector(`#pet_id_${pet.id}`)
            container.appendChild(meal.createCard())
          }
        })
      }
    })
    .then(() => {
      Pet.addDeleteFunction()
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
      .then(obj => new Pet(obj))
  }

  static fetchAllPets = async () => {
    return fetch(`http://127.0.0.1:3000/pets/`)
      .then(res => res.json())
      .catch(error => console.log(error.message))
  }

  static addDeleteFunction = () => {
    const buttons = document.querySelectorAll('.delete-pet')
    buttons.forEach(btn => {
      btn.addEventListener('click', async e => {
        const parent = e.target.parentNode

        await fetch(`http://127.0.0.1:3000/pets/${parent.className}`, {
          method: 'DELETE'
        }).then(obj => {
          parent.parentNode.remove()
        }).catch( error => console.log(error.message))
      })
    })
  }

  static createPet = async (options) => {
    return await fetch('http://127.0.0.1:3000/pets', options).then(res => res.json())

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
    let deleteButton = document.createElement('button')
    deleteButton.className = 'delete-pet'
    deleteButton.innerHTML = 'Delete Pet'
    petCard.appendChild(deleteButton)

    return petCard
  }
}

class Meal {
  constructor (meal) {
    this.id = meal.id
    this.name = meal.name
    this.kind = meal.kind
    this.quantity = meal.quantity
    this.measure = meal.measure
    this.course = meal.course
  }

  static fetchMealsFor = async pet => {
    return fetch(`http://127.0.0.1:3000/pets/${pet.id}/meals`)
      .then(res => res.json())
      .catch(error => console.log(error.message))
  }

  createCard () {
    let mealCard = document.createElement('div')
    mealCard.id = 'meal-card'
    mealCard.className = this.id

    let items = []

    let course = document.createElement('h3')
    course.innerHTML = `Name: ${this.course}`
    mealCard.append(course)

    let img = document.createElement('img')
    if (this.course === 'Breakfast') {
      img.src = ' https://cdn-icons-png.flaticon.com/512/3168/3168628.png'
    } else if (this.course === 'Lunch') {
      img.src = 'https://cdn-icons-png.flaticon.com/512/2082/2082045.png'
    } else {
      img.src =
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOivoby6uBpvMUQyAFIKBPUxHrT9rOJvLvMA&usqp=CAU'
    }
    mealCard.append(img)

    let name = document.createElement('h4')
    name.innerHTML = `Name: ${this.name}`
    mealCard.append(name)

    let kind = document.createElement('p')
    kind.innerHTML = `Breed: ${this.kind}`
    mealCard.append(kind)

    let quantity = document.createElement('p')
    quantity.innerHTML = `${this.quantity} ${this.measure}`
    mealCard.append(quantity)

    return mealCard
  }
}
