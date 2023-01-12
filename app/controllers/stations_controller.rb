class StationsController < ApplicationController

    def index
        #use serializer to return json
        render json: Station.all
    end

    def show
        render json: Station.find(params[:id])
    end

    def from
        render json: Station.all
    end

    def to
        #use params_for_to
        render json: Station.where("name = ?", params_for_to[:name])
    end

    private

    def params_for_to
        params.require(:to).permit(:name)
    end
end
