Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  get 'children', to: 'children#index', as: 'children'
  get 'children', to: 'children#show', as: 'child'
  get 'children/new', to: 'children#new', as:'new_child'
  post 'children', to: 'children#create'



end
