class User < ActiveRecord::Base
  has_merit

  attr_accessible :name, :password,:password_confirmation ,:remember_token
  validates :password, presence:true , unless: :guest?
  validates :password_confirmation, presence:true , unless: :guest?
  validates :name, presence:true ,unless: :guest?


  before_save :create_remember_token
  has_many :pictures, dependent: :destroy
  has_many :pictures,:through => :relationships
  has_many :relationships

  def inspecting?(other_picture)
    relationships.find_by_inspecter_id(other_picture.id)
  end
  def inspect!(other_picture)
    relationships.create!(picture_id: other_picture.id)
  end

  # override has_secure_password to customize validation until Rails 4.
  require 'bcrypt'
  attr_reader :password

  include ActiveModel::SecurePassword::InstanceMethodsOnActivation




  def self.new_guest
    new { |u| u.guest = true }

  end

  def show_badges
    badges_uniq = Badge.find_by_id(badge_ids)
    badges_uniq.collect{|b| "#{b.name.capitalize}#{badge_status(b)}" }.join(', ')
  end

  def badge_status(badge)
    status = []
    count = badges.select{|b| b.name == badge.name }.count
    status << "level: #{badge.level}" if badge.level
    status << "x#{count}" if count > 1
    status.present? ? " (#{status.join(', ')})" : ''
  end



  private
  def create_remember_token
    self.remember_token=SecureRandom.urlsafe_base64
  end
end
