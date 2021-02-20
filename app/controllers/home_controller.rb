class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @boards = Board.includes(:like).where(user_id: current_user.id)
  end
end
