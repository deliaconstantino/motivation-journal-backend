class CreateEntryKeywords < ActiveRecord::Migration[6.1]
  def change
    create_table :entry_keywords do |t|
      t.references :entry, null: false, foreign_key: true
      t.references :keyword, null: false, foreign_key: true

      t.timestamps
    end
  end
end
