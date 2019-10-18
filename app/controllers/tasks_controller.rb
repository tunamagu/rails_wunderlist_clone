class TasksController < ApplicationController
  def index
    if current_user
      @task_all = current_user.task.all
    else
      flash[:notice] = "Please Log in"
      redirect_to new_user_session_url
    end
  end

  def new
  end

  def create
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
