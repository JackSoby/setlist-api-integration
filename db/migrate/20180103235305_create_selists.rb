class CreateSelists < ActiveRecord::Migration[5.1]
  def change
    create_table :setlists do |t|
      t.string :name
      t.belongs_to :show


    end
  end
end
