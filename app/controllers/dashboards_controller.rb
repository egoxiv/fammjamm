class DashboardsController < ApplicationController
  def index
    @current_user = Member.find(session[:user_id])
  end

  def new
  end

  def show
  end
end
