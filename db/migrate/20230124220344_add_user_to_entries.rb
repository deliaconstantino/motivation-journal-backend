class AddUserToEntries < ActiveRecord::Migration[6.1]
  def change
    add_reference :entries, :user, null: false, foreign_key: true
  end
end
