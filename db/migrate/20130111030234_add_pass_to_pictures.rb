class AddPassToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :pass, :integer ,default:0
  end
end
