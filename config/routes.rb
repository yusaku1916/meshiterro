Rails.application.routes.draw do
  # get 'users/show'
  # get 'users/edit'
  get 'home/about'
  devise_for :users
  root to: "homes#top"
  get "/homes/about" => "homes#about", as: 'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resources :post_comments, only: [:create]
  end
  resources :users, only: [:show, :edit, :update]


end
