class Post < ActiveRecord::Base
  belongs_to :category

  attr_accessible :belongs_to, :description, :price, :title
end
