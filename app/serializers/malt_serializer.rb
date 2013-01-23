class MaltSerializer < ActiveModel::Serializer
  attributes :id, :name, :origin, :potential_sg, :srm, :type
end
