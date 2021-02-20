class LikesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_like

  def create
    @like = current_user.likes.create(board_id: params[:board_id])
    redirect_to board_path(params[:board_id])
  end

  def destroy
    @like = current_user.likes.find_by(board_id: @board.id)
    @like.destroy
    redirect_to board_path(params[:board_id])
  end

  private

  def set_like
    @board = Board.find(params[:board_id])
  end
end
