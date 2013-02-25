class Relationship < ActiveRecord::Base
  attr_accessible :picture_id, :user_id
  belongs_to :user
  belongs_to :picture
end
