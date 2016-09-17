json.extract! app, :id, :title, :created_at, :updated_at
json.url user_app_url(@user, app, format: :json)