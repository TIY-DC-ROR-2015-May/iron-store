class ItemsController < ApplicationController
  def index
    @items = Item.all
    # render :index
  end

  def show
    @item = Item.find params[:id]
  end

  def new
    @item = Item.new price_in_cents: 200
  end

  def create
    @item = Item.new(
      title: params[:title],
      description: params[:description],
      price_in_cents: params[:price].to_f * 100,
      quantity_available: params[:quantity_available]
    )
    if @item.save
      # redirect_to i
      redirect_to item_path(@item), notice: "Item created"
    else
      # redisplay form with errors
      render :new
    end
  end
end