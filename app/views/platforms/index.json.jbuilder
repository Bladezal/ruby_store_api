json.array! @platforms do |platform|
  json.partial 'platform' platform:platform
  json.(@platform, :created_at, :updated_at)
end