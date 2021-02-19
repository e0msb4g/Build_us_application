class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :nickname, uniqueness: { case_sensitive: true }
    validates :email, uniqueness: { case_sensitive: true }
    validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i },length: { minimum: 8 }
  end

  has_many :boards
  has_many :comments
  has_many :likes
  has_many :like_boards, through: :likes, source: :board


  def already_liked?(board)
    self.likes.exists?(board_id: board.id)
  end
end
