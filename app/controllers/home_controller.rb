class HomeController < ApplicationController
  def index
    @boards = Board.includes(:like).where(user_id: current_user.id)
  end
end
