Rails.application.routes.draw do
  resources :chamados
  get 'dashboard/dashboard'
  get 'painel', to: "dashboard#dashboard"
  get 'inicio/index'
  get 'inicio', to: "inicio#index"
  get 'chamados/new'
  get 'chamados', to: "chamados#new"
  devise_for :gestors
  devise_for :admins
  #get 'login' => "chamados#new", as: "login"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root to: "inicio#index"
end

