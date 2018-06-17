Rails.application.routes.draw do
  root to: 'toppages#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'tasks/:id', to: 'tasks#show'
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create, :update]

  resources :tasks, only: [:create, :destroy, :new, :edit, :update]
end

