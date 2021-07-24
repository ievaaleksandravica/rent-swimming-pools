class PoolsController < ApplicationController
  before_action :find_pool, only: [:show]

  def index
    @pools = Pool.all
  end

  def show; end

  private

  def find_pool
    @pool = Pool.find(params[:id]) 
  end
end
