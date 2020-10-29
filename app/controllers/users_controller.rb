class UsersController < ApplicationController


    def index 
        users = User.all
        render json: UserSerializer.new(users).to_serialized_json
    end

    def show 
        user = User.find(params[:id])
        render json: UserSerializer.new(user).to_serialized_json
    end

    def create 
        name = params['user']['name']
        email = params['user']['email']
        password = params['user']['password']
        username = params['user']['username']
        age = params['user']['age']
        house = params['user']['house']
        created_user = User.find_or_create_by(name: name, email:email, username: username, password: password, age: age, house_id: house )
        if created_user 
            render json: UserSerializer.new(created_user).to_serialized_json
        else 
            render json: {message: 'User could not be added'}
        end 
    end 

    def update
        name = params['user']['name']
        email = params['user']['email']
        password = params['user']['password']
        username = params['user']['username']
        age = params['user']['age']
        user = User.find(params[:user_id])
        if user.update(name: name, email:email, username: username, password: password, age: age)
            render json: UserSerializer.new(user).to_serialized_json
        else 
            render json: { message: 'User information could not be updated' }
        end 
    end


end
