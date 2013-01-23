class HopSerializer < ActiveModel::Serializer
  attributes :id, :category, :max_alpha_acid, :min_alpha_acid, :name
end
