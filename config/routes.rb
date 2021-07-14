Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'homes#top'
  
  # 不要なルーティングがされないようにonly
  resources :post_images, only: [:new, :create, :index, :show, :destroy]do
    # 単数(resource)にすると、そのコントローラのidがリクエストに含まれなくなる
    resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end
  
  resources :users, only: [:show, :edit, :update]
end
