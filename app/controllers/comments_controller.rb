class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @comment = current_user.comments.build(comment_params)
    if @comment.save
      redirect_to board_path(params[:board_id])
    else
      # render template: 'boards/show'
      flash[:error_messages] = @comment.errors.full_messages
      redirect_to board_path(params[:board_id])
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text, :board_id).merge(user_id: current_user.id)
  end
end
