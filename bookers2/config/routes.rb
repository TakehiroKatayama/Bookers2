Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  get 'users/update'
  devise_for :users
  root to: 'homes#top'
  get 'homes/about' => 'homes#about'
  resources :books, only: [:create, :index, :show, :destroy]
  post 'books' => 'books#create'
  resources :users, only: [:show, :edit, :update]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
