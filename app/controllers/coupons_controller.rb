class CouponsController < ApplicationController

def index
    @coupons = Coupon.all

    # render :index
  end

  def show
    @coupon = Coupon.find(params[:id])

  end

  def new
    # @post = Post.new
  end

  
  def create
    @coupon = Coupon.new
    @coupon.coupon_code = params[:coupon_code]
    @coupon.store = params[:store]
    @coupon.save
    redirect_to coupon_path(@coupon)
  end
	
end
