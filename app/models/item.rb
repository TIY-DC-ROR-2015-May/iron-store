class Item < ActiveRecord::Base
  validates_presence_of :title, :price_in_cents, :quantity_available
  validates_length_of :title, in: 6..30
  validates_numericality_of :price_in_cents, greater_than: 0

  def display_price
    "$#{price_in_cents / 100.0}"
  end
end
