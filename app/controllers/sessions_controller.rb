class SessionsController < ApplicationController
  def create
    @user = User.find_by_email(params[:email])

    if @user && @user.authenticate(params[:password])
      session[:id] = @user.id
      redirect_to "/recipes/home"
    else
      flash[:errors] = "Invalid"
      redirect_to "/recipes/home"
    end
  end

  def destroy
    session.clear
    redirect_to "/recipes/home"
  end
end
