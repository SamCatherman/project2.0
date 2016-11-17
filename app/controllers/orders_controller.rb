class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @farms = Farm.all
    @products = Product.all
    @order = Order.new
  end

  def edit
    @farms = Farm.all
    @products = Product.all
    @order = Order.find(params[:id])
  end

  def create
    @farms = Farm.all
    @products = Product.all
    @order = Order.new(order_params)
    redirect_to @order
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
