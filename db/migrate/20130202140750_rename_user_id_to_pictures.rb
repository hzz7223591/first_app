class RenameUserIdToPictures < ActiveRecord::Migration
  def up
    rename_column :pictures,:poster_id, :user_id
  end

  def down
  end
end
