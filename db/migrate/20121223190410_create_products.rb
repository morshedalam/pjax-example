class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string  :title
      t.text    :description
      t.float   :price, :null => false, :default => 0
      t.integer :quantity
      t.boolean :published, :null => false, :default => false
      t.timestamps
    end
  end
end
