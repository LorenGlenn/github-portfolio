Rails.application.routes.draw do
  resources :projects
  devise_for :admins
  root 'landing#index'
  resources :about, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
