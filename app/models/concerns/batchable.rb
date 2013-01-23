module Batchable
  extend ActiveSupport::Concern

  included do
    belongs_to :batch
  end
end
