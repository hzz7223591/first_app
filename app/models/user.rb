class User < ActiveRecord::Base
  attr_accessible :name, :password,:password_confirmation
  validates :password, presence:true
  validates :password_confirmation, presence:true
  validates :name, presence:true
  has_secure_password
  before_save :create_remember_token




  private
  def create_remember_token
    self.remember_token=SecureRandom.urlsafe_base64
  end
end
