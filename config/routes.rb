Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :traits do
  # adding show
    resources :reservations, only: [:new, :show, :create, :index]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
  resources :reservations, only: [:destroy]

  resources :user, only: [] do
    collection do
      get :profile
    end
  end
end
