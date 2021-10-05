json.partial! 'company' company:@company
json.(@company, :created_at, :updated_at)
json.comment 'Operation Successfull!!!'