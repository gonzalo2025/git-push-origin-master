class TasksController < ApplicationController
    def tasks
       @tasks = Task.all 
    end

    def create
        @tasks = Task.new(params[:task])
        @tasks.save
    end

    def new
        @task = Task.new
    end

    def edit
        @task = Task.find(param[:id])
    end

    def show
        @task = Task.find(param[:id])
    end

    def update
        @task = Task.find(param[:id])
    end

    def delete
        @task = Task.find(param[:id])
    end

end
#PATCH  /restaurants/:id(.:format)      restaurants#update
#DELETE /restaurants/:id(.:format)      restaurants#destroy
#update
#patch  '/tasks/:id', to: 'task#update'
#delete
#delete '/tasks/:id', to: 'task#destroy'

