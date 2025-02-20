Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :recipes, only: [:index, :new, :create, :show]
  resources :users, only: [:show, :destroy]
  resources :ingredients, only: [:index, :show]
end
