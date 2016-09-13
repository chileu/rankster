class PlayersController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
  end  

  def show
    @player = Player.find(params[:id])
  end 

  def new
    @player = Player.new
  end  

  def create
    current_user.players.create(player_params)
    redirect_to all_path
  end

  def edit
    @player = Player.find(params[:id])
  end  

  def update
    @player = Player.find(params[:id])
    @player.update_attributes(player_params)
    redirect_to player_path
  end  

  def all
    @players = Player.order(:id)
  end  

  def men
    @players = Player.where(gender: 'male').select([:id, :name])
  end
  
  def women
    @players = Player.where(gender: 'female').select([:id, :name])
  end  

  def about
  end  

private

def player_params
  params.require(:player).permit(:name, :residence, :height, :weight, :plays, :status, :gender)
end  


end
