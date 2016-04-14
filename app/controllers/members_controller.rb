class MembersController < ApplicationController
  def index
    @members = Member.all
  end

  def new
  end

  def create
    @member = Member.new({
      first_name: params[:first_name],
      last_name: params[:last_name],
      username: params[:username],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    })

    if @member.save
      session[:user_id] = @member.id
      redirect_to '/'
    else
      render :new
    end

  end



end
