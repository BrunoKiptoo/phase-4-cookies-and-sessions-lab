Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  get "/sessions", to: "sessions#index"
  
end
