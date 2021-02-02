class Board < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :prefecture
    validates :municipality
  end
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
end