json.user do
  json.partial! "users/user", user: @user
end
json.app do
  json.partial! "apps/app", app: @app
end
json.versions do
  json.array! @versions, partial: 'versions/version', as: :version
end