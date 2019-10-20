json.extract! stock, :id, :stockoperation, :description, :quantity, :operationdate, :product_id, :created_at, :updated_at
json.url stock_url(stock, format: :json)
