Rails.application.routes.draw do
  root 'pages#home'

  get 'about', to: 'pages#about'
  get 'blog', to: 'pages#blog'
  get 'mali', to: 'pages#mali'
  get 'contact', to: 'pages#contact'

  resources :asks
end
