json.extract! tx, :id, :author_id, :name, :amount, :user_id, :commodity_id, :created_at, :updated_at
json.url tx_url(tx, format: :json)
