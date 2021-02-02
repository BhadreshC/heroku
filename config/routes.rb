Rails.application.routes.draw do
  resources :posts
  resources :authors
  resources :author_details
  devise_for :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'about_us', to: 'posts#about_us'
  root 'posts#index'
end