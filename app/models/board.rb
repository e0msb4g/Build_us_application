class Board < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_one_attached :image

  with_options presence: true do
    validates :prefecture
    validates :municipality
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
end
