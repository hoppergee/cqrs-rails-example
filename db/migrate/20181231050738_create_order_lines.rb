class CreateOrderLines < ActiveRecord::Migration[5.2]
  def change
    create_table :order_lines do |t|
      t.string :order_uid
      t.string :product_id
      t.string :product_name
      t.string :quantity
    end
  end
end
