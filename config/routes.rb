Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :restaurants, only: %i[index show] do
    resources :visits, only: %i[create]
  end
  resources :visits, only: %i[edit update]

  get 'my_past_brunches', to: 'visits#my_past_brunches'
end
