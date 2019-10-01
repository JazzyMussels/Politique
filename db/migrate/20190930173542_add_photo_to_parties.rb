class AddPhotoToParties < ActiveRecord::Migration[6.0]
  def change
    add_column :parties, :photo, :string
  end
end
