Rails.application.routes.draw do
  #get 'roads/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'roads/changerFormule'
  get 'roads/changerFormuleExecute'
  get 'prestataires/getFirst'
  root 'roads#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
