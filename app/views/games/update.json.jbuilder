json.partial! 'game' game:@game
json.(@game, :created_at, :updated_at)
json.comment 'Operation Successfull!!!'