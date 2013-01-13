class AddPassToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :pass, :integer
  end
end
