class ProofsController < ApplicationController

    def create

        user = User.find_by(username: params[:username])
    
        proof = Proof.create(ptype: params[:type], owner_id: user.id, owner_type: "User" , conclusion: params[:conclusion])

        params[:premises].each do |p|

            Premise.create(proof_id: proof.id, content: p)

        end

        render json: ProofSerializer.new(proof)

    end

end
