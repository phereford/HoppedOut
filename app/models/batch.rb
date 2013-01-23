class Batch < ActiveRecord::Base
  include Useable

  has_many :batch_items

  serialize :size, ActiveRecord::Coders::Hstore
  serialize :color, ActiveRecord::Coders::Hstore
  serialize :bitterness, ActiveRecord::Coders::Hstore
  serialize :alochol, ActiveRecord::Coders::Hstore
  serialize :calories, ActiveRecord::Coders::Hstore
  serialize :gravity, ActiveRecord::Coders::Hstore
  serialize :efficiency, ActiveRecord::Coders::Hstore

  validates :title, presence: { on: :create }, length: { maximum: 140 }
  validates :description, presence: { on: :create }
  validates :size, presence: { on: :create }
  validates :color, presence: { on: :create }
  validates :bitterness, presence: { on: :create }
  validates :alcohol, presence: { on: :create }
  validates :calories, presence: { on: :create }
  validates :gravity, presence: { on: :create }
  validates :efficiency, presence: { on: :create }
end
