class SessionsController < ApplicationController
  def new
  end

  def create
    member = Member.find_by({
      email: params[:email]
    })

    if member && member.authenticate(params[:password])
      session[:user_id] = member.id
      redirect_to '/dashboard'
    else
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to '/'
  end
end
