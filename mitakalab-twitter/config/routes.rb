Rails.application.routes.draw do
  get 'users/show'

  get 'users/new'

  get 'users/index'

  get 'users/show/:username' => 'users#show'

  post 'users' => 'users#create'

  get 'tweets/index'

  get 'tweets/show'

  get 'tweets/new'

  post 'tweets' => 'tweets#create'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
