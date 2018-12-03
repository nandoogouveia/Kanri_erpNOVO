Rails.application.routes.draw do
  get 'dashboard/dashboard'
  get 'painel', to: "dashboard#dashboard"
  get 'inicio/index'
  get 'inicio', to: "inicio#index"
  
  devise_for :gestors
  
  devise_scope :gestors do
  get 'sign_in', to: 'devise/sessions#new'
end
  
  
  devise_for :admins
  
  devise_scope :admins do
  get 'sign_in', to: 'devise/sessions#new'
end
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root to: "inicio#index"
end

