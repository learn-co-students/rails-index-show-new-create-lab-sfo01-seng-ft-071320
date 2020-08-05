class CouponsController < ApplicationController

    def index
        @coupons = Coupon.all
    end

    def show
        @coupon = Coupon.find(params[:id])
    end

    def new
        
    end

    def create
        coupon = params[:coupon]
        @coupon = Coupon.create(coupon_code: coupon[:coupon_code], store: coupon[:store])
        redirect_to coupon_path(@coupon)

        # @coupon = Coupon.new
        # @coupon.coupon_code = params[:coupon_code]
        # @coupon.store = params[:store]
        # @coupon.save
        # redirect_to coupon_path(@coupon)
    end

end
