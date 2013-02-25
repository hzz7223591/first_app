class CreatePicturesUsers < ActiveRecord::Migration
  def change
    create_table :pictures_users do |t|
      t.integer :picture_id
      t.integer :user_id

      t.timestamps
    end
  end
end
