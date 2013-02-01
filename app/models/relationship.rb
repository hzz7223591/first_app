class Relationship < ActiveRecord::Base
  attr_accessible :inspecter_id, :picture_inspecter_id
  belongs_to :picture_inspecter_id ,class_name: "Picture"
  belongs_to :inspecter_id,class_name: "User"
  validates :picture_inspecter_id, presence: true
  validates :inspecter_id, presence: true
  def inspecting?(other_picture)
    relationships.find_by_inspecter_id(other_picture.id)
  end
  def inspect!(other_picture)
    relationships.create!(picture_inspecter_id: other_picture.id)
  end
end
