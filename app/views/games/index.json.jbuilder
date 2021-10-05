json .array! @games do |game|
    json.partial 'game', game:game
    json.(@game, :created_at, :updated_at)
end