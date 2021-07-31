class PoolsController < ApplicationController
  before_action :find_pool, only: [:show]

  def index
    @pools = Pool.all
    @markers = @pools.geocoded.map do |pool|
      {
        lat: pool.latitude,
        lng: pool.longitude,
        info_window: render_to_string(partial: "info_window", locals: { pool: pool }),
        image_url: helpers.asset_url('https://image.shutterstock.com/image-vector/sun-icon-600w-411668686.jpg')
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
       image_url: helpers.asset_url('https://image.shutterstock.com/image-vector/sun-icon-600w-411668686.jpg')
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
