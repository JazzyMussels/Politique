class UsersController < ApplicationController
  
  def start
    @users = User.all 
  end

  # def login
  #   render :login
  # end

  # def authenticate
  #   @user = User.find_by(email: params[:user][:email])

  #   if @user.authenticate(params[:user[:password]])
  #     session[:user_id] = @user.id
          #redirect_to @user
      # else
      #   flash[:errror] = 'incorrect username or password'
      #   redirect to login_path
  #   end
  # end

  def index
    @users = User.all 
  end

  def new
    @user = User.new 
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user 
    else
      render :new 
    end
  end

  def show
    #@user = User.find_by(id: session[:user_id])
    #if @user
    #render :show 
  end

  def edit
  end

  private
  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit()
  end

end
