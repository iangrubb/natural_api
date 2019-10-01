class User < ApplicationRecord

    has_secure_password

    has_many :proofs, as: :owner

    has_many :successes

end
