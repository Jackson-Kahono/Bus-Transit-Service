class StationsController < ApplicationController
    
    def index
        stations = Station.all
        render json: stations
    end

    def create
        station = Station.create(station_params)
        render json: station
    end

    def update
        station = find_station
             if station
               station.update(station_params)
               render json: station
             else
               render json: {error: "Station not found"}, status: :not_found
           end
    end

    private

    def find_station
        Station.find_by(id: params[:id])
    end
       
    def station_params
        params.permit(:station)
    end
end
