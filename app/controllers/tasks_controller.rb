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
    @task = current_user.task.new
  end

  def create
    @task = current_user.task.create(task_params)
    if @task.save
      flash[:notice] = "Success Create New Task"
      redirect_to root_url
    else
      flash[:error] = "Error Create New Task"
      redirect_to root_url
    end
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

  def done
    @task = Task.find(params[:id])
    @task.done = !(@task.done)
    if @task.save
      redirect_to root_url
    else
      flash[:error] = "Failed Task Done"
    end
  end

  private

    def task_params
      params.require(:task).permit(:title,:limit_at,:memo)
    end
end
