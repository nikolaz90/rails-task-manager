Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'tasks/new', to: 'tasks#new'
  get 'tasks/:id', to: 'tasks#show', as: :show_one
  get 'tasks', to: 'tasks#list'
  post 'tasks/create', to: 'tasks#create'
  get 'tasks/edit/:id', to: 'tasks#edit', as: :edit
  patch 'tasks/:id', to: 'tasks#update', as: :update
  delete 'tasks/delete/:id', to: 'tasks#destroy', as: :delete_one

  root 'tasks#index'
end
