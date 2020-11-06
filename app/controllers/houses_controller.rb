class HousesController < ApplicationController

    def index 
        houses = House.all
        # render json: HouseSerializer.new(houses).to_serialized_json
        render json: houses, include: '*.*'
    end

    def show 
        house = House.find(params[:id])
        # render json: HouseSerializer.new(house).to_serialized_json
        render json: house, include: '*.*'

    end

    def create 
        name = params[:house][:name]
        address = params[:house][:email]
        rules = params[:house][:rules]
        img = params[:house][:img]
        created_house = House.find_or_create_by(name: name, address:address, rules: rules, img: img )
        if created_house 
            # render json: HouseSerializer.new(created_house).to_serialized_json
            render json: created_house, include: '*.*'
        else 
            render json: {message: 'House could not be added'}
        end 
    end 
    


end
