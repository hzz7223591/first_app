class Picture < ActiveRecord::Base
  attr_accessible :content
  belongs_to :user
  has_many :relationships,foreign_key:"picture_inspecter_id",dependent: :destroy

  has_many :picture_inspecters, through: :reverse_relationships, source: :picture_inspecter_id


  def inspecting?(other_picture)
    relationships.find_by_inspecter_id(other_picture.id)
  end
  def inspect!(other_picture)
    relationships.create!(picture_inspecter_id: other_picture.id)
  end





end
