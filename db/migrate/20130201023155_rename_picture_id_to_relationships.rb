class RenamePictureIdToRelationships < ActiveRecord::Migration
  def up
    rename_column :relationships, :picture_id, :picture_inspecter_id
  end

  def down
  end
end
