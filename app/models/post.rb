class Post < ActiveRecord::Base
  validates :title, :presence => true
  has_many :comments
  has_and_belongs_to_many :tags

  
end
