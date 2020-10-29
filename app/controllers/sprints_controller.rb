class SprintsController < ApplicationController

    def index 
        sprints = Sprint.all
        render json: SprintSerializer.new(sprints).to_serialized_json
    end

    def show 
        sprint = Sprint.find(params[:id])
        render json: SprintSerializer.new(sprint).to_serialized_json
    end

    def create 
        house = params[:sprint][:house_id]
        begin_date = params[:house][:begin_date]
        created_sprint = Sprint.find_or_create_by(house_id: house, begin_date: begin_date )
        if created_sprint 
            render json: SprintSerializer.new(created_sprint).to_serialized_json
        else 
            render json: {message: 'Sprint could not be added'}
        end 
    end 



end
