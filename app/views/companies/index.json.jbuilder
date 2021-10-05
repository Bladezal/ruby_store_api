json.array! @companies do |company|
  json.partial 'companies' company:company
  json.(@company, :created_at, :updated_at)
end