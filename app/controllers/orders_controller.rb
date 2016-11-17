class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def edit
    @order = Order.find(params[:id])
    @product = @order.product.name
    @farms = Farm.all.map do |farm|
      [farm.name, farm.id]
    end
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to orders_path(@order)
    else
      render 'new'
    end
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    redirect_to @order
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to orders_path
  end

  private
  def order_params
    params.require(:order).permit(:product_id, :farm_id, :price)
  end
end
