json.(@item, :title, :description, :created_at)
json.price     @item.display_price
json.available @item.quantity_available
json.as_of     Time.now

if @item.user
  json.user do
    json.(@item.user, :email, :last_sign_in_ip)
    # json.email @item.user.email
    # json.last_sign_in_ip @item.user.last_sign_in_ip
  end
end
