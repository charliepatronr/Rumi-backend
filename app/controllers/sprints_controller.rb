class SprintsController < ApplicationController

    def index 
        sprints = Sprint.all
        render json: SprintSerializer.new(sprints).to_serialized_json
    end

    def show 
        sprint = Sprint.find(params[:id])
        render json: SprintSerializer.new(sprint).to_serialized_json
    end


end
