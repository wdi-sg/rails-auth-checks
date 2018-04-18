class CreateHotlists < ActiveRecord::Migration[5.2]
  def change
    create_table :hotlists do |t|
      t.string :week

      t.timestamps
    end
  end
end
