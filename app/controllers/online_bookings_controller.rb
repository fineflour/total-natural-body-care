class OnlineBookingsController < ApplicationController
	respond_to :html, :js
	def index
		@list = online_bookings_for_index    
	end

	def show
		@online_booking = OnlineBooking.find(params[:id])
	end

	def new
		@online_booking = OnlineBooking.new
	end

	def create
		params[:doctor] = "Soo Jin Cho"
		@online_booking= OnlineBooking.new(online_booking_params)
		if @online_booking.save
			redirect_to @online_booking, appointmentnotice: "Your request processed successfully"
		else
			flash[:error] = "Fail to process. Try again"
			render :new
		end
	end

	def update
		@online_booking= OnlineBooking.find(params[:id])
		if @online_booking.update(online_booking_params)
			@online_booking = OnlineBooking.find(params[:id])   
			respond_to do |format|
				format.js { render layout: false, content_type: 'text/javascript' }
			end
		else
			render json: @online_booking.errors, status: :unprocessable_entity
		end
	end


	def destroy
	end


	private
	def online_booking_params
		params.require(:online_booking).permit(:fname, :lname, :email, :phone, :doctor,
																					 :appnt_date,  :appnt_time, :appnt_date, :appnt_time, :note)
	end

	def online_bookings_for_index
		OnlineBooking.order("id").paginate(page: params[:page])
	end
end
