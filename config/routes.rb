Rails.application.routes.draw do

  root 'pages#homepage'

  get 'pages/about', to: 'pages#about'

  resources :articles

end
