Rails.application.routes.draw do
  get 'users/show'
  get 'user/show'
  get 'comments/create'
  devise_for :users
  root to: 'prototypes#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :prototypes do
    resources :comments, only: [:create]
  end

  resources :users, only: :show
end
