Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  
  # 不要なルーティングがされないようにonly
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
end
