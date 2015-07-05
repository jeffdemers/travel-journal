class CreateJournals < ActiveRecord::Migration
  def change
    create_table :journals do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :content
      t.string :image
      t.integer :rank

      t.timestamps null: false
    end
  end
end
