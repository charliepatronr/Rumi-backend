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

    def complete 
        byebug
        sprint_chore = SprintChore.find(params[:id])
        sprint_chore.update(completion_status: true)
        user = sprint_chore.user
        points = sprint_chore.chore.points.to_i
        user_points = user.historical_points.to_i
        user.update(historical_points: (user_points + points))
        byebug
        render json: sprint_chore, include: '*.*'

    end





end
