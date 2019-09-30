class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update, :destroy]
  
  def start
    @users = User.all 
  end

  def index
    @users = User.all_politicians
  end

  def new 
    @user = User.new 
  end

  def new_voter
    @user = User.new 
  end

  def new_politician
    @user = User.new
  end

  def create
      @user = User.new(user_params)
      return redirect_to login_path unless @user.save
      session[:user_id] = @user.id
      redirect_to @user
  end

  def show
    @user = User.find_by(id: session[:user_id])
    if @user
    render :show
    end 
  end

  def edit
  end

  def add_policy_to_user
  end

  def update
  if @user.update(user_params)
    redirect_to @user 
  else
    render :edit
  end
end

  private
  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :name, :photo, :age, :race, :gender, :location, :politician, :title, :running_mate_name, :running_mate_photo, :level, :vote_count, :bio, :password, :password_confirmation)
  end

end
