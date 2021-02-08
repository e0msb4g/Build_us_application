class HomeController < ApplicationController
  def index
    @boards = Board.includes(:user).where(user_id: current_user.id)
  end
end
