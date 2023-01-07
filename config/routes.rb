Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Routes Syntax
  # verb 'path', to: 'controller#action'

  # 3 - As a user, I can list tasks
  get 'tasks', to: 'tasks#list', as: 'tasks'
  # 4 - As a user, I can view the details of a task
  # 5 - As a user, I can add a new task
  # 6 - As a user, I can edit a task
  # 7 - As a user, I can remove a task
end
