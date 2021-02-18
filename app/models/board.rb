class Board < ApplicationRecord
  belongs_to :user
  has_many :comments, foreign_key: :board_id,dependent: :destroy
  has_many :likes, dependent: :destroy
  has_one_attached :image
  geocoded_by :address
  after_validation :geocode
  

  with_options presence: true do
    validates :title,presence: { message: '：タイトルを入力してください。' }
    validates :prefecture_id, numericality: { other_than: 0, message: '：都道府県を選択してください' }
    validates :municipality,presence: { message: '：市区町村を入力してください。' }
  end

  def address
    [self.prefecture.name,self.municipality,self.edaban].compact.join()
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
end
