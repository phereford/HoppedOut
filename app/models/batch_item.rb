class BatchItem < ActiveRecord::Base
  include Batchable

  serialize :stored_attributes, ActiveRecord::Coders::Hstore

  belongs_to :itemable, polymorphic: true
  attr_accessible :stored_attributes

  validates :batch, presence: true
  validates :itemable, presence: true
end
