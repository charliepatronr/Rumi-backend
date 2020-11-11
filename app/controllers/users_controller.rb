class UsersController < ApplicationController


    def index 
        users = User.all
        # render json: UserSerializer.new(users).to_serialized_json
        render json: users, include: '*.*'
    end

    def show 
        user = User.find(params[:id])
        render json: user, include: '*.*'
        # render json: UserSerializer.new(user).to_serialized_json
    end

    def create 
        name = params[:user][:name]
        email = params[:user][:email]
        img = params[:user][:img]
        ##why is password outside of user params and why do I need to use password_digest instead of password?
        password = params[:password]
        username = params[:user][:username]
        house_id = params[:user][:house_id]
        created_user = User.new(name: name, email:email, img: img, username: username, password: password, house_id: house_id, admin: false, historical_points: '0', points: 0 )
        if created_user.save
            render json: created_user, include: '*.*'
        else 
            byebug
            render json: { message: 'ENTER VALID HOUSE KEY' }
        end 
    end 

    def update
        name = params['user']['name']
        email = params['user']['email']
        password = params['user']['password']
        username = params['user']['username']
        user = User.find(params[:user_id])
        if user.update(name: name, email:email, username: username, password_digest: password)
            # render json: UserSerializer.new(user).to_serialized_json
        else 
            render json: { message: 'User information could not be updated' }
        end 
    end


end
