class Product< ActiveRecord::Base
  attr_accessible :title, :number, :price, :version, :user_id
  belongs_to :user
end