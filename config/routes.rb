Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"

  resources :home, :only => [ :index ]
  resources :users, :only => [ :show, :index ] do
    resources :images, :except => [ :index ]
  end

end
