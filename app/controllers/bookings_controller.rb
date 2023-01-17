class BookingsController < ApplicationController
  def index
    bookings = Booking.all
    render json: bookings
  end

  def create
    booking = Booking.create(booking_params)
    render json: booking
  end

  def update
    booking = find_booking
    if booking
      booking.update(booking_params)
      render json: booking
    else
      render json: { error: "Booking not found" }, status: :not_found
    end
  end

  def destroy
    booking = find_booking
    if booking.destroy
      head :no_content
    else
      render json: { error: booking.errors.messages }, status: 422
    end
  end

  def pay
    booking = find_booking
    phonenumber = booking.user.phonenumber
    fare = booking.fare
    #call stk push

    #if stk push success
      #update booking to active
      #set booking.bus.passengers += 1
      #render json: booking
  end

  private

  def find_booking
    Booking.find_by(id: params[:id])
  end

  def booking_params
    params.require(:booking).permit(:user_id, :bus_id, :from_id, :to_id, :fare)
  end
end
