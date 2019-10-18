class TasksController < ApplicationController
  def index
    @task = current_user.task.all
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
