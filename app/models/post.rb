class Post < ActiveRecord::Base
  attr_accessible :title, :description, :price, :category_id
  validates_presence_of :title, :description

  belongs_to :category
  belongs_to :user 
end
