class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.belongs_to :artist, index: true, foreign_key: true
      t.belongs_to :genre, index: true, foreign_key: true
      t.string :name

      t.timestamps null: false
    end
  end
end
