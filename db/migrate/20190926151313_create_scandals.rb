class CreateScandals < ActiveRecord::Migration[6.0]
  def change
    create_table :scandals do |t|
      t.string :title
      t.string :content
      t.string :photographic_evidence
      t.timestamps
    end
  end
end
