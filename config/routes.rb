Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :restaurants, only: %i[index show] do
    resources :visits, only: %i[create]
    member do
      post 'toggle_favorite', to: 'restaurants#toggle_favorite'
    end
  end
  resources :visits, only: %i[show edit update] do
    get 'arrived!', to: 'visits#arrived!', as: :arrived
  end
  resources :visits, only: %i[edit update]

  get 'my_past_brunches', to: 'visits#my_past_brunches'

  get 'my_favorites', to: 'restaurants#my_favorites'
end
