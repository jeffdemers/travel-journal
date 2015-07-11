class AddLatitudeToJournals < ActiveRecord::Migration
  def change
    add_column :journals, :latitude, :float
  end
end
