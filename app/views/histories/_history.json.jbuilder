json.extract! history, :id, :title, :description, :user_id, :created_at, :updated_at
json.url history_url(history, format: :json)
