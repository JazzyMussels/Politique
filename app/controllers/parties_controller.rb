class PartiesController < ApplicationController
  before_action :find_party, only: [:show, :edit, :update, :destroy]
  def index
    @parties = Party.all 
  end

  def new
    @party = Party.new 
  end

  def create
    @party = Party.new(party_params)
      if @party.save 
        redirect_to @party 
      else
        render :new 
      end
  end

  def show
  end

  def add_party_to_user
    redirect_to user_path(Party.link_party_to_user(params[:user_id], params[:party_id]))
  end

  def edit
  end

  def update 
    if @party.update(party_params)
      redirect_to @party 
    else
      render :edit 
    end
  end

  def destroy
    @party.destroy 
    redirect_to parties_path 
  end


  private

  def find_party
    @party = Party.find(params[:id])
  end

  def party_params 
    params.require(:party).permit(:name, :party_type, :bio, :user_id)
  end
end
