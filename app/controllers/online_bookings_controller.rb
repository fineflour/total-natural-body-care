class OnlineBookingsController < ApplicationController
	def index
	end

	def show
	end

	def new
		@online_booking = OnlineBooking.new
	end

	def create
		@@online_booking= Product.new(product_params)
		if @online_booking.save
			redirect_to @online_booking, notice: "Your request processed successfully"
		else
			flash[:error] = "Fail to process. Try again"
			render :new
		end
	end

	def destroy
	end
end
