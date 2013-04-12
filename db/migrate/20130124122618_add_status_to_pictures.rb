class AddStatusToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :status, :string ,default:"待审"
  end
end
