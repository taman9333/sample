Rails.application.routes.draw do

  root 'pages#homepage'

  get 'pages/about', to: 'pages#about'

  resources :articles

  get 'signup', to: 'users#new'
  resources :users, except: [:new]

end
