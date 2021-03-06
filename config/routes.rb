Rails.application.routes.draw do


  root 'static_pages#home'

  get    '/about',    to: 'static_pages#about'
  get    '/help',		  to: 'static_pages#help'
  get    '/contact',  to: 'static_pages#contact'
  get    '/signup',   to: 'users#new'
  post   '/signup',	  to: 'users#create'
  get    '/login',	  to: 'session#new'
  post   '/login',    to: 'session#create'
  delete '/logout',   to: 'session#destroy'

  resources :users
  resources :albums
  resources :songs
end
