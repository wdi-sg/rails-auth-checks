class CreateGenresSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :genres_songs do |t|
      t.references :genre, foreign_key: true
      t.references :song, foreign_key: true

      t.timestamps
    end
  end
end
