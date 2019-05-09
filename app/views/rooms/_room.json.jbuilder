json.extract! room, :id, :name, :game_started, :visibility, :owner, :czar, :players, :created_at, :updated_at
json.url room_url(room, format: :json)
