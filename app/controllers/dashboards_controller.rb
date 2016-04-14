class DashboardsController < ApplicationController
  def index
    @current_user = Member.find(session[:user_id])
  end

  def new
    @task = Task.new
  end

  def create
    @member = Member.find(session[:user_id])
    @task = @member.tasks.new(task_params)
    if @task.save
      redirect_to '/dashboard'
    else
      render :new
    end
  end

  def show
  end


private
  def task_params
    params.require(:task).permit(:task, :description, :user_id)
  end

end
