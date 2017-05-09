Rails.application.routes.draw do
  resources :films do
    resources :genres
  end
end
