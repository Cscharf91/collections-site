Rails.application.routes.draw do
  get 'notes/create'
  get 'notes/destroy'
  get 'billers/new'
  get 'billers/create'
  get 'billers/destroy'
  resources :collections
  resources :practices
  resources :billers
  root to: 'pages#home'
  devise_for :users
  post 'new_note', to: 'collections#new_note'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
