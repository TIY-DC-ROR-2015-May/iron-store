class ItemsController < ApplicationController
  # before_action :authenticate_user!, only: [:show]
  before_action :authenticate_user!, except: [:index]

  def index
    @items = Item.all
    # render :index
  end

  def show
    @item = Item.find params[:id]
    # Option 1: JSON by hand
    # respond_to do |format|
    #   format.html
    #   format.json do
    #     render json: {
    #       title: @item.title,
    #       price: @item.display_price
    #     }
    #   end
    # end
  end

  def new
    @item = Item.new price_in_cents: 200
  end

  def create
    item_params = params[:item]
    @item = Item.new(
      title: item_params[:title],
      description: item_params[:description],
      price_in_cents: item_params[:price_in_cents],
      quantity_available: item_params[:quantity_available]
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