class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
    	t.boolean :inshop
    	t.string :name
    	t.integer :price
    	t.text :description

    	t.datetime :release

      t.timestamps
    end
  end
end
