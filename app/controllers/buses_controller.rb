class BusesController < ApplicationController
  def index
    if params["from"] && params["to"]
      buses = Bus.where(from: params["from"], to: params["to"])
      render json: buses
    else
      buses = Bus.all
      render json: buses
    end
  end

  def available
    buses =
      Bus.where(
        from: params_for_available[:from],
        to: params_for_available[:to]
      )

    #select buses where seats are greater than passengers
    buses = buses.select { |bus| bus.seater > bus.passengers }

    fare_from = Station.find_by(station_name: params_for_available[:from]).fare
    fare_to = Station.find_by(station_name: params_for_available[:to]).fare

    #find absolute difference
    diff = (fare_from - fare_to).abs

    #find time now + diff*10 minutes
    time = Time.now + diff * 10 * 60

    render json: { buses: buses, time: time , fare: diff*10 }
  end

  def show
    bus = find_bus
    if bus
      render json: bus
    else
      render json: { error: "Bus not found" }, status: :not_found
    end
  end

  def update
    bus = find_bus
    if bus
      bus.update(bus_params)
      render json: bus
    else
      render json: { error: "Bus not found" }, status: :not_found
    end
  end

  def destroy
    bus = find_bus
    if bus.destroy
      head :no_content
    else
      render json: { error: bus.errors.messages }, status: 422
    end
  end

  def create
    bus = Bus.create(bus_params)
    render json: bus
  end

  private

  def find_bus
    Bus.find_by(id: params[:id])
  end

  def bus_params
    params.permit(:bus)
  end

  def fare
    #fare = station to - station fro
  end

  def params_for_available
    params.require(:from)
    params.require(:to)
    params.permit(:bus).permit(:from, :to)
    params
  end
end
