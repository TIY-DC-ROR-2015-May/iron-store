class ItemsController < ApplicationController
  def index
    @items = Item.all
    # render :index
  end

  def show
    @item = Item.find params[:id]
  end

  def new
  end

  def create
    i = Item.create!(
      title: params[:title],
      description: params[:description],
      price_in_cents: params[:price].to_f * 100,
      quantity_available: params[:quantity_available]
    )
    # redirect_to i
    redirect_to item_path(i), notice: "Item created"
  end
end