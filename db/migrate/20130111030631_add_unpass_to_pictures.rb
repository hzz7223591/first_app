class AddUnpassToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :unpass, :integer
  end
end
