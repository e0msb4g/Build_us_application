class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :board

  with_options presence: true do
    validates :text
  end
end
