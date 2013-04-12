class AddGrouppassToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :grouppass, :integer, default:0

  end
end
