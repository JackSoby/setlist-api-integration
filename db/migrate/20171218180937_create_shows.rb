class CreateShows < ActiveRecord::Migration[5.1]
  def change
    create_table :shows do |t|
      t.string :venue
      t.string :date
      t.belongs_to :tour


      t.timestamps
    end
  end
end
