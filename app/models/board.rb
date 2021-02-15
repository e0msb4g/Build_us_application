class Board < ApplicationRecord
  belongs_to :user
  has_many :comments, foreign_key: :board_id,dependent: :destroy
  has_one_attached :image
  geocoded_by :address
  after_validation :geocode

  with_options presence: true do
    validates :prefecture
    validates :municipality
  end

  def address
    [self.prefecture.name,self.municipality,self.edaban].compact.join()
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
end
