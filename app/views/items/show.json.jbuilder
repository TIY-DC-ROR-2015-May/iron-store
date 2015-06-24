json.(@item, :title, :description, :created_at)
json.price     @item.display_price
json.available @item.quantity_available
json.as_of     Time.now
