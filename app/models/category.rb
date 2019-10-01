class Category < ApplicationRecord

    has_many :proofs, as: :owner

    def proof_data 

        self.proofs.map do |proof|
            {id: proof.id,
            type: proof.ptype,
            premises: proof.premises.map{|p| p.content},
            conclusion: proof.conclusion
            }
            
        end

    end

end
