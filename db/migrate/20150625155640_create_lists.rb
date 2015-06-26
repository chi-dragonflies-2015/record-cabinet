class CreateLists < ActiveRecord::Migration
  def change
      create_table :lists do |t|
      t.string :name
      t.string :description
      t.references :user
    end
  end
end
