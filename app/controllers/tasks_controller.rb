class TasksController < ApplicationController
    def tasks
       @tasks=Task.all 
    end

    def create
    end
end
