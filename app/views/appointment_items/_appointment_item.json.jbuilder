json.extract! appointment_item_url, :id, :petservice_id, :appointment_id, :created_at, :updated_at
json.url appointment_item_url(appointment_item, format: :json)
