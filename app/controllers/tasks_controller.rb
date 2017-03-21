class TasksController < ApplicationController

  def index
    @tasks = Task.all
    @tasks.where(check: 0)
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(post_params)
    redirect_to tasks_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(post_params)
  end

  private

  def post_params
    params.require(:task).permit(:name, :details, :limit, :level)
  end

end
