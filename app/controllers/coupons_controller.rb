class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
    # links with index.html.erb
  end

  def new
    # links with new.html.erb
  end

  def show
    @coupon = Coupon.find_by_id(params[:id])
    # links with show.html.erb
  end

  def create
    @coupon = Coupon.new
    @coupon.coupon_code = params[:coupon_code]
    @coupon.store = params[:store]
    @coupon.save

    redirect_to coupon_path(@coupon)
    # links with show.html.erb AND not create.html
  end

end