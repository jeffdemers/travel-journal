class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :author
      t.text :body
      t.string :title
      t.string :image
      t.string :location
      t.references :journal, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
