class User < ApplicationRecord

    has_secure_password
    validates :username, uniqueness: true



    has_many :proofs, as: :owner
    has_many :successes

    def proof_data

        self.proofs.map do |proof|
            {id: proof.id,
            type: proof.ptype,
            premises: proof.premises.map{|p| p.content},
            conclusion: proof.conclusion
            }
        end

    end

    def success_ids

        self.successes.map{|s| s.proof.id}


    end

end
