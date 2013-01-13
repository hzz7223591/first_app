class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :content

      t.timestamps
    end
  end
end
