Rails.application.routes.draw do

  get 'user/show'
  root 'home#index'

  get '/team', to: 'team#show'

  get '/contact', to: 'contact#show'

  get '/welcome/:first_name_id', to: 'welcome#say_hello', as: 'landing'

  resources :gossips

  resources :user
end
