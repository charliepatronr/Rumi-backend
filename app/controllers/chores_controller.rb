class ChoresController < ApplicationController

    def index 
        chores = Chore.all
        render json: ChoreSerializer.new(chores).to_serialized_json
    end

    def show 
        chore = Chore.find(params[:id])
        render json: ChoreSerializer.new(chore).to_serialized_json
    end

    def create 
        title = params[:chore][:title]
        description = params[:chore][:description]
        points = params[:chore][:points]
        house_id = params[:chore][:house_id]
        created_chore = Chore.find_or_create_by(title: title, description:description, points: points, house_id: house_id )
        if created_chore 
            render json: ChoreSerializer.new(created_chore).to_serialized_json
        else 
            render json: {message: 'House could not be added'}
        end 
    end 

    def update 
        title = params[:chore][:title]
        description = params[:chore][:description]
        points = params[:chore][:points]
        chore = Chore.find(params[:chore_id])
        if chore.update(title: title, description:description, points: points)
            render json: ChoreSerializer.new(created_house).to_serialized_json
        else 
            render json: {message: 'Chore could not be updated'}
        end 
    end 

end
