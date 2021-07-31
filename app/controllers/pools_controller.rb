class PoolsController < ApplicationController
  before_action :find_pool, only: [:show]

  def index
    @pools = Pool.all
    @markers = @pools.geocoded.map do |pool|
      {
        lat: pool.latitude,
        lng: pool.longitude,
        info_window: render_to_string(partial: "info_window", locals: { pool: pool }),
        image_url: helpers.asset_url('49-494682_water-drops-png-water-drop-ocean-transparent-png.png')
      }

    end
  end

  def show
    @bookings = Booking.where(pool_id: params[:id])
    @booking = Booking.new
    @markers =
      [{
        lng: @pool.longitude,
        lat: @pool.latitude,
       image_url: helpers.asset_url('49-494682_water-drops-png-water-drop-ocean-transparent-png.png')
      }]
  end

  def new
    @pool = Pool.new

  end

  def create
    @pool = Pool.new(pool_params)
    @pool.user = current_user
    @pool.address = "#{@pool.street}, #{@pool.zip_code}, #{@pool.city}"
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
    params.require(:pool).permit(:address, :title, :description, :street, :city, :zip_code, :category, :qm, :price_per_day, :max_capacity, photos: [])
  end
end
