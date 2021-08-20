class TasksController < ApplicationController
    def tasks
       @tasks = Task.all
    end

    def create
        @tasks = Task.new(tasks_params)
        @tasks.save

        redirect_to tasks_path
    end

    def new
        @task = Task.new
    end

    def edit
        @task = Task.find(params[:id])
    end

    def show
        @task = Task.find(params[:id])
    end

    def update
        @task = Task.find(params[:id])
        @task.update(tasks_params)
        redirect_to task_path(@task)

    end


    def delete
        @task = Task.find(params[:id])
        @tasks.destroy
        redirect_to tasks_path
    end
    private
    def tasks_params
        params.require(:task).permit(:title, :details,)
    end
end

