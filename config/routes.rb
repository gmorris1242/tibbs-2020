Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'

  get 'work', to: 'pages#work', as: 'work'
  get 'directors', to: 'pages#directors', as: 'directors'
  get 'director', to: 'director#index', as: 'director'
  get 'contact', to: 'pages#contact', as: 'contact'
  get 'info', to: 'pages#info', as: 'info'

  get 'video-player', to: 'work#show'

  resources :contact, only: :create
end
