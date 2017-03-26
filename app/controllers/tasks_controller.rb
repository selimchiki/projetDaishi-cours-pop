class TasksController < ApplicationController

  def index
    @incomplete_tasks = Task.incomplete
    @complete_tasks = Task.complete
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
    redirect_to tasks_path
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(post_params)
    redirect_to tasks_path
  end

  def complete
    Task.where(id: params[:task_ids]).update_all(check: true)
    redirect_to tasks_path
  end

  private

  def post_params
    params.require(:task).permit(:name, :details, :limit, :level_id)
  end

end
