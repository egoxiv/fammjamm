class HomeController < ApplicationController

  def index
    @user = Member.first
    @task = Task.first
  end

end
