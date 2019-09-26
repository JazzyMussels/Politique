class CreateParties < ActiveRecord::Migration[6.0]
  def change
    create_table :parties do |t|
      t.string :name
      t.string :party_type
      t.integer :user_id
      
      t.timestamps
    end
  end
end
