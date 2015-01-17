class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :quantity
      t.references :book_id, index: true
      t.references :order_id, index: true

      t.timestamps null: false
    end
    add_foreign_key :order_items, :book_ids
    add_foreign_key :order_items, :order_ids
  end
end
