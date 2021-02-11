class CommentsController < ApplicationController

  def create
    @comment = current_user.comments.build(comment_params)
    binding.pry
    if @comment.save
      redirect_to board_path(params[:board_id])
    else
      redirect_to board_path(params[:board_id])
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text,:board_id).merge(user_id: current_user.id)
  end
end
