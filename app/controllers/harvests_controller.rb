class HarvestsController < ApplicationController
  def index
    @harvests = Harvest.all
  end
end
