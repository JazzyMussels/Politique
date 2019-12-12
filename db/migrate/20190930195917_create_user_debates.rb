class CreateUserDebates < ActiveRecord::Migration[6.0]
  def change
    create_table :user_debates do |t|
      t.integer :user_id
      t.integer :debate_id
      t.timestamps
    end
  end
end
