class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :name
      t.string :artist
      t.date :release_date
    end
  end
end
