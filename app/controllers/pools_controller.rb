class PoolsController < ApplicationController
  before_action :find_pool, only: [:show]

  def index
    @pools = Pool.all
  end

  def show; end

  def new
    @pool = Pool.new
  end

  def create
    @pool = Pool.new(pool_params)
    @pool.user = current_user
    if @pool.save
      redirect_to :pools
    else
      render :new
    end
  end

  private

  def find_pool
    @pool = Pool.find(params[:id])
  end

  def pool_params
    params.require(:pool).permit(:title, :description, :street, :city, :zip_code, :category, :qm, :price_per_day, :max_capacity)
  end
end
