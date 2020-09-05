Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  get 'children', to: 'children#index', as: 'children'
  get 'children/new', to: 'children#new', as:'new_children'
  post 'children', to: 'children#create'
  get 'children/:id', to: 'children#show', as: 'child'
  

  get 'recipes', to: 'recipes#index', as: 'recipes'
  get 'recipes/new', to: 'recipes#new', as: 'new_recipes'
  post 'recipes', to: 'recipes#create'
  get 'recipes/:id', to: 'recipes#show', as: 'recipe'


  get 'food_items', to: 'food_items#index', as: 'food_items'
  get 'food_items/new', to: 'food_items#new', as: 'new_food_items'
  post 'food_items', to: 'food_items#create'
  get 'food_items/:id', to: 'food_items#show', as: 'food_item'

 
  

  

  resources :children do
    resources :recipes
  end



end
