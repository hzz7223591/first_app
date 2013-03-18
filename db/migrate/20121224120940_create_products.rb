class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.integer :number
      t.integer :price
      t.string :version

      t.timestamps
    end
  end
end
