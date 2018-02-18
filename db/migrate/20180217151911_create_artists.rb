class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.timestamps
      t.string :name, null: false
      t.string :description
    end
  end
end
