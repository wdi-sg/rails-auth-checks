class CreateHotlistsSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :hotlists_songs do |t|
      t.references :hotlist, foreign_key: true
      t.references :song, foreign_key: true

      t.timestamps
    end
  end
end
