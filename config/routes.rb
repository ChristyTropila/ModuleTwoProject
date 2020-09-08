Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/login', to: 'children#login', as: 'login'
  post '/send_the_form_here', to: 'children#handle_login'
  delete '/logout', to: 'children#logout', as: 'logout'

  get 'children', to: 'children#index', as: 'children'
  get 'children/new', to: 'children#new', as:'new_children'
  post 'children', to: 'children#create'
  get 'children/:id', to: 'children#show', as: 'child'
  

  get 'recipes', to: 'recipes#index', as: 'recipes'
  get 'recipes/new', to: 'recipes#new', as: 'new_recipes'
  post 'recipes', to: 'recipes#create'
  get 'recipes/:id', to: 'recipes#show', as: 'recipe'
  get 'recipes/:id/edit', to: 'recipes#edit', as: 'edit_recipe'
  patch 'recipes/:id', to: 'recipes#update'
  delete 'recipes/:id', to: 'recipes#destroy'


  get 'food_items', to: 'food_items#index', as: 'food_items'
  get 'food_items/new', to: 'food_items#new', as: 'new_food_items'
  post 'food_items', to: 'food_items#create'
  get 'food_items/:id', to: 'food_items#show', as: 'food_item'
  get 'food_items/:id/edit', to: 'food_items#edit', as: 'edit_food_item'
  patch 'food_items/:id', to: 'food_items#update'
  delete 'food_items/:id', to: 'food_items#destroy'

 
 get 'kitchen_tools', to: 'kitchen_tools#index', as: 'kitchen_tools'
 get 'kitchen_tools/new', to: 'kitchen_tools#new', as: 'new_kitchen_tools'
 post 'kitchen_tools', to: 'kitchen_tools#create'
 get 'kitchen_tools/:id', to: 'kitchen_tools#show', as: 'kitchen_tool'
 get 'kitchen_tools/:id/edit', to: 'kitchen_tools#edit', as: 'edit_kitchen_tool'
 patch 'kitchen_tools/:id', to: 'kitchen_tools#update'
 delete 'kitchen_tools/:id', to: 'kitchen_tools#destroy'

 get 'instructions', to: 'instructions#index', as: 'instructions'
 get 'instructions/new', to: 'instructions#new', as: 'new_instructions'
 post 'instructions', to: 'instructions#create'
 get 'instructions/:id', to: 'instructions#show', as: 'instruction'
 get 'instructions/:id/edit', to: 'instructions#edit', as: 'edit_instruction'
 patch 'instructions/:id', to: 'instructions#update'
 delete 'instructions/:id', to: 'instructions#destroy'



end
