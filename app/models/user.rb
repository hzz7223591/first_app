class User < ActiveRecord::Base
  attr_accessible :name, :password,:password_confirmation ,:remember_token
  validates :password, presence:true
  validates :password_confirmation, presence:true
  validates :name, presence:true
  has_secure_password
  before_save :create_remember_token
  has_many :pictures, dependent: :destroy

  has_many :inspecter_users,through: :relationships, source: :inspecter_id
  has_many :reverse_relationships, foreign_key: "inspecter_id" ,class_name: "Relationship",dependent: :destroy

  def inspecting?(other_picture)
    relationships.find_by_inspecter_id(other_picture.id)
  end
  def inspect!(other_picture)
    relationships.create!(picture_inspecter_id: other_picture.id)
  end

  private
  def create_remember_token
    self.remember_token=SecureRandom.urlsafe_base64
  end
end
