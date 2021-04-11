Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  get 'users/update'
  devise_for :users
  root to: 'homes#top'
  resources :books, only: [:create, :index, :show, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
