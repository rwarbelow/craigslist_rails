class Post < ActiveRecord::Base
  validates_presence_of :title, :description

  belongs_to :category
  belongs_to :user 
end
