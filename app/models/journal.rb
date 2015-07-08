class Journal < ActiveRecord::Base
  has_many :entries
  belongs_to :user

  mount_uploader :image, ImageUploader

  # has_attached_file :image, :styles => { :medium => "300x300>"}
  # validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  # attr_accessible :content, :title, :rank, :user

  validates :content, :presence => true, :length => { :minimum => 20 }
  validates :title, :presence => true
end

