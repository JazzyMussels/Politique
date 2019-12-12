class CreateUserScandals < ActiveRecord::Migration[6.0]
  def change
    create_table :user_scandals do |t|
      t.integer :user_id
      t.integer :scandal_id
      t.timestamps
    end
  end
end
