json.user do
  json.partial! "users/user", user: @user
end
json.apps do
  json.array! @apps, partial: 'apps/app', as: :app
end