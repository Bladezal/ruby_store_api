json.array! @categories do |category|
  json.partial 'category' category: category
  json.(@category, :created_at, :updated_at)
end