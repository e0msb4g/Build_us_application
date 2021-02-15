class RenameAddressColumnToBoards < ActiveRecord::Migration[6.0]
  def change
    rename_column :boards, :address, :edaban
  end
end
