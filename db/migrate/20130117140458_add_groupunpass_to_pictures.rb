class AddGroupunpassToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :groupunpass, :integer, default:0
  end
end
