class SessionsController < ApplicationController

    def create

        user = User.find_by(username: params[:username])

        if user && user.authenticate(params[:password])
            render json: UserSerializer.new(user)
        else
            render json: {errors: "Please enter the correct username and password."}
        end

    end

end
