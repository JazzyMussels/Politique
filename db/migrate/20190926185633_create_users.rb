class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :photo
      t.integer :age
      t.string :race
      t.string :gender
      t.string :location
      t.string :bio
      t.boolean :politician, default: false
      t.string :title
      t.string :running_mate_photo
      t.string :running_mate_name
      t.string :level, default: 1
      t.integer :vote_count, default: 0
      t.timestamps
    end
  end
end
