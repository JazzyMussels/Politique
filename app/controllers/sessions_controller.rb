class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(email: params[:session][:email])
       if @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
          redirect_to @user
      else
        redirect_to login_path, flash: {notice: "Incorrect Username or Password"}
    end

  end

  def destroy
    session.delete :user_id
    redirect_to '/'
  end

end
