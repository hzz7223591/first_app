class AddUnpassToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :unpass, :integer , default:0
  end
end
