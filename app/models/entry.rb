class Entry < ActiveRecord::Base
  belongs_to :journal
  # attr_accessible :author, :body, :title, :image, :location
  mount_uploader :image, ImageUploader
end
