class Journal < ActiveRecord::Base
  has_many :entries
  belongs_to :user

  attr_accessible :content, :title, :rank, :user

  validates :content, :presence => true, :length => { :minimum => 20 }
  validates :title, :presence => true
end
