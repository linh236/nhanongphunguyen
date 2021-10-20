Rails.application.routes.draw do
  resources :user_posts
  resources :roles
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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
