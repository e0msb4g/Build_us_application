class CreateBoards < ActiveRecord::Migration[6.0]
  def change
    create_table :boards do |t|

      t.timestamps
      t.string :title, null:false
      t.integer :prefecture_id, null:false
      t.string :municipality, null:false
      t.string :address
      t.string :building_name
      t.text :question
      t.text :good_points
      t.text :bad_points
      t.references  :user,null: false, foreign_key: true
    end
  end
end
