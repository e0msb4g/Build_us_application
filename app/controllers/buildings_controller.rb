class BuildingsController < ApplicationController
  def index
    @boards = Board.includes(:user)
    if user_signed_in?
      render 'home/index'
    else
      render 'buildings/index'
    end
  end

  def new_guest
    user = User.find_or_create_by!(email: 'guest@example.com') do |user|
      user.password = SecureRandom.alphanumeric(8)
      # 大文字、小文字のアルファベット、数字からランダムに８桁のパスワードを生成
      user.nickname = 'ゲスト'
    end
    sign_in user
    redirect_to home_index_path, notice: 'ゲストユーザーとしてログインしました。'
  end
end
