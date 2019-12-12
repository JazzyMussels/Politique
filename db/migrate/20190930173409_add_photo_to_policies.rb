class AddPhotoToPolicies < ActiveRecord::Migration[6.0]
  def change
    add_column :policies, :photo, :string
  end
end
