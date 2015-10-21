Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"

  resources :home, :only => [ :index ]
  resources :users, :only => [ :show, :index ]
  get 'usershome', to: 'users#index', as: 'usershome'
  
end
