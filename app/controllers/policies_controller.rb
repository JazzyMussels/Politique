class PoliciesController < ApplicationController
  before_action :find_policy, only: [:show, :edit, :update, :destroy]
  def index
    @policies = Policy.all 
  end

  def new
    @policy = Policy.new 
  end

  def create
    @policy = Policy.new(policy_params)
      if @policy.save 
        redirect_to @policy 
      else
        render :new 
      end
  end

  def show
  end

  def edit
  end

  def add_policy_to_user
    redirect_to user_path(Policy.link_policy_to_user(params[:user_id], params[:policy_id]))
  end
  
  def update 
    if @policy.update(policy_params)
      redirect_to @policy 
    else
      render :edit 
    end
  end

  def destroy
    @policy.destroy 
    redirect_to policies_path 
  end


  private

  def find_policy
    @policy = Policy.find(params[:id])
  end

  def policy_params 
    params.require(:policy).permit(:title, :content, :user_id)
  end

end
