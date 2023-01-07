class TasksController < ApplicationController
  # before_action :set_task, only: %i[list]

  def list
    @tasks = Task.all
  end

  private

  # def set_task
  # @task = Task.find(params[:id])
  # end

  # strong params
  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
