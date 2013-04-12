class AddFieldsToWorkers < ActiveRecord::Migration
  def self.up
    add_column :workers, :sash_id, :integer
    add_column :workers, :level, :integer, :default => 0
  end

  def self.down
    remove_column :workers, :sash_id
    remove_column :workers, :level
  end
end
