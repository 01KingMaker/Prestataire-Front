Rails.application.routes.draw do
  get 'roads/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'start#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
