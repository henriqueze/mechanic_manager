json.extract! receipt, :id, :receipt_date, :total_value, :discount_value, :paid_value, :remaining_value, :payment_type, :parcel_value, :parcel_qtd, :maintenances_id, :created_at, :updated_at
json.url receipt_url(receipt, format: :json)
