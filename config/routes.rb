Jemimagen::Application.routes.draw do
  devise_for :admins

  get "quienes_somos/index"

  resources :contactos


  resources :servicios


  root to: 'inicio#index'

  get "inicio/index"

end
