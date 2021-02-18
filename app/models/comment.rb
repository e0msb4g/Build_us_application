class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :board

  validates :text, presence: { message: 'を入力してください。' }
end
