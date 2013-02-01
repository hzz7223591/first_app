class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :picture_id
      t.integer :inspecter_id

      t.timestamps
    end
    add_index :relationships, :picture_id
    add_index :relationships, :inspecter_id
    add_index :relationships, [:picture_id, :inspecter_id], unique:true
  end
end
