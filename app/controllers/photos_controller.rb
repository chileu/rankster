class PhotosController < ApplicationController

  def create
    @player = Player.find(params[:player_id])
    @player.photos.create(photo_params)
    redirect_to player_path(@player)
  end  

end

private

def photo_params
  params.require(:photo).permit(:picture)
end  