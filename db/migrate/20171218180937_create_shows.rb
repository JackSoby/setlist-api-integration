class CreateShows < ActiveRecord::Migration[5.1]
  def change
    create_table :shows do |t|
      t.string :venue, null: false
      t.string :date, null: false
      t.belongs_to :tour


      t.timestamps
    end
  end
end
