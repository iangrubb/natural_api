class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :proof_data, :success_ids
end
