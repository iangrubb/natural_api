class Proof < ApplicationRecord

    belongs_to :owner, polymorphic: true
    has_many :premises

    def premise_data

        self.premises.map{|p| p.content}

    end

end
