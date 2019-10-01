class ScandalsController < ApplicationController
  before_action :find_scandal, only: [:show, :edit, :update, :destroy]
  def index
    @scandals = Scandal.all 
  end

  def new
    @scandal = Scandal.new 
  end

  def create
    @scandal = Scandal.new(scandal_params)
      @user = User.find(session[:user_id])
      if @scandal.save 
        UserScandal.create(user_id: params[:scandal][:id], scandal_id: @scandal.id, giver_id: @user.id) 
      flash[:success] = 'This Scandal is successfully going viral!'
       redirect_to @scandal
      else
        flash[:warning] = 'Something went wrong, please try again.'
        render :new 
      end
  end

  def show
  end

  def add_scandal_to_user
    redirect_to user_path(Scandal.link_scandal_to_user(params[:user_id], params[:scandal_id]))
  end

  def edit
  end

  def update 
    if @scandal.update(scandal_params)
      redirect_to @scandal 
    else
      render :edit 
    end
  end

  def destroy
    @scandal.destroy 
    redirect_to scandals_path 
  end


  private

  def find_scandal
    @scandal = Scandal.find(params[:id])
  end

  def scandal_params 
    params.require(:scandal).permit(:title, :content, :photographic_evidence, :user_id, :giver_id)
  end

end
