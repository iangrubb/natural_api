class SessionsController < ApplicationController

    def create

        user = User.find_by(username: params[:username])

        if user && user.authenticate(params[:password])
            render json: UserSerializer.new(user)
        else
            render json: {errors: "Please enter the correct username and password."}
        end

    end

    def autologin 

        token = request.headers['Authorization']


        username = JWT.decode(token, "super secret key", false)[0]["username"]

        

        user = User.find_by(username: username)
        
        if user 
            render json: UserSerializer.new(user)
        else
            render json: {errors: "Didn't find that user."}
        end

        
    end

end
