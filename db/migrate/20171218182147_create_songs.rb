class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :name, null: false
      t.integer :length
      t.belongs_to :setlist


      t.timestamps
    end
  end
end
