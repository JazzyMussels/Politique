class CreateDebates < ActiveRecord::Migration[6.0]
  def change
    create_table :debates do |t|
      t.string :name
      t.string :network
      t.integer :user_1_id
      t.integer :user_2_id
      t.integer :winner_id, default: nil
      t.timestamps
    end
  end
end
