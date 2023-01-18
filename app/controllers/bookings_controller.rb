class BookingsController < ApplicationController
  def index
    bookings = Booking.all
    render json: bookings
  end

  def create
    from = Station.find_by(station_name: booking_params[:from]).fare
    to = Station.find_by(station_name: booking_params[:to]).fare

    #find absolute difference
    diff = (from - to).abs

    #find time now + diff*10 minutes
    time = Time.now + diff * 10 * 60



    new_booking = {
      bus_id: booking_params[:bus_id],
      user_id: 1,
      from_id: Station.find_by(station_name: booking_params[:from]).id,
      to_id: Station.find_by(station_name: booking_params[:to]).id,
      fare: diff * 10,
      isActive: false,
    }

    booking = Booking.create(new_booking)
    return render json: {
      id: booking.id,
      bus_name: booking.bus.bus_name,
      fare: booking.fare,
      time: time
    }
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
    params.permit(:from,:to,:bus_id)
  end
end
