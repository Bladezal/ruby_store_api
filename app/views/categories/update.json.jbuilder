json.partial! 'category' category:@category
json.(@category, :created_at, :updated_at)
json.comment 'Operation Successfull!!!'