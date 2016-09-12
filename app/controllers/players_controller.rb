class PlayersController < ApplicationController

  def index
  end  

  def new
    @player = Player.new
  end  

  def create
    @player = Player.create(player_params)
    redirect_to all_path
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

  def show
    @player = Player.find(params[:id])
  end  

private

def player_params
  params.require(:player).permit(:name, :residence, :height, :weight, :plays, :status, :gender)
end  


end
