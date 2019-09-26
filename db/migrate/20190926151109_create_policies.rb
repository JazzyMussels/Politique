class CreatePolicies < ActiveRecord::Migration[6.0]
  def change
    create_table :policies do |t|
      t.string :title
      t.string :content
      t.string :user_id

      t.timestamps
    end
  end
end
