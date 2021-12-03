class CreateStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :stocks do |t|
      t.integer :item_id
      t.integer :store_id

      t.timestamps
    end
  end
end
