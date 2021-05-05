class CreateEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :entries do |t|
      t.text :body
      t.float :time_interval

      t.timestamps
    end
  end
end
