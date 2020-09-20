Rails.application.routes.draw do
  get 'billers/new'
  get 'billers/create'
  get 'billers/destroy'
  resources :collections
  resources :practices
  resources :billers
  root to: 'pages#home'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
