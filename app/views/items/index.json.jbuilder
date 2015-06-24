# Or json.array!
json.items @items do |item|
  # json.title item.title
  # json.description item.description
  # json.created_at item.created_at
  json.(item, :title, :description, :created_at)
  json.price item.display_price
end