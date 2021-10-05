json.array! @books do |book|
    json.partial! 'book' book:book
    json.(@book, :created_at, :updated_at)
end