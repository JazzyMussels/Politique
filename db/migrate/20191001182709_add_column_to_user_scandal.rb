class AddColumnToUserScandal < ActiveRecord::Migration[6.0]
  def change
    add_column :user_scandals, :giver_id, :integer
  end
end
