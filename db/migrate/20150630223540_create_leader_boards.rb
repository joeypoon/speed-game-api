class CreateLeaderBoards < ActiveRecord::Migration
  def change
    create_table :leader_boards do |t|
      t.string :name
      t.decimal :score

      t.timestamps null: false
    end
  end
end
