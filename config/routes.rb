Rails.application.routes.draw do
  get 'songs/index'

  devise_for :users
  get 'main/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "main#index"

  resources :songs

end
