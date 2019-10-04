class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.integer :option1, default: 0
      t.integer :option2, default: 0 
      t.integer :option3, default: 0
      t.integer :option4, default: 0
      t.integer :moves, default: 0
      t.timestamps
    end
  end
end
