Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

 resources :locations, only: %i[index, new, create, show, edit] do
  resources :fights, only: %i[new, create]
 end
  resources :locations , only: :destroy
  resources :fights , only: :destroy
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
