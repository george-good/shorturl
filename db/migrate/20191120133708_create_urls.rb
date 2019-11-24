class CreateUrls < ActiveRecord::Migration[5.2]
  def change
    create_table :urls do |t|
      t.string :original
      t.text :short_version

      t.timestamps
    end
  end
end
