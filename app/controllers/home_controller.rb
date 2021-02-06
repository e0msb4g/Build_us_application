class HomeController < ApplicationController
  def index
    @boards = Board.includes(:user)
  end
end
