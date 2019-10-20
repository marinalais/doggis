json.extract! pet_service, :id, :duration, :price, :name, :description, :pataz_value_free, :pataz_amount, :user_id, :created_at, :updated_at
json.url pet_service_url(pet_service, format: :json)
