class UsersController < ApplicationController
  def index
    @members = Member.all
  end

  def new
  end

  def create
    @member = Member.new({
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    })

    if @user.save
      session[:user_id] = @user_id
      redirect_to '/'
    else
      render :new
    end
  end
end

# username: "erikgomez89",
#   password: "notrealpassword",
#   password_confirmation: "notrealpassword",
#   first_name: "Erik",
#   last_name: "Gomez",
#   email: "egoxiv@gmail.com"
