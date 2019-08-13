Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/tasks', to: 'tasks#index'

  # Create
  get '/tasks/new', to: 'tasks#new'
  post '/tasks', to: 'tasks#create'

  # Read one
  get '/tasks/:id', to: 'tasks#show', as: :show_task

  # Update
  get '/tasks/:id/edit', to: 'tasks#edit'
  patch '/tasks/:id', to: 'tasks#update', as: :task

  # Delete
  delete '/tasks/:id', to: 'tasks#destroy'
  # resources :tasks
end
