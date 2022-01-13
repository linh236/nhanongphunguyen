Rails.application.routes.draw do
  resources :messages
  resources :rooms
  resources :like_comments
  resources :likeds
  get 'comments/index'
  get 'comments/create'
  resources :user_posts
  resources :roles
  resources :sliders
  resources :events
  devise_for :users do
    get "signin" => "devise/sessions#new"
    post "signin" => "devise/sessions#create"
    delete "signout" => "devise/sessions#destroy"
  end
  resources :posts do 
    resources :images, :only => [:create, :destroy]
  end
  resources :users
  root to: 'home#index'

  # --------API----------- -
  scope module: 'api' do
    namespace :v1 do
        resources :posts
        resources :user
        resources :user_posts
        resources :comments
        resources :likeds
    end
  end
  # ---------END API--------
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
