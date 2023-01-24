class AddTitleToEntries < ActiveRecord::Migration[6.1]
  def change
    add_column :entries, :title, :string, default: "Untitled"
  end
end
