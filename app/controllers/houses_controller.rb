class HousesController < ApplicationController

    def index 
        houses = House.all
        render json: HouseSerializer.new(houses).to_serialized_json
    end

    def show 
        house = House.find(params[:id])
        render json: HouseSerializer.new(house).to_serialized_json
    end


end
