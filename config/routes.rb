Rails.application.routes.draw do
  resources :user_posts
  resources :roles
  resources :sliders
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
    end
  end
  # ---------END API--------
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
