class SuccessesController < ApplicationController

    def create

        user = User.find_by(username: params[:username])

        success = Success.create(proof_id: params[:proofId], user_id: user.id)

        puts user
        puts success

        render json: {reply: "Got it"}
        
    
    end

end
