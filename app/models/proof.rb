class Proof < ApplicationRecord

    belongs_to :owner, polymorphic: true
    has_many :premises

end
