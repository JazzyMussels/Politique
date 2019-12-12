class AddPhotoToDebates < ActiveRecord::Migration[6.0]
  def change
    add_column :debates, :network_photo, :string
  end
end
