Rails.application.routes.draw do
  devise_for :usuarios
  resources :usuarios

  resources :cliente_vuelos

  root :to => 'inicio#index'
  resources :pasajes

  resources :clases

  resources :vuelos

  resources :itinerarios

  resources :aerolineas

  resources :destinos

  resources :origens

  resources :clientes

  get 'inicio/index'

  
end
