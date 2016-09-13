class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @player = Player.find(params[:player_id])
    @player.comments.create(comment_params.merge(user: current_user))
    redirect_to player_path(@player)
  end  

private

def comment_params
   params.require(:comment).permit(:message, :rating) 
end  

end
