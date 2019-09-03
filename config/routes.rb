Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    root 'checks#index'
    resources :users, only: [:show ]    
    resources :checks do
      resources :likes, only: [:create, :destroy]
      get "search",  on: :collection
    end

end
