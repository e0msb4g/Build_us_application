class BoardsController < ApplicationController
  def index
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.new(board_params)
    if @board.save
      redirect_to home_index_path
    else
      render :new
    end
  end

  private

  def board_params
    params.require(:board).permit(:prefecture_id, :municipality, :address, :building_name, :question, :good_points, :bad_points).merge(user_id: current_user.id)
  end
end
