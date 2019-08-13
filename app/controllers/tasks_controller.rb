class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  # GET /restaurants
  def index
    @tasks = Task.all
  end

  # GET /tasks/:id
  def show
    @task = Task.find(params[:id])
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # POST /tasks
  def create
    task = Task.new(task_params)
    task.save
  end

  # GET /tasks/:id/edit
  def edit
    set_task
  end

  # PATCH /tasks/:id
  def update
    @task.update(task_params)
  end

  # DELETE /tasks/:id
  def destroy
    @task.destroy

    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
