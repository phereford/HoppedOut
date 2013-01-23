class Malt < ActiveRecord::Base
  attr_accessible :name, :origin, :potential_sg, :srm, :type
end
