class UsersController < ApplicationController

    def create
    
        user = User.new(username: params[:username], password: params[:password])

        if user.save
            render json: UserSerializer.new(user)
        else
            render json: {errors: user.errors.full_messages}
        end


    end

end
