Rails.application.routes.draw do
  get "games/:id" => "games#show", as: :game

  resources :ships, only: [:update]
  resources :shots, only: [:create]

  root "welcome#index"
end
