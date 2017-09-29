Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'site/home#index'

  get 'administrative', to: 'administrative/dashboard#index'
  
  namespace :site do
    get 'home', to: 'home#index'
  end

  namespace :administrative do
    resources :books
    get 'dashboard', to: 'dashboard#index'
  end

  devise_for :admins
  #resources :books

end
