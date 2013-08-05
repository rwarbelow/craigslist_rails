class SessionsController < ApplicationController

  def destroy
    session[:id] = nil
    redirect_to root_path
  end

  def new
    
  end

  def create
    @user = User.find_by_username(params[:username])
    if @user && @user.authenticate(params[:password])
      redirect_to user_path(@user)
    else
      @errors = ["Username and/or password are invalid."]
      render 'new'
    end
  end

end
