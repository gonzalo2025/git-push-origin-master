Rails.application.routes.draw do
  #index
  get '/tasks', to: 'tasks#tasks'
  #create
  post '/tasks', to: 'tasks#create'
  #new
  get '/tasks/new', to: 'tasks#new', as: :new_task
  #edit
  get '/tasks/:id/edit', to: 'tasks#edit',as: :edit_task
  #show
  get '/tasks/:id', to: 'tasks#show',as: :show_task
  #update
  patch  '/tasks/:id', to: 'tasks#update'
  #delete
  delete '/tasks/:id', to: 'tasks#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
