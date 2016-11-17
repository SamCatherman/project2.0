class HarvestsController < ApplicationController
  before_action :post_harvest, except: [:index, :new, :create]

  def post_harvest
    @harvest = Harvest.find(params[:id])
  end

  def index
    @harvests = Harvest.all
  end

  def new
    @harvest = Harvest.new
  #   @farms = Farm.all.map {|farm| [farm.name, farm.id]}
  #   @products = Product.all.map{|product| [product.product_name, product.id]}
  end

  def create
    Harvest.create!(harvest_params)
    redirect_to asset_path(@farm)
  end

  def edit
    @harvest = Harvest.find(params[:id])
  end

  def update
    @harvest = Harvest.find(params[:id])
    @harvest.update(harvest_params)
    redirect_to harvest_path(@harvest)
  end

  def destroy
    @harvest = Harvest.find(params[:id])
    @harvest.destroy
    redirect_to harvests_path
  end

  private
  def harvest_params
    params.require(:harvest).permit(:farm_id, :product_id, :date)
  end
end
