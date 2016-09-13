class PlayersController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
  end  

  def show
    @player = Player.find(params[:id])
  end 

  def new
    @player = Player.new
  end  

  def create
    @player = current_user.players.create(player_params)
    if @player.valid?
      redirect_to all_path
    else
      render :new, status: :unprocessable_entity
    end   
  end

  def edit
    @player = Player.find(params[:id])
  end  

  def update
    @player = Player.find(params[:id])
    @player.update_attributes(player_params)
    if @player.valid?
      redirect_to player_path
    else
      render :edit, status: :unprocessable_entity
    end    
  end  

  def destroy
    @player = Player.find(params[:id])
    if current_user != @player.user
      return render text: 'Not Allowed', status: :forbidden 
    end  
    @player.destroy
    redirect_to all_path
  end  

  def all
    @players = Player.order(:id)
  end  

  def men
    @players = Player.where(gender: 'male').select([:id, :user_id, :name])
  end
  
  def women
    @players = Player.where(gender: 'female').select([:id, :user_id, :name])
  end  

  def about
  end  

private

def player_params
  params.require(:player).permit(:name, :residence, :height, :weight, :plays, :status, :gender)
end  


end
