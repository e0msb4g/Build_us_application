class RenmeGoodPointsColumnToBoards < ActiveRecord::Migration[6.0]
  def change
    rename_column :boards, :good_points, :impressions
  end
end
