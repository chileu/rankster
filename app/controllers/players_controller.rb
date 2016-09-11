class PlayersController < ApplicationController

  def index
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


end
