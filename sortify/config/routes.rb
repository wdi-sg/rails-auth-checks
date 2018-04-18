Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'genres#index'
  
  resources :genres do
    resources :songs
  end

  resources :songs do
    resources :genres
  end
end
