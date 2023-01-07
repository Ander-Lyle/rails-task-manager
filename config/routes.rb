Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Routes Syntax
  # verb 'path', to: 'controller#action'

  # 3 - As a user, I can list tasks
  get 'tasks', to: 'tasks#list', as: 'tasks'
  # 4 - As a user, I can view the details of a task
  get 'tasks/new', to: 'tasks#new', as: 'new_task'
  get 'tasks/:id', to: 'tasks#show', as: 'task'
  # 5 - As a user, I can add a new task
  post 'tasks', to: 'tasks#create'
  # 6 - As a user, I can edit a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch 'tasks/:id', to: 'tasks#update'
  # 7 - As a user, I can remove a task
  delete 'tasks/:id', to: 'tasks#destroy'
end
