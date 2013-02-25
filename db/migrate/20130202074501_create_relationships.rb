class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :picture_id
      t.integer :user_id

      t.timestamps
    end
  end
end
