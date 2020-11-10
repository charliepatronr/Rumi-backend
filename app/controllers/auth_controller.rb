class AuthController < ApplicationController

    def create

        user = User.find_by(username: params[:username])
        
        if user && user.authenticate(params[:password])
            render json: user, include: '*.*'
        else
          render json: { error: 'Invalid username or password.'}
        end
    
    
      end

end