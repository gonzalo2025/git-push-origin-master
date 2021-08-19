Rails.application.routes.draw do
  get '/tasks', to: 'tasks#tasks'
  post '/tasks', to: 'tasks#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


