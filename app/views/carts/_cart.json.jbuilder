json.extract! cart, :id, :totalvalue, :order_id, :appointment_id, :created_at, :updated_at
json.url cart_url(cart, format: :json)
