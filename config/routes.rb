Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'

  # Read all tasks
  post 'tasks', to: 'tasks#create'

  get 'tasks/new', to: 'tasks#new', as: :new_task
  get 'tasks', to: 'tasks#index'

  # Create a task

  # Read one task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  get 'tasks/:id', to: 'tasks#show', as: :task

  # Update a task
  patch 'tasks/:id', to: 'tasks#update'

  # Delete
  delete 'tasks/:id', to: 'tasks#destroy'

end
