class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :name
      t.string :artist
      t.string :spotify_id
      t.string :image_url
      t.date :release_date
    end
  end
end
