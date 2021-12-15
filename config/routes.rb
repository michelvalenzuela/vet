Rails.application.routes.draw do
  resources :owners
  resources :pets
  resources :pet_histories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pets#index"
end
