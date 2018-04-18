class AddYearToSongs < ActiveRecord::Migration[5.2]
  def change
    add_column :songs, :year, :integer
  end
end
