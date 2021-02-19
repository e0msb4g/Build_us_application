class Board < ApplicationRecord
  belongs_to :user
  has_many :comments, foreign_key: :board_id,dependent: :destroy
  has_many :likes, dependent: :destroy
  has_one_attached :image
  geocoded_by :address
  after_validation :geocode
  

  with_options presence: true do
    validates :title,presence: { message:'：タイトルを入力してください。' },length: { maximum: 40 }
    validates :prefecture_id, numericality: { other_than: 0, message: '：都道府県を選択してください' }
    validates :municipality,presence: { message: '：市区町村を入力してください。' }
    validates :question_or_impressions, presence: { message: '：「質問内容」もしくは「住んでみての感想」のいずれかは必須です。' }
  end

  validates :question, length: { maximum: 1000 }
  validates :impressions, length: { maximum: 1000 }

  def address
    [self.prefecture.name,self.municipality,self.edaban].compact.join()
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
end

private
def question_or_impressions
  question.presence || impressions.presence
end