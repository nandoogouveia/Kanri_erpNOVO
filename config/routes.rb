Rails.application.routes.draw do
  resources :chamados
  get 'dashboard/dashboard'
  get 'painel', to: "dashboard#dashboard"
  get 'inicio/index'
  get 'inicio', to: "inicio#index"
  
  devise_for :gestors
  devise_for :admins
  
  
  get 'gestors/new'
  
  get 'gestors/show/:id' => "gestors#show", as: "gestors_show"
  
  post 'gestors/create' 
  
  
  get 'login' => "login#login", as: "login"
  
get 'logout' => "login#logout#", as: "logout"
  
post 'auth' => "login#auth", as: "login_auth"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root to: "inicio#index"
end
