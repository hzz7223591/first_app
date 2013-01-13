class CreateGoods < ActiveRecord::Migration
  def change
    create_table :goods do |t|
      t.integer :number
      t.string :name
      t.string :version
      t.string :status
      t.string :administrator
      t.string :shelf
      t.integer :price

      t.timestamps
    end
  end
end
