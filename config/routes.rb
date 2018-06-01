Rails.application.routes.draw do
  devise_for :users #, :controllers => { registrations: 'registrations' }
  root 'posts#index'
  
  resources :posts do
    post 'like', to: 'posts#like', as: :like, on: :member
  end
  
  resources :users, only: [:show] do
    post 'follow', to: 'users#follow', as: :follow, on: :member
    # get "/sign_up" => "devise/registrations#new", as: "new_user_registration"
    # # get 'register', to: 'devise/registrations#new', as: :register
    # # get 'users/sign_in', to: 'devise/sesssions#new', as: :login
    # # get 'logout', to: 'devise/sesssions#destroy', as: :logout
  end
  
  get 'mypage', to: 'post#mypage'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'posts/index' => 'post#index'

end