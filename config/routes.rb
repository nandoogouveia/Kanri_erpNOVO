Rails.application.routes.draw do
  get 'inicio/index'
  devise_for :gestors
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root to: "inicio#index"
end
