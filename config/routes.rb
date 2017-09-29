Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'site/home#index'
  
  namespace :site do
    get 'home', to: 'home#index'
  end

  namespace :administrative do
    get 'dashboard', to: 'dashboard#index'
  end

  devise_for :admins

end
