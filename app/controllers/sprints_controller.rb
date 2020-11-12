require 'date'


class SprintsController < ApplicationController

    def index 
        sprints = Sprint.all
        # render json: SprintSerializer.new(sprints).to_serialized_json
        render json: sprints, include: '*.*'

    end

    def show 
        sprint = Sprint.find(params[:id])
        # render json: SprintSerializer.new(sprint).to_serialized_json
        render json: sprint, include: '*.*'

    end

    def create 
        house = params[:sprint][:house_id]
        begin_date = params[:sprint][:begin_date]
        created_sprint = Sprint.create(house_id: house, begin_date: begin_date )

        if created_sprint
            user_array = created_sprint.house.users
            chore_array = created_sprint.house.chores
            created_sprint.create_random_sprint_chores(user_array, chore_array)
            sprint_chores = created_sprint.sprint_chores
            render json: sprint_chores, include: '*.*'

            # render json: SprintSerializer.new(created_sprint).to_serialized_json
        else 
            render json: {message: 'Sprint could not be created'}
        end 
    end 

    def update
        sprint = Sprint.find(params[:id])
        completion_status = params['sprint']['completion_status']
        end_date = params['sprint']['end_date']

        sprint.end_sprint_points
        rof_week = sprint.roomie_of_the_week
        house = sprint.house
        ## add roomie of the week too sprint.house (update house)
        ## in front end test if their is no previouse sprint 
        ## if house.sprints.size < 1 render no previous sprints 
        if sprint.update( completion_status: completion_status, end_date: end_date)
            house.update(rof_week: rof_week)
            render json: sprint, include: '*.*'
        else 
            render json: { message: 'Sprint information could not be updated' }
        end 
    end


    def confirm 
        sprint_id = params[:sprint_id]
        user_id = params[:user_id]
        house_id = params[:house_id]
        sprint = Sprint.find(sprint_id)
        sprint.confirm_sprint_chores(sprint_id, user_id, house_id)
        
    
        sprint_chores = sprint.sprint_chores
        render json: sprint_chores, include: '*.*'


    end


    def reject 
        sprint_id = params[:sprint_id]
        user_id = params[:user_id]
        house_id = params[:house_id]
        sprint = Sprint.find(sprint_id)
        sprint.reject_sprint_chores(sprint_id, user_id, house_id)
    
        if sprint.approval === false 
            current_time = DateTime.now
            day_month =  current_time.strftime"%d-%m-%y"
            created_sprint = Sprint.create(house_id: house_id, begin_date: day_month)
            user_array = created_sprint.house.users
            chore_array = created_sprint.house.chores
            created_sprint.create_random_sprint_chores(user_array, chore_array)
            sprint_chores = created_sprint.sprint_chores
            render json: sprint_chores, include: '*.*' 
        else 
            sprint_chores = sprint.sprint_chores
            render json: sprint_chores, include: '*.*' 
        end


    end



end
