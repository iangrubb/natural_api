class ProofSerializer
  include FastJsonapi::ObjectSerializer
  attributes :conclusion, :ptype, :premise_data
end
