class CreatePlaylists < ActiveRecord::Migration[5.2]
  def change
    create_table :playlists do |t|
      t.string :playlist_name
      t.string :string

      t.timestamps
    end
  end
end
