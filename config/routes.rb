Rails.application.routes.draw do
  get "games/:id" => "games#show", as: :game

  resources :shots, only: [:post]

  root "welcome#index"
end
