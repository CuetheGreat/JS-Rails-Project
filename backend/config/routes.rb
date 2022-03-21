Rails.application.routes.draw do
  resources :pets do
    resources :meals
  end

  resources :meals
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
