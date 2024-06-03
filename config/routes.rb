Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'pages#index', as: 'index'

  get 'airports/show' => 'airports#show', as: 'airports'
  get 'airports/sort' => 'airports#sort', as: 'sort_airports'
end
