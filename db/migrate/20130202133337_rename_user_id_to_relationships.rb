class RenameUserIdToRelationships < ActiveRecord::Migration
  def up
    rename_column :relationships,:inspecter_id, :user_id
  end

  def down
  end
end
