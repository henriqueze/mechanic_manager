class CreateReceipts < ActiveRecord::Migration[5.2]
  def change
    create_table :receipts do |t|
      t.date :receipt_date
      t.float :total_value, precision: 8, scale: 2
      t.float :discount_value, precision: 8, scale: 2
      t.float :paid_value, precision: 8, scale: 2
      t.float :remaining_value, precision: 8, scale: 2
      t.float :payment_type, limit: 20
      t.float :parcel_value, precision: 8, scale: 2
      t.integer :parcel_qtd
      t.references :maintenances, foreign_key: true

      t.timestamps
    end
  end
end
