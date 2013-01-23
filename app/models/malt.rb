class Malt < ActiveRecord::Base
  attr_accessible :srm, :origin, :potential_sg, :type, :name

  validates :name, presence: { on: :create }
  validates :srm, presence: { on: :create }
  validates :origin, presence: { on: :create }
  validates :potential_sg, presence: { on: :create }
  validates :type, presence: { on: :create }
end
