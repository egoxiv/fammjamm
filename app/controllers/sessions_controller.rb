class SessionsController < ApplicationController
  def new
  end

  def create
    @user = Member.new({
      email: params[:email]
    })

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/'
    else
      render :new
    end

    # @bean = Bean.new(bean_params)

    # if @bean.save
    #   redirect_to bean_path(@bean)
    # else
    #   render :new
    # end

    # def bean_params
    #   params.require(:bean).permit(:name, :roast, :origin, :quantity)
    # end
  end

  def destroy
    session.delete(:user_id)
    redirect_to '/'
  end
end
