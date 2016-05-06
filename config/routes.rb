Rails.application.routes.draw do
  get "games/:id" => "games#show"

  resources :shots, only: [:post]

  root "welcome#index"
end
