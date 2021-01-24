class BuildingsController < ApplicationController
  def index
    if user_signed_in?
      render "home/index"
    else
      render "buildings/index"
    end 
  end
end
