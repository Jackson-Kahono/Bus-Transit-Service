class BusesController < ApplicationController

    def index
        buses = Bus.all
        render json: buses
      end
       
       
       def update
           bus = find_bus
             if bus
               bus.update(bus_params)
               render json: bus
             else
               render json: {error: "Bus not found"}, status: :not_found
           end
       end
      
      def destroy
        bus =find_bus
        if bus.destroy
          head :no_content
        else
          render json: {error: bus.errors.messages}, status: 422
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
end
