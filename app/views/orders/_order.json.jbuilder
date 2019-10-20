json.extract! order, :id, :orderdate, :totalvalue, :orderitem_id, :user_id, :customer_id, :created_at, :updated_at
json.url order_url(order, format: :json)
