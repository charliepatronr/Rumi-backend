class SprintChoresController < ApplicationController

    def index 
        sprint_chores = SprintChore.all
        render json: sprint_chores, include: '*.*'

        # render json: SprintChoreSerializer.new(sprint_chores).to_serialized_json
    end

    def show 
        sprint_chore = SprintChore.find(params[:id])
        render json: sprint_chore, include: '*.*'

        # render json: SprintChoreSerializer.new(sprint_chore).to_serialized_json
    end




end
