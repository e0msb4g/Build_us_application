class BoardsController < ApplicationController

  before_action :authenticate_user!
  
  def index
    @boards = Board.includes(:user)
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

  def show
    @board = Board.find(params[:id])
    gon.board = @board
    @comment = Comment.new
    @comments = @board.comments.order("created_at ASC")
  end

  def edit
    @board = Board.find(params[:id])
  end

  def update
    @board = Board.find(params[:id])
    if @board.update(board_params)
      redirect_to  board_path(@board.id)
    else
      render :edit
    end
  end

  def destroy
    @board = Board.find(params[:id])
    if current_user.id == @board.user.id
      @board.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private

  def board_params
    params.require(:board).permit(:title, :prefecture_id, :municipality, :edaban, :building_name, :question,
                                  :impressions, :image).merge(user_id: current_user.id)
  end
end
