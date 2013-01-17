class AddGroupunpassToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :groupunpass, :integer
  end
end
