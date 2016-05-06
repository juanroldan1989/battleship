Rails.application.routes.draw do
  get "games/:id" => "games#show", as: :game

  resources :shots, only: [:create]

  root "welcome#index"
end
