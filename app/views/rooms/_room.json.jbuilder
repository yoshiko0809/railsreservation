json.extract! room, :id, :room_name, :summary, :address, :price, :user_id, :created_at, :updated_at
json.url room_url(room, format: :json)
