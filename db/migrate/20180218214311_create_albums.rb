class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.timestamps

      t.string :name, null: false
      t.integer :duration_in_seconds
      t.belongs_to :artist
    end
  end
end
