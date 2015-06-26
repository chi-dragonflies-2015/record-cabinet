class CreateListsRecords < ActiveRecord::Migration
  def change
    create_table :lists_records do |t|
      t.references :record
      t.references :list
    end
  end
end
