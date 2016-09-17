json.extract! version, :id, :name, :code, :download, :description, :force, :status, :created_at, :updated_at
json.url user_app_version_url(@user, @app, version, format: :json)