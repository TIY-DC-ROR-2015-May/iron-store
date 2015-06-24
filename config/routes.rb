Rails.application.routes.draw do
  resources :questions
  resources :items

  root 'items#index'
end
