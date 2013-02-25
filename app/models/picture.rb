

class Picture < ActiveRecord::Base
  attr_accessible :content
  belongs_to :user
  has_many :relationships
  has_many :users,:through => :relationships







end
