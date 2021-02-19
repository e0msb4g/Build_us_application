class RemoveBadPointsFromBoards < ActiveRecord::Migration[6.0]
  def change
    remove_column :boards, :bad_points, :text
  end
end
