Rails.application.routes.draw do

  get 'sessions/new'

  root 'static_pages#home'

  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/contact'

  get 'signup' => 'users#new'
  resources :users

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

end
