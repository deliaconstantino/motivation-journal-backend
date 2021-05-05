class CreateQuotes < ActiveRecord::Migration[6.1]
  def change
    create_table :quotes do |t|
      t.text :body
      t.string :author

      t.timestamps
    end
  end
end
