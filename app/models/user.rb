class User < ActiveRecord::Base
  attr_accessible :name, :password,:password_confirmation
  validates :password, presence:true
  validates :password_confirmation, presence:true
  validates :name, presence:true
  has_secure_password

end