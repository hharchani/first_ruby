class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :uname
      t.integer :score

      t.timestamps
    end
  end
end
