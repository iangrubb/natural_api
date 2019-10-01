class CategorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :logic, :name, :rules, :proof_data
end
