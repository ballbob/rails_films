Rails.application.routes.draw do
  resources :films do
    resources :awards
  end
end
