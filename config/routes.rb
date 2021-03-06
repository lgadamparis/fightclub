Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :locations, only: [:index, :new, :create, :show, :edit, :destroy] do
    resources :fights, only: [:new, :create, :destroy]
  end
  resources :fights , only: :destroy

  resource :profile, only: :show
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
