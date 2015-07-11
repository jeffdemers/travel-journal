class AddLongitudeToJournals < ActiveRecord::Migration
  def change
    add_column :journals, :longitude, :float
  end
end
